-- ANRE electricity market monitoring — extracted data
-- Sources: Monit-feb23, Monit-apr23, Monit-aug23, Monit-dec23, Monit-apr24, Monit-aug24, Monit-apr25, Monit-aug25
-- Units: volumes in GWh unless noted; prices in lei/MWh; shares in percent
-- Romanian decimal commas converted to SQL decimals (934,21 -> 934.21)
-- Generated 2026-08-08. Prefer PDF originals for dispute resolution.

BEGIN;

DROP TABLE IF EXISTS data_quality_notes;
DROP TABLE IF EXISTS notable_figures;
DROP TABLE IF EXISTS retail_concentration;
DROP TABLE IF EXISTS retail_prices;
DROP TABLE IF EXISTS retail_consumption;
DROP TABLE IF EXISTS retail_clients;
DROP TABLE IF EXISTS concentration_indicators;
DROP TABLE IF EXISTS generation_mix;
DROP TABLE IF EXISTS import_export_commercial;
DROP TABLE IF EXISTS balancing_market;
DROP TABLE IF EXISTS wholesale_transactions;
DROP TABLE IF EXISTS physical_balance;
DROP TABLE IF EXISTS reports;

CREATE TABLE reports (
  report_id TEXT PRIMARY KEY,
  year INTEGER NOT NULL,
  month INTEGER NOT NULL,
  report_month DATE NOT NULL,
  compare_month DATE NOT NULL,
  title TEXT NOT NULL,
  source_pdf TEXT NOT NULL,
  page_count INTEGER NOT NULL,
  source_path TEXT NOT NULL
);
CREATE TABLE physical_balance (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  indicator TEXT NOT NULL,
  unit TEXT NOT NULL DEFAULT 'GWh',
  compare_month_value REAL,
  report_month_value REAL,
  PRIMARY KEY (report_id, indicator)
);
CREATE TABLE wholesale_transactions (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  segment TEXT NOT NULL,
  period TEXT NOT NULL CHECK (period IN ('compare','report')),
  volume_gwh REAL,
  avg_price_lei_mwh REAL,
  pct_internal_consumption REAL,
  PRIMARY KEY (report_id, segment, period)
);
CREATE TABLE balancing_market (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  period TEXT NOT NULL CHECK (period IN ('compare','report')),
  volume_gwh REAL,
  pct_internal_consumption REAL,
  increase_volume_gwh REAL,
  deficit_avg_price_lei_mwh REAL,
  decrease_volume_gwh REAL,
  surplus_avg_price_lei_mwh REAL,
  methodology_note TEXT,
  PRIMARY KEY (report_id, period)
);
CREATE TABLE import_export_commercial (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  flow TEXT NOT NULL CHECK (flow IN ('export','import')),
  segment TEXT NOT NULL,
  period TEXT NOT NULL CHECK (period IN ('compare','report')),
  volume_gwh REAL,
  avg_price_lei_mwh REAL,
  pct_internal_consumption REAL,
  PRIMARY KEY (report_id, flow, segment, period)
);
CREATE TABLE generation_mix (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  source TEXT NOT NULL,
  share_pct REAL NOT NULL,
  PRIMARY KEY (report_id, source)
);
CREATE TABLE concentration_indicators (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  market TEXT NOT NULL,
  side TEXT,
  c1_pct REAL,
  c3_pct REAL,
  hhi REAL,
  PRIMARY KEY (report_id, market, side)
);
CREATE TABLE retail_clients (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  customer_type TEXT NOT NULL CHECK (customer_type IN ('household','nonhousehold')),
  tranche TEXT NOT NULL,
  total INTEGER,
  competitive INTEGER,
  su INTEGER,
  ui INTEGER,
  PRIMARY KEY (report_id, customer_type, tranche)
);
CREATE TABLE retail_consumption (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  customer_type TEXT NOT NULL,
  tranche TEXT NOT NULL,
  total_gwh REAL,
  competitive_gwh REAL,
  su_gwh REAL,
  ui_gwh REAL,
  PRIMARY KEY (report_id, customer_type, tranche)
);
CREATE TABLE retail_prices (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  customer_type TEXT NOT NULL,
  tranche TEXT NOT NULL,
  total_lei_mwh REAL,
  competitive_lei_mwh REAL,
  su_lei_mwh REAL,
  ui_lei_mwh REAL,
  PRIMARY KEY (report_id, customer_type, tranche)
);
CREATE TABLE retail_concentration (
  report_id TEXT NOT NULL REFERENCES reports(report_id),
  scope TEXT NOT NULL CHECK (scope IN ('total_pam','competitive')),
  customer_type TEXT NOT NULL,
  tranche TEXT NOT NULL,
  c1_pct REAL,
  c3_pct REAL,
  hhi REAL,
  consumption_gwh REAL,
  active_suppliers INTEGER,
  PRIMARY KEY (report_id, scope, customer_type, tranche)
);
CREATE TABLE notable_figures (
  report_id TEXT PRIMARY KEY REFERENCES reports(report_id),
  nominated_fui TEXT,
  macee_price_lei_mwh REAL,
  pzu_avg_weighted_ro_lei_mwh REAL,
  pzu_opcom_weighted_cet_lei_mwh REAL,
  pzu_opcom_arithmetic_cet_lei_mwh REAL,
  pi_avg_weighted_ro_lei_mwh REAL,
  bilateral_contracts_reported INTEGER,
  pan_active_participants INTEGER,
  pam_active_participants INTEGER
);
CREATE TABLE data_quality_notes (
  id INTEGER PRIMARY KEY,
  report_id TEXT,
  topic TEXT NOT NULL,
  severity TEXT NOT NULL,
  note TEXT NOT NULL
);

-- ===== reports =====
INSERT INTO reports VALUES ('feb23',2023,2,'2023-02-01','2023-01-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA FEBRUARIE 2023','Monit-feb23.pdf',44,'99 Attachments/source-anre/monitorizare-ee/Monit-feb23.pdf');
INSERT INTO reports VALUES ('apr23',2023,4,'2023-04-01','2023-03-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA APRILIE 2023','Monit-apr23.pdf',44,'99 Attachments/source-anre/monitorizare-ee/Monit-apr23.pdf');
INSERT INTO reports VALUES ('aug23',2023,8,'2023-08-01','2023-07-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA AUGUST 2023','Monit-aug23.pdf',44,'99 Attachments/source-anre/monitorizare-ee/Monit-aug23.pdf');
INSERT INTO reports VALUES ('apr24',2024,4,'2024-04-01','2024-03-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA APRILIE 2024','Monit-apr24.pdf',48,'99 Attachments/source-anre/monitorizare-ee/Monit-apr24.pdf');
INSERT INTO reports VALUES ('apr25',2025,4,'2025-04-01','2025-03-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA APRILIE 2025','Monit-apr25.pdf',48,'99 Attachments/source-anre/monitorizare-ee/Monit-apr25.pdf');

-- ===== physical_balance =====
INSERT INTO physical_balance VALUES ('feb23','electricity_produced_pi_gt_5mw','GWh',5497.91,4956.85);
INSERT INTO physical_balance VALUES ('apr23','electricity_produced_pi_gt_5mw','GWh',4825.79,5020.4);
INSERT INTO physical_balance VALUES ('aug23','electricity_produced_pi_gt_5mw','GWh',4502.03,4206.92);
INSERT INTO physical_balance VALUES ('apr24','electricity_produced_pi_gt_5mw','GWh',4773.58,3826.63);
INSERT INTO physical_balance VALUES ('apr25','electricity_produced_pi_gt_5mw','GWh',4307.11,3650.38);
INSERT INTO physical_balance VALUES ('feb23','electricity_delivered_networks_pi_gt_5mw','GWh',5206.88,4699.74);
INSERT INTO physical_balance VALUES ('apr23','electricity_delivered_networks_pi_gt_5mw','GWh',4560.99,4764.92);
INSERT INTO physical_balance VALUES ('aug23','electricity_delivered_networks_pi_gt_5mw','GWh',4274.31,3997.69);
INSERT INTO physical_balance VALUES ('apr24','electricity_delivered_networks_pi_gt_5mw','GWh',4529.34,3632.86);
INSERT INTO physical_balance VALUES ('apr25','electricity_delivered_networks_pi_gt_5mw','GWh',4059.86,3459.16);
INSERT INTO physical_balance VALUES ('feb23','commercial_exchanges_import_incl_transit','GWh',535.98,621.18);
INSERT INTO physical_balance VALUES ('apr23','commercial_exchanges_import_incl_transit','GWh',823.55,593.31);
INSERT INTO physical_balance VALUES ('aug23','commercial_exchanges_import_incl_transit','GWh',887.42,949.13);
INSERT INTO physical_balance VALUES ('apr24','commercial_exchanges_import_incl_transit','GWh',1089.58,1203.68);
INSERT INTO physical_balance VALUES ('apr25','commercial_exchanges_import_incl_transit','GWh',1551.94,1679.21);
INSERT INTO physical_balance VALUES ('feb23','commercial_exchanges_export_incl_transit','GWh',1245.26,1112.37);
INSERT INTO physical_balance VALUES ('apr23','commercial_exchanges_export_incl_transit','GWh',1050.83,1373.03);
INSERT INTO physical_balance VALUES ('aug23','commercial_exchanges_export_incl_transit','GWh',914.55,770.5);
INSERT INTO physical_balance VALUES ('apr24','commercial_exchanges_export_incl_transit','GWh',1275.96,1002.98);
INSERT INTO physical_balance VALUES ('apr25','commercial_exchanges_export_incl_transit','GWh',1330.35,1274.21);
INSERT INTO physical_balance VALUES ('feb23','sen_internal_consumption','GWh',4796.84,4528.18);
INSERT INTO physical_balance VALUES ('apr23','sen_internal_consumption','GWh',4672.23,4296.82);
INSERT INTO physical_balance VALUES ('aug23','sen_internal_consumption','GWh',4508.23,4413.55);
INSERT INTO physical_balance VALUES ('apr24','sen_internal_consumption','GWh',4675.6,4146.98);
INSERT INTO physical_balance VALUES ('apr25','sen_internal_consumption','GWh',4608.2,4135.9);
INSERT INTO physical_balance VALUES ('feb23','household_consumption_total','GWh',1228.11,934.26);
INSERT INTO physical_balance VALUES ('apr23','household_consumption_total','GWh',1066.11,1116.26);
INSERT INTO physical_balance VALUES ('aug23','household_consumption_total','GWh',1104.43,1105.47);
INSERT INTO physical_balance VALUES ('apr24','household_consumption_total','GWh',1160.91,1062.75);
INSERT INTO physical_balance VALUES ('apr25','household_consumption_total','GWh',1241.5,1157.48);
INSERT INTO physical_balance VALUES ('feb23','household_consumption_competitive','GWh',878.47,624.9);
INSERT INTO physical_balance VALUES ('apr23','household_consumption_competitive','GWh',762.05,804.41);
INSERT INTO physical_balance VALUES ('aug23','household_consumption_competitive','GWh',799.22,791.65);
INSERT INTO physical_balance VALUES ('apr24','household_consumption_competitive','GWh',840.9,767.1);
INSERT INTO physical_balance VALUES ('apr25','household_consumption_competitive','GWh',940.5,877.84);
INSERT INTO physical_balance VALUES ('feb23','household_consumption_su','GWh',348.99,308.41);
INSERT INTO physical_balance VALUES ('apr23','household_consumption_su','GWh',303.11,310.93);
INSERT INTO physical_balance VALUES ('aug23','household_consumption_su','GWh',304.07,312.66);
INSERT INTO physical_balance VALUES ('apr24','household_consumption_su','GWh',318.92,294.56);
INSERT INTO physical_balance VALUES ('apr25','household_consumption_su','GWh',299.52,278.35);
INSERT INTO physical_balance VALUES ('feb23','household_consumption_ui','GWh',0.66,0.95);
INSERT INTO physical_balance VALUES ('apr23','household_consumption_ui','GWh',0.94,0.93);
INSERT INTO physical_balance VALUES ('aug23','household_consumption_ui','GWh',1.14,1.16);
INSERT INTO physical_balance VALUES ('apr24','household_consumption_ui','GWh',1.1,1.09);
INSERT INTO physical_balance VALUES ('apr25','household_consumption_ui','GWh',1.49,1.29);
INSERT INTO physical_balance VALUES ('feb23','nonhousehold_consumption_total','GWh',2576.89,2760.21);
INSERT INTO physical_balance VALUES ('apr23','nonhousehold_consumption_total','GWh',2771.75,2473.49);
INSERT INTO physical_balance VALUES ('aug23','nonhousehold_consumption_total','GWh',2975.05,2859.93);
INSERT INTO physical_balance VALUES ('apr24','nonhousehold_consumption_total','GWh',2885.13,2681.66);
INSERT INTO physical_balance VALUES ('apr25','nonhousehold_consumption_total','GWh',2779.38,2610.18);
INSERT INTO physical_balance VALUES ('feb23','nonhousehold_consumption_competitive','GWh',2195.39,2375.59);
INSERT INTO physical_balance VALUES ('apr23','nonhousehold_consumption_competitive','GWh',2355.57,2099.7);
INSERT INTO physical_balance VALUES ('aug23','nonhousehold_consumption_competitive','GWh',2695.16,2608.8);
INSERT INTO physical_balance VALUES ('apr24','nonhousehold_consumption_competitive','GWh',2726.66,2549.46);
INSERT INTO physical_balance VALUES ('apr25','nonhousehold_consumption_competitive','GWh',2688.78,2535.51);
INSERT INTO physical_balance VALUES ('feb23','nonhousehold_consumption_ui','GWh',381.5,384.62);
INSERT INTO physical_balance VALUES ('apr23','nonhousehold_consumption_ui','GWh',422.28,373.79);
INSERT INTO physical_balance VALUES ('aug23','nonhousehold_consumption_ui','GWh',279.89,251.13);
INSERT INTO physical_balance VALUES ('apr24','nonhousehold_consumption_ui','GWh',158.48,132.2);
INSERT INTO physical_balance VALUES ('apr25','nonhousehold_consumption_ui','GWh',90.6,74.67);
INSERT INTO physical_balance VALUES ('feb23','cpt_transmission','GWh',102.02,84.61);
INSERT INTO physical_balance VALUES ('apr23','cpt_transmission','GWh',84.2,85.02);
INSERT INTO physical_balance VALUES ('aug23','cpt_transmission','GWh',67.39,77.37);
INSERT INTO physical_balance VALUES ('apr24','cpt_transmission','GWh',81.34,76.68);
INSERT INTO physical_balance VALUES ('apr25','cpt_transmission','GWh',83.95,77.21);
INSERT INTO physical_balance VALUES ('feb23','cpt_distribution','GWh',584.32,534.62);
INSERT INTO physical_balance VALUES ('apr23','cpt_distribution','GWh',506.16,444.35);
INSERT INTO physical_balance VALUES ('aug23','cpt_distribution','GWh',301.18,308.17);
INSERT INTO physical_balance VALUES ('apr24','cpt_distribution','GWh',450.1,306.19);
INSERT INTO physical_balance VALUES ('apr25','cpt_distribution','GWh',444.38,351.5);

-- ===== wholesale_transactions =====
INSERT INTO wholesale_transactions VALUES ('feb23','bilateral_negotiated_direct_total','compare',933,934.21,19.4);
INSERT INTO wholesale_transactions VALUES ('feb23','bilateral_negotiated_direct_total','report',950,937.41,21);
INSERT INTO wholesale_transactions VALUES ('apr23','bilateral_negotiated_direct_total','compare',880,940.74,18.8);
INSERT INTO wholesale_transactions VALUES ('apr23','bilateral_negotiated_direct_total','report',657,904.02,15.3);
INSERT INTO wholesale_transactions VALUES ('aug23','bilateral_negotiated_direct_total','compare',577,825.4,12.8);
INSERT INTO wholesale_transactions VALUES ('aug23','bilateral_negotiated_direct_total','report',542,855.07,12.3);
INSERT INTO wholesale_transactions VALUES ('apr24','bilateral_negotiated_direct_total','compare',724,477.51,15.5);
INSERT INTO wholesale_transactions VALUES ('apr24','bilateral_negotiated_direct_total','report',752,428.09,18.1);
INSERT INTO wholesale_transactions VALUES ('apr25','bilateral_negotiated_direct_total','compare',1368,522.23,29.7);
INSERT INTO wholesale_transactions VALUES ('apr25','bilateral_negotiated_direct_total','report',1166,482.43,28.2);
INSERT INTO wholesale_transactions VALUES ('feb23','bilateral_negotiated','compare',899,952.41,18.7);
INSERT INTO wholesale_transactions VALUES ('feb23','bilateral_negotiated','report',918,954.6,20.3);
INSERT INTO wholesale_transactions VALUES ('apr23','bilateral_negotiated','compare',856,955,18.3);
INSERT INTO wholesale_transactions VALUES ('apr23','bilateral_negotiated','report',630,923.72,14.7);
INSERT INTO wholesale_transactions VALUES ('aug23','bilateral_negotiated','compare',553,842.02,12.3);
INSERT INTO wholesale_transactions VALUES ('aug23','bilateral_negotiated','report',524,869.54,11.9);
INSERT INTO wholesale_transactions VALUES ('apr24','bilateral_negotiated','compare',698,479.09,14.9);
INSERT INTO wholesale_transactions VALUES ('apr24','bilateral_negotiated','report',730,428.96,17.6);
INSERT INTO wholesale_transactions VALUES ('apr25','bilateral_negotiated','compare',1325,526.84,26.2);
INSERT INTO wholesale_transactions VALUES ('apr25','bilateral_negotiated','report',1127,485.99,27.2);
INSERT INTO wholesale_transactions VALUES ('feb23','bilateral_negotiated_aggregator','compare',33,442.76,0.7);
INSERT INTO wholesale_transactions VALUES ('feb23','bilateral_negotiated_aggregator','report',32,444.17,0.7);
INSERT INTO wholesale_transactions VALUES ('apr23','bilateral_negotiated_aggregator','compare',25,443.07,0.5);
INSERT INTO wholesale_transactions VALUES ('apr23','bilateral_negotiated_aggregator','report',27,444.13,0.6);
INSERT INTO wholesale_transactions VALUES ('aug23','bilateral_negotiated_aggregator','compare',24,441.09,0.5);
INSERT INTO wholesale_transactions VALUES ('aug23','bilateral_negotiated_aggregator','report',18,445.66,0.4);
INSERT INTO wholesale_transactions VALUES ('apr24','bilateral_negotiated_aggregator','compare',26,434.86,0.6);
INSERT INTO wholesale_transactions VALUES ('apr24','bilateral_negotiated_aggregator','report',22,399.24,0.5);
INSERT INTO wholesale_transactions VALUES ('apr25','bilateral_negotiated_aggregator','compare',43,381.78,0.9);
INSERT INTO wholesale_transactions VALUES ('apr25','bilateral_negotiated_aggregator','report',39,380.26,0.9);
INSERT INTO wholesale_transactions VALUES ('feb23','export_contracts','compare',201,680.76,4.2);
INSERT INTO wholesale_transactions VALUES ('feb23','export_contracts','report',206,642.88,4.6);
INSERT INTO wholesale_transactions VALUES ('apr23','export_contracts','compare',212,655.05,4.5);
INSERT INTO wholesale_transactions VALUES ('apr23','export_contracts','report',189,598.46,4.4);
INSERT INTO wholesale_transactions VALUES ('aug23','export_contracts','compare',137,494.93,3);
INSERT INTO wholesale_transactions VALUES ('aug23','export_contracts','report',149,613.08,3.4);
INSERT INTO wholesale_transactions VALUES ('apr24','export_contracts','compare',90,335.13,1.9);
INSERT INTO wholesale_transactions VALUES ('apr24','export_contracts','report',144,349.91,3.5);
INSERT INTO wholesale_transactions VALUES ('apr25','export_contracts','compare',417,545.92,9);
INSERT INTO wholesale_transactions VALUES ('apr25','export_contracts','report',319,423.22,7.7);
INSERT INTO wholesale_transactions VALUES ('feb23','centralized_bilateral_total','compare',1611,1014.28,33.6);
INSERT INTO wholesale_transactions VALUES ('feb23','centralized_bilateral_total','report',1475,1018.13,32.6);
INSERT INTO wholesale_transactions VALUES ('apr23','centralized_bilateral_total','compare',1622,993.63,34.7);
INSERT INTO wholesale_transactions VALUES ('apr23','centralized_bilateral_total','report',1346,952.55,31.3);
INSERT INTO wholesale_transactions VALUES ('aug23','centralized_bilateral_total','compare',1294,907.72,28.7);
INSERT INTO wholesale_transactions VALUES ('aug23','centralized_bilateral_total','report',1301,905.7,29.5);
INSERT INTO wholesale_transactions VALUES ('apr24','centralized_bilateral_total','compare',640,495.02,13.7);
INSERT INTO wholesale_transactions VALUES ('apr24','centralized_bilateral_total','report',566,495.62,13.6);
INSERT INTO wholesale_transactions VALUES ('apr25','centralized_bilateral_total','compare',1972,525.43,42.8);
INSERT INTO wholesale_transactions VALUES ('apr25','centralized_bilateral_total','report',1930,512.75,46.7);
INSERT INTO wholesale_transactions VALUES ('feb23','PCCB-LE-flex','compare',1191,939.03,24.8);
INSERT INTO wholesale_transactions VALUES ('feb23','PCCB-LE-flex','report',1091,944.33,24.1);
INSERT INTO wholesale_transactions VALUES ('apr23','PCCB-LE-flex','compare',1201,932.49,1);
INSERT INTO wholesale_transactions VALUES ('apr23','PCCB-LE-flex','report',942,865.23,21.9);
INSERT INTO wholesale_transactions VALUES ('aug23','PCCB-LE-flex','compare',922,820.74,20.4);
INSERT INTO wholesale_transactions VALUES ('aug23','PCCB-LE-flex','report',928,818.7,21);
INSERT INTO wholesale_transactions VALUES ('apr24','PCCB-LE-flex','compare',548,477.38,11.7);
INSERT INTO wholesale_transactions VALUES ('apr24','PCCB-LE-flex','report',468,480.78,11.3);
INSERT INTO wholesale_transactions VALUES ('apr25','PCCB-LE-flex','compare',1311,532.52,28.5);
INSERT INTO wholesale_transactions VALUES ('apr25','PCCB-LE-flex','report',1209,526.44,29.2);
INSERT INTO wholesale_transactions VALUES ('feb23','PCCB-NC','compare',44,1288.07,0.9);
INSERT INTO wholesale_transactions VALUES ('feb23','PCCB-NC','report',43,1292.69,0.9);
INSERT INTO wholesale_transactions VALUES ('apr23','PCCB-NC','compare',48,1284.34,1);
INSERT INTO wholesale_transactions VALUES ('apr23','PCCB-NC','report',50,1147.57,1.2);
INSERT INTO wholesale_transactions VALUES ('aug23','PCCB-NC','compare',32,1065.69,0.7);
INSERT INTO wholesale_transactions VALUES ('aug23','PCCB-NC','report',32,1065.52,0.7);
INSERT INTO wholesale_transactions VALUES ('apr24','PCCB-NC','compare',8,1532.08,0.2);
INSERT INTO wholesale_transactions VALUES ('apr24','PCCB-NC','report',9,1351.05,0.2);
INSERT INTO wholesale_transactions VALUES ('apr25','PCCB-NC','compare',125,561.44,2.7);
INSERT INTO wholesale_transactions VALUES ('apr25','PCCB-NC','report',108,499.56,2.6);
INSERT INTO wholesale_transactions VALUES ('feb23','PC-OTC','compare',316,1280.06,6.6);
INSERT INTO wholesale_transactions VALUES ('feb23','PC-OTC','report',284,1283.79,6.3);
INSERT INTO wholesale_transactions VALUES ('apr23','PC-OTC','compare',302,1230.3,6.5);
INSERT INTO wholesale_transactions VALUES ('apr23','PC-OTC','report',289,1224.43,6.7);
INSERT INTO wholesale_transactions VALUES ('aug23','PC-OTC','compare',271,1212.62,6);
INSERT INTO wholesale_transactions VALUES ('aug23','PC-OTC','report',271,1212.6,6.1);
INSERT INTO wholesale_transactions VALUES ('apr24','PC-OTC','compare',48,686.66,1);
INSERT INTO wholesale_transactions VALUES ('apr24','PC-OTC','report',50,666.86,1.2);
INSERT INTO wholesale_transactions VALUES ('apr25','PC-OTC','compare',354,524.47,7.2);
INSERT INTO wholesale_transactions VALUES ('apr25','PC-OTC','report',402,501.06,9.7);
INSERT INTO wholesale_transactions VALUES ('feb23','PCE-ESRE-CV','compare',15,689.96,0.3);
INSERT INTO wholesale_transactions VALUES ('feb23','PCE-ESRE-CV','report',16,675.01,0.4);
INSERT INTO wholesale_transactions VALUES ('apr23','PCE-ESRE-CV','compare',26,561.91,0.6);
INSERT INTO wholesale_transactions VALUES ('apr23','PCE-ESRE-CV','report',22,621.03,0.5);
INSERT INTO wholesale_transactions VALUES ('aug23','PCE-ESRE-CV','compare',26,488.45,0.6);
INSERT INTO wholesale_transactions VALUES ('aug23','PCE-ESRE-CV','report',26,485.41,0.6);
INSERT INTO wholesale_transactions VALUES ('apr24','PCE-ESRE-CV','compare',36,267.68,0.8);
INSERT INTO wholesale_transactions VALUES ('apr24','PCE-ESRE-CV','report',38,240.37,0.9);
INSERT INTO wholesale_transactions VALUES ('apr25','PCE-ESRE-CV','compare',54,263.32,1.2);
INSERT INTO wholesale_transactions VALUES ('apr25','PCE-ESRE-CV','report',46,253.65,1.1);
INSERT INTO wholesale_transactions VALUES ('feb23','PMC-BRM','compare',45,979.16,0.9);
INSERT INTO wholesale_transactions VALUES ('feb23','PMC-BRM','report',40,988.09,0.9);
INSERT INTO wholesale_transactions VALUES ('apr23','PMC-BRM','compare',45,982.04,1);
INSERT INTO wholesale_transactions VALUES ('apr23','PMC-BRM','report',43,980.8,1);
INSERT INTO wholesale_transactions VALUES ('aug23','PMC-BRM','compare',45,982.19,1);
INSERT INTO wholesale_transactions VALUES ('aug23','PMC-BRM','report',45,983.88,1);
INSERT INTO wholesale_transactions VALUES ('apr25','PMC-BRM','compare',22,499,0.5);
INSERT INTO wholesale_transactions VALUES ('apr25','PMC-BRM','report',22,498.74,0.5);
INSERT INTO wholesale_transactions VALUES ('apr25','PCT-BRM','compare',105,537.69,2.1);
INSERT INTO wholesale_transactions VALUES ('apr25','PCT-BRM','report',143,525.25,2.9);
INSERT INTO wholesale_transactions VALUES ('feb23','MACEE','compare',992,450,20.7);
INSERT INTO wholesale_transactions VALUES ('feb23','MACEE','report',1116,450,24.6);
INSERT INTO wholesale_transactions VALUES ('apr23','MACEE','compare',969,450,20.7);
INSERT INTO wholesale_transactions VALUES ('apr23','MACEE','report',1654,450,38.5);
INSERT INTO wholesale_transactions VALUES ('aug23','MACEE','compare',1395,450,30.9);
INSERT INTO wholesale_transactions VALUES ('aug23','MACEE','report',1361,450,30.8);
INSERT INTO wholesale_transactions VALUES ('apr24','MACEE','compare',1213,450,26);
INSERT INTO wholesale_transactions VALUES ('apr24','MACEE','report',913,450,22);
INSERT INTO wholesale_transactions VALUES ('feb23','DAM_PZU_total','compare',2052,691.33,42.8);
INSERT INTO wholesale_transactions VALUES ('feb23','DAM_PZU_total','report',1554,691.3,34.3);
INSERT INTO wholesale_transactions VALUES ('apr23','DAM_PZU_total','compare',1445,544.85,30.9);
INSERT INTO wholesale_transactions VALUES ('apr23','DAM_PZU_total','report',1566,475.68,36.4);
INSERT INTO wholesale_transactions VALUES ('aug23','DAM_PZU_total','compare',1376,500.18,30.5);
INSERT INTO wholesale_transactions VALUES ('aug23','DAM_PZU_total','report',1223,541.33,27.7);
INSERT INTO wholesale_transactions VALUES ('apr24','DAM_PZU_total','compare',2136,328.57,45.7);
INSERT INTO wholesale_transactions VALUES ('apr24','DAM_PZU_total','report',1680,329.1,40.5);
INSERT INTO wholesale_transactions VALUES ('apr25','DAM_PZU_total','compare',1875,551.14,40.7);
INSERT INTO wholesale_transactions VALUES ('apr25','DAM_PZU_total','report',1530,465.24,37);
INSERT INTO wholesale_transactions VALUES ('apr25','DAM_PZU_OPCOM','compare',1347,531.83,29.2);
INSERT INTO wholesale_transactions VALUES ('apr25','DAM_PZU_OPCOM','report',1154,460.67,27.9);
INSERT INTO wholesale_transactions VALUES ('apr25','DAM_PZU_BRM','compare',528,600.45,11.4);
INSERT INTO wholesale_transactions VALUES ('apr25','DAM_PZU_BRM','report',376,479.25,9.1);
INSERT INTO wholesale_transactions VALUES ('feb23','IDM_PI_total','compare',98,723.91,2);
INSERT INTO wholesale_transactions VALUES ('feb23','IDM_PI_total','report',87,705.15,1.9);
INSERT INTO wholesale_transactions VALUES ('apr23','IDM_PI_total','compare',88,531.12,1.9);
INSERT INTO wholesale_transactions VALUES ('apr23','IDM_PI_total','report',98,505.22,2.3);
INSERT INTO wholesale_transactions VALUES ('aug23','IDM_PI_total','compare',142,485.28,3.2);
INSERT INTO wholesale_transactions VALUES ('aug23','IDM_PI_total','report',150,519.32,3.4);
INSERT INTO wholesale_transactions VALUES ('apr24','IDM_PI_total','compare',177,311.14,3.8);
INSERT INTO wholesale_transactions VALUES ('apr24','IDM_PI_total','report',212,265.78,5.1);
INSERT INTO wholesale_transactions VALUES ('apr25','IDM_PI_total','compare',349,478.98,7.6);
INSERT INTO wholesale_transactions VALUES ('apr25','IDM_PI_total','report',372,382.01,9);
INSERT INTO wholesale_transactions VALUES ('apr25','IDM_PI_OPCOM','compare',204,472.69,4.4);
INSERT INTO wholesale_transactions VALUES ('apr25','IDM_PI_OPCOM','report',209,351.74,5);
INSERT INTO wholesale_transactions VALUES ('apr25','IDM_PI_BRM','compare',145,487.81,3.1);
INSERT INTO wholesale_transactions VALUES ('apr25','IDM_PI_BRM','report',163,420.8,3.9);

-- ===== balancing_market =====
INSERT INTO balancing_market VALUES ('feb23','compare',181,3.8,36,360.33,144,293.97,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('feb23','report',146,3.2,44,531.54,102,397.76,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('apr23','compare',172,3.7,45,477.83,127,340.47,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('apr23','report',215,5,35,361,180,294.68,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('aug23','compare',140,3.1,40,479.26,99,387.21,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('aug23','report',165,3.7,62,648.08,103,432.68,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('apr24','compare',142,3,33,-581.26,110,-962.86,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('apr24','report',178,4.3,81,-34.72,97,-458.55,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('apr25','compare',78,1.7,39,411.33,38,353.24,'engaged/activated balancing energy (angajată) per Ordin ANRE 127/2021; methodology change from July 2024');
INSERT INTO balancing_market VALUES ('apr25','report',87,2.1,33,385.17,53,260.93,'engaged/activated balancing energy (angajată) per Ordin ANRE 127/2021; methodology change from July 2024');

-- ===== import_export_commercial (excludes transit) =====
INSERT INTO import_export_commercial VALUES ('feb23','export','total','compare',1082,680.76,22.6);
INSERT INTO import_export_commercial VALUES ('feb23','export','total','report',873,600.64,19.3);
INSERT INTO import_export_commercial VALUES ('feb23','export','pzu','compare',829,555.89,17.3);
INSERT INTO import_export_commercial VALUES ('feb23','export','pzu','report',614,578.7,13.6);
INSERT INTO import_export_commercial VALUES ('feb23','export','pi','compare',51,715.07,1.1);
INSERT INTO import_export_commercial VALUES ('feb23','export','pi','report',53,690.9,1.2);
INSERT INTO import_export_commercial VALUES ('feb23','import','total','compare',373,1144.34,7.8);
INSERT INTO import_export_commercial VALUES ('feb23','import','total','report',381,1115.42,8.4);
INSERT INTO import_export_commercial VALUES ('feb23','import','pzu','compare',47,1181.29,1);
INSERT INTO import_export_commercial VALUES ('feb23','import','pzu','report',98,891.59,2.2);
INSERT INTO import_export_commercial VALUES ('feb23','import','pi','compare',41,744.51,8.6);
INSERT INTO import_export_commercial VALUES ('feb23','import','pi','report',31,729.67,6.9);
INSERT INTO import_export_commercial VALUES ('apr23','export','total','compare',684,515.14,14.6);
INSERT INTO import_export_commercial VALUES ('apr23','export','total','report',1117,463.07,26);
INSERT INTO import_export_commercial VALUES ('apr23','export','pzu','compare',421,444.72,9);
INSERT INTO import_export_commercial VALUES ('apr23','export','pzu','report',876,433.22,20.4);
INSERT INTO import_export_commercial VALUES ('apr23','export','pi','compare',51,516.45,1.1);
INSERT INTO import_export_commercial VALUES ('apr23','export','pi','report',52,474.91,1.2);
INSERT INTO import_export_commercial VALUES ('apr23','import','total','compare',456,1004.3,9.8);
INSERT INTO import_export_commercial VALUES ('apr23','import','total','report',337,946.48,7.8);
INSERT INTO import_export_commercial VALUES ('apr23','import','pzu','compare',109,682.73,2.3);
INSERT INTO import_export_commercial VALUES ('apr23','import','pzu','report',18,647.05,0.4);
INSERT INTO import_export_commercial VALUES ('apr23','import','pi','compare',34,553.92,7.3);
INSERT INTO import_export_commercial VALUES ('apr23','import','pi','report',42,547.2,9.8);
INSERT INTO import_export_commercial VALUES ('aug23','export','total','compare',507,415.66,11.3);
INSERT INTO import_export_commercial VALUES ('aug23','export','total','report',410,459.63,9.3);
INSERT INTO import_export_commercial VALUES ('aug23','export','pzu','compare',290,371.63,6.4);
INSERT INTO import_export_commercial VALUES ('aug23','export','pzu','report',195,342.95,4.4);
INSERT INTO import_export_commercial VALUES ('aug23','export','pi','compare',80,439.83,1.8);
INSERT INTO import_export_commercial VALUES ('aug23','export','pi','report',66,458.12,1.5);
INSERT INTO import_export_commercial VALUES ('aug23','import','total','compare',480,674.51,10.6);
INSERT INTO import_export_commercial VALUES ('aug23','import','total','report',589,709.61,13.3);
INSERT INTO import_export_commercial VALUES ('aug23','import','pzu','compare',186,616.9,4.1);
INSERT INTO import_export_commercial VALUES ('aug23','import','pzu','report',264,750.53,6);
INSERT INTO import_export_commercial VALUES ('aug23','import','pi','compare',57,547.32,12.5);
INSERT INTO import_export_commercial VALUES ('aug23','import','pi','report',77,569.49,17.4);
INSERT INTO import_export_commercial VALUES ('apr24','export','total','compare',909,291.85,19.4);
INSERT INTO import_export_commercial VALUES ('apr24','export','total','report',597,261.45,14.4);
INSERT INTO import_export_commercial VALUES ('apr24','export','pzu','compare',731,291.34,15.6);
INSERT INTO import_export_commercial VALUES ('apr24','export','pzu','report',350,264.02,8.4);
INSERT INTO import_export_commercial VALUES ('apr24','export','pi','compare',88,252.2,1.9);
INSERT INTO import_export_commercial VALUES ('apr24','export','pi','report',103,129.52,2.5);
INSERT INTO import_export_commercial VALUES ('apr24','import','total','compare',723,376.77,15.5);
INSERT INTO import_export_commercial VALUES ('apr24','import','total','report',797,363.73,19.2);
INSERT INTO import_export_commercial VALUES ('apr24','import','pzu','compare',8,411.39,0.2);
INSERT INTO import_export_commercial VALUES ('apr24','import','pzu','report',94,394.98,2.3);
INSERT INTO import_export_commercial VALUES ('apr24','import','pi','compare',81,376.62,17.4);
INSERT INTO import_export_commercial VALUES ('apr24','import','pi','report',100,405.61,24);
INSERT INTO import_export_commercial VALUES ('apr25','export','total','compare',987,473.91,21.4);
INSERT INTO import_export_commercial VALUES ('apr25','export','total','report',709,381.91,17.2);
INSERT INTO import_export_commercial VALUES ('apr25','export','pzu','compare',414,414.5,9);
INSERT INTO import_export_commercial VALUES ('apr25','export','pzu','report',200,351.74,4.8);
INSERT INTO import_export_commercial VALUES ('apr25','export','pi','compare',156,439.1,3.4);
INSERT INTO import_export_commercial VALUES ('apr25','export','pi','report',190,344.31,4.6);
INSERT INTO import_export_commercial VALUES ('apr25','import','total','compare',1208,593.63,26.2);
INSERT INTO import_export_commercial VALUES ('apr25','import','total','report',1104,505.01,26.7);
INSERT INTO import_export_commercial VALUES ('apr25','import','pzu','compare',543,642.75,11.8);
INSERT INTO import_export_commercial VALUES ('apr25','import','pzu','report',419,523.24,10.1);
INSERT INTO import_export_commercial VALUES ('apr25','import','pi','compare',182,513.2,4);
INSERT INTO import_export_commercial VALUES ('apr25','import','pi','report',168,428.83,4.1);

-- ===== generation_mix (report month, % of delivered by monitored producers) =====
INSERT INTO generation_mix VALUES ('feb23','carbune',12.11);
INSERT INTO generation_mix VALUES ('feb23','pacura',0.76);
INSERT INTO generation_mix VALUES ('feb23','gaz',21.59);
INSERT INTO generation_mix VALUES ('feb23','nuclear',18.28);
INSERT INTO generation_mix VALUES ('feb23','hidro',27.9);
INSERT INTO generation_mix VALUES ('feb23','eolian',17.53);
INSERT INTO generation_mix VALUES ('feb23','solar',1.09);
INSERT INTO generation_mix VALUES ('feb23','biomasa',0.72);
INSERT INTO generation_mix VALUES ('feb23','deseuri',0.01);
INSERT INTO generation_mix VALUES ('feb23','stocare',0.002);
INSERT INTO generation_mix VALUES ('apr23','carbune',13.7);
INSERT INTO generation_mix VALUES ('apr23','pacura',0.15);
INSERT INTO generation_mix VALUES ('apr23','gaz',7.74);
INSERT INTO generation_mix VALUES ('apr23','nuclear',19.45);
INSERT INTO generation_mix VALUES ('apr23','hidro',41.91);
INSERT INTO generation_mix VALUES ('apr23','eolian',14.88);
INSERT INTO generation_mix VALUES ('apr23','solar',1.69);
INSERT INTO generation_mix VALUES ('apr23','biomasa',0.44);
INSERT INTO generation_mix VALUES ('apr23','deseuri',0.04);
INSERT INTO generation_mix VALUES ('apr23','stocare',0.005);
INSERT INTO generation_mix VALUES ('aug23','carbune',15.66);
INSERT INTO generation_mix VALUES ('aug23','pacura',0.13);
INSERT INTO generation_mix VALUES ('aug23','gaz',18.56);
INSERT INTO generation_mix VALUES ('aug23','nuclear',22.14);
INSERT INTO generation_mix VALUES ('aug23','hidro',28.65);
INSERT INTO generation_mix VALUES ('aug23','eolian',11.17);
INSERT INTO generation_mix VALUES ('aug23','solar',3.19);
INSERT INTO generation_mix VALUES ('aug23','biomasa',0.47);
INSERT INTO generation_mix VALUES ('aug23','deseuri',0.01);
INSERT INTO generation_mix VALUES ('aug23','stocare',0.01);
INSERT INTO generation_mix VALUES ('apr24','carbune',10.92);
INSERT INTO generation_mix VALUES ('apr24','pacura',0.07);
INSERT INTO generation_mix VALUES ('apr24','gaz',7.96);
INSERT INTO generation_mix VALUES ('apr24','nuclear',24.92);
INSERT INTO generation_mix VALUES ('apr24','hidro',38.73);
INSERT INTO generation_mix VALUES ('apr24','eolian',13.21);
INSERT INTO generation_mix VALUES ('apr24','solar',3.25);
INSERT INTO generation_mix VALUES ('apr24','biomasa',0.92);
INSERT INTO generation_mix VALUES ('apr24','deseuri',0.01);
INSERT INTO generation_mix VALUES ('apr24','stocare',0.01);
INSERT INTO generation_mix VALUES ('apr25','carbune',11.41);
INSERT INTO generation_mix VALUES ('apr25','pacura',0.01);
INSERT INTO generation_mix VALUES ('apr25','gaz',8.64);
INSERT INTO generation_mix VALUES ('apr25','nuclear',26.18);
INSERT INTO generation_mix VALUES ('apr25','hidro',32.6);
INSERT INTO generation_mix VALUES ('apr25','eolian',14.85);
INSERT INTO generation_mix VALUES ('apr25','solar',5.3);
INSERT INTO generation_mix VALUES ('apr25','biomasa',0.71);
INSERT INTO generation_mix VALUES ('apr25','deseuri',0.02);
INSERT INTO generation_mix VALUES ('apr25','stocare',0.28);

-- ===== concentration_indicators =====
INSERT INTO concentration_indicators VALUES ('feb23','energy_delivered_networks',NULL,29.43,67.23,1676);
INSERT INTO concentration_indicators VALUES ('apr23','energy_delivered_networks',NULL,41.51,72.17,2268);
INSERT INTO concentration_indicators VALUES ('aug23','energy_delivered_networks',NULL,28.86,66.33,1769);
INSERT INTO concentration_indicators VALUES ('apr24','energy_delivered_networks',NULL,38.54,71.71,2207);
INSERT INTO concentration_indicators VALUES ('apr25','energy_delivered_networks',NULL,32.65,68.28,1881);
INSERT INTO concentration_indicators VALUES ('feb23','PZU','sell',20.92,43.14,839);
INSERT INTO concentration_indicators VALUES ('feb23','PZU','buy',18.15,36.88,753);
INSERT INTO concentration_indicators VALUES ('apr23','PZU','sell',13.58,33.84,567);
INSERT INTO concentration_indicators VALUES ('apr23','PZU','buy',20.36,36.8,781);
INSERT INTO concentration_indicators VALUES ('aug23','PZU','sell',20.31,43.14,853);
INSERT INTO concentration_indicators VALUES ('aug23','PZU','buy',14.02,29.61,557);
INSERT INTO concentration_indicators VALUES ('apr24','PZU','sell',29.96,62.21,1728);
INSERT INTO concentration_indicators VALUES ('apr24','PZU','buy',11.35,29.32,523);
INSERT INTO concentration_indicators VALUES ('apr25','PZU_OPCOM','sell',11.87,30.85,530);
INSERT INTO concentration_indicators VALUES ('apr25','PZU_OPCOM','buy',10.1,29.94,609);
INSERT INTO concentration_indicators VALUES ('apr25','PZU_BRM','sell',30.07,64.24,1754.26);
INSERT INTO concentration_indicators VALUES ('apr25','PZU_BRM','buy',23.85,53.01,1381.21);

-- ===== retail_clients =====
INSERT INTO retail_clients VALUES ('feb23','household','DA',4070200,2432444,1634038,3718);
INSERT INTO retail_clients VALUES ('feb23','household','DB',3147338,1997770,1145708,3860);
INSERT INTO retail_clients VALUES ('feb23','household','DC',1023829,713467,310019,343);
INSERT INTO retail_clients VALUES ('feb23','household','DD',301768,225066,76608,94);
INSERT INTO retail_clients VALUES ('feb23','household','DE',62031,53312,8704,15);
INSERT INTO retail_clients VALUES ('feb23','household','Total',8605166,5422059,3175077,8030);
INSERT INTO retail_clients VALUES ('apr23','household','DA',4079372,2453782,1621027,4563);
INSERT INTO retail_clients VALUES ('apr23','household','DB',3162653,2018998,1139890,3765);
INSERT INTO retail_clients VALUES ('apr23','household','DC',1035628,726935,308341,352);
INSERT INTO retail_clients VALUES ('apr23','household','DD',322515,246504,75919,92);
INSERT INTO retail_clients VALUES ('apr23','household','DE',37753,29179,8563,11);
INSERT INTO retail_clients VALUES ('apr23','household','Total',8637921,5475398,3153740,8783);
INSERT INTO retail_clients VALUES ('aug23','household','DA',4085736,2500761,1579318,5657);
INSERT INTO retail_clients VALUES ('aug23','household','DB',3158934,2035783,1118981,4170);
INSERT INTO retail_clients VALUES ('aug23','household','DC',1039774,738264,301133,377);
INSERT INTO retail_clients VALUES ('aug23','household','DD',335052,260548,74413,91);
INSERT INTO retail_clients VALUES ('aug23','household','DE',45405,36974,8416,15);
INSERT INTO retail_clients VALUES ('aug23','household','Total',8664901,5572330,3082261,10310);
INSERT INTO retail_clients VALUES ('apr24','household','DA',4035261,2518754,1511774,4733);
INSERT INTO retail_clients VALUES ('apr24','household','DB',3225848,2115514,1105893,4441);
INSERT INTO retail_clients VALUES ('apr24','household','DC',1078622,765732,312468,422);
INSERT INTO retail_clients VALUES ('apr24','household','DD',314009,249987,63916,106);
INSERT INTO retail_clients VALUES ('apr24','household','DE',42992,35596,7374,22);
INSERT INTO retail_clients VALUES ('apr24','household','Total',8696732,5685583,3001425,9724);
INSERT INTO retail_clients VALUES ('apr25','household','DA',4073087,2672261,1394085,5741);
INSERT INTO retail_clients VALUES ('apr25','household','DB',3244514,2243806,997492,4278);
INSERT INTO retail_clients VALUES ('apr25','household','DC',1101160,820512,279904,682);
INSERT INTO retail_clients VALUES ('apr25','household','DD',324653,268092,56416,145);
INSERT INTO retail_clients VALUES ('apr25','household','DE',37601,31329,6255,17);
INSERT INTO retail_clients VALUES ('apr25','household','Total',8781015,6036000,2734152,10863);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','IA',238405,230710,NULL,7695);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','IB',55448,46524,NULL,8924);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','IC',5688,4967,NULL,721);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','ID',2281,2075,NULL,206);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','IE',142,135,NULL,7);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','IF',21,20,NULL,1);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','IG',24,23,NULL,1);
INSERT INTO retail_clients VALUES ('feb23','nonhousehold','Total',302009,284454,NULL,17555);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','IA',237695,229837,NULL,7858);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','IB',55747,46539,NULL,9208);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','IC',6158,5417,NULL,741);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','ID',2310,2113,NULL,197);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','IE',147,140,NULL,7);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','IF',19,19,NULL,0);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','IG',26,26,NULL,0);
INSERT INTO retail_clients VALUES ('apr23','nonhousehold','Total',302102,284091,NULL,18011);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','IA',237785,229737,NULL,8048);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','IB',55741,47378,NULL,8363);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','IC',6602,5974,NULL,628);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','ID',2312,2177,NULL,137);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','IE',153,152,NULL,1);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','IF',25,25,NULL,NULL);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','IG',29,29,NULL,NULL);
INSERT INTO retail_clients VALUES ('aug23','nonhousehold','Total',302649,285472,NULL,17177);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','IA',239838,235565,NULL,4273);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','IB',53345,47413,NULL,5932);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','IC',6481,6043,NULL,438);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','ID',2332,2251,NULL,81);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','IE',155,154,NULL,1);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','IF',30,28,NULL,2);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','IG',33,33,NULL,NULL);
INSERT INTO retail_clients VALUES ('apr24','nonhousehold','Total',302214,291487,NULL,10727);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','IA',238497,233353,NULL,5144);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','IB',53894,50382,NULL,3512);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','IC',6643,6352,NULL,291);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','ID',2434,2351,NULL,83);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','IE',179,177,NULL,2);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','IF',29,29,NULL,NULL);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','IG',34,34,NULL,NULL);
INSERT INTO retail_clients VALUES ('apr25','nonhousehold','Total',301710,292678,NULL,9032);

-- ===== retail_consumption =====
INSERT INTO retail_consumption VALUES ('feb23','household','DA',159.77,101.78,57.68,0.31);
INSERT INTO retail_consumption VALUES ('feb23','household','DB',348.42,213.51,134.49,0.41);
INSERT INTO retail_consumption VALUES ('feb23','household','DC',234.92,158.52,76.33,0.08);
INSERT INTO retail_consumption VALUES ('feb23','household','DD',105.35,73.05,32.24,0.06);
INSERT INTO retail_consumption VALUES ('feb23','household','DE',85.8,78.04,7.67,0.09);
INSERT INTO retail_consumption VALUES ('feb23','household','Total',934.26,624.9,308.41,0.95);
INSERT INTO retail_consumption VALUES ('apr23','household','DA',166.98,102.44,64.18,0.35);
INSERT INTO retail_consumption VALUES ('apr23','household','DB',455.56,315.49,139.63,0.44);
INSERT INTO retail_consumption VALUES ('apr23','household','DC',293.07,220.72,72.27,0.08);
INSERT INTO retail_consumption VALUES ('apr23','household','DD',145.63,117.14,28.46,0.03);
INSERT INTO retail_consumption VALUES ('apr23','household','DE',55.03,48.63,6.38,0.02);
INSERT INTO retail_consumption VALUES ('apr23','household','Total',1116.26,804.41,310.93,0.93);
INSERT INTO retail_consumption VALUES ('aug23','household','DA',183.86,112.29,71.01,0.56);
INSERT INTO retail_consumption VALUES ('aug23','household','DB',453.93,312.6,140.89,0.44);
INSERT INTO retail_consumption VALUES ('aug23','household','DC',273.01,204.52,68.41,0.08);
INSERT INTO retail_consumption VALUES ('aug23','household','DD',124.79,98.24,26.51,0.05);
INSERT INTO retail_consumption VALUES ('aug23','household','DE',69.87,64,5.83,0.04);
INSERT INTO retail_consumption VALUES ('aug23','household','Total',1105.47,791.65,312.66,1.16);
INSERT INTO retail_consumption VALUES ('apr24','household','DA',156.62,98.86,57.4,0.36);
INSERT INTO retail_consumption VALUES ('apr24','household','DB',441.58,309.34,131.74,0.49);
INSERT INTO retail_consumption VALUES ('apr24','household','DC',286.79,212.18,74.48,0.13);
INSERT INTO retail_consumption VALUES ('apr24','household','DD',127.62,102.61,24.95,0.07);
INSERT INTO retail_consumption VALUES ('apr24','household','DE',50.15,44.11,5.99,0.05);
INSERT INTO retail_consumption VALUES ('apr24','household','Total',1062.75,767.1,294.56,1.09);
INSERT INTO retail_consumption VALUES ('apr25','household','DA',180.59,126.23,53.92,0.44);
INSERT INTO retail_consumption VALUES ('apr25','household','DB',458.24,331.56,126.17,0.51);
INSERT INTO retail_consumption VALUES ('apr25','household','DC',319.68,249.7,69.76,0.22);
INSERT INTO retail_consumption VALUES ('apr25','household','DD',153.06,129.7,23.28,0.08);
INSERT INTO retail_consumption VALUES ('apr25','household','DE',45.9,40.64,5.23,0.04);
INSERT INTO retail_consumption VALUES ('apr25','household','Total',1157.48,877.84,278.35,1.29);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','IA',234.15,160.25,NULL,73.91);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','IB',550.61,390.42,NULL,160.18);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','IC',356.96,303.72,NULL,53.24);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','ID',661.34,584.14,NULL,77.21);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','IE',359.72,344.47,NULL,15.25);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','IF',149.03,144.2,NULL,4.82);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','IG',448.41,448.39,NULL,0.01);
INSERT INTO retail_consumption VALUES ('feb23','nonhousehold','Total',2760.21,2375.59,NULL,384.62);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','IA',153.72,94.98,NULL,58.74);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','IB',448.77,292.26,NULL,156.52);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','IC',229.04,172.82,NULL,56.23);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','ID',580.22,499.75,NULL,80.47);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','IE',333.78,311.94,NULL,21.84);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','IF',132.77,132.77,NULL,0);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','IG',595.19,595.19,NULL,0);
INSERT INTO retail_consumption VALUES ('apr23','nonhousehold','Total',2473.49,2099.7,NULL,373.79);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','IA',185.09,148.76,NULL,36.32);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','IB',534.82,414.23,NULL,120.59);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','IC',301.48,254.1,NULL,47.39);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','ID',642.29,596.13,NULL,46.16);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','IE',344.29,343.61,NULL,0.68);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','IF',192.23,192.23,NULL,NULL);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','IG',659.74,659.74,NULL,NULL);
INSERT INTO retail_consumption VALUES ('aug23','nonhousehold','Total',2859.93,2608.8,NULL,251.13);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','IA',141.99,135.27,NULL,6.72);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','IB',425.88,363.43,NULL,62.45);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','IC',261.06,233.06,NULL,28);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','ID',565.57,543.46,NULL,22.11);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','IE',355.03,355.03,NULL,0.00002);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','IF',212.34,199.42,NULL,12.93);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','IG',719.79,719.79,NULL,NULL);
INSERT INTO retail_consumption VALUES ('apr24','nonhousehold','Total',2681.66,2549.46,NULL,132.2);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','IA',179.72,172.77,NULL,6.95);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','IB',429.07,401.62,NULL,27.46);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','IC',255.86,234.09,NULL,21.78);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','ID',549.57,531.2,NULL,18.37);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','IE',361.21,361.1,NULL,0.11);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','IF',176.06,176.06,NULL,NULL);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','IG',658.67,658.67,NULL,NULL);
INSERT INTO retail_consumption VALUES ('apr25','nonhousehold','Total',2610.18,2535.51,NULL,74.67);

-- ===== retail_prices (contractual averages; exclude taxes/VAT; not capped invoice prices) =====
INSERT INTO retail_prices VALUES ('feb23','household','DA',2048.77,2117.58,1931.25,1319.68);
INSERT INTO retail_prices VALUES ('feb23','household','DB',1821.46,1803.18,1851.76,1401.87);
INSERT INTO retail_prices VALUES ('feb23','household','DC',1655.02,1604.47,1760.55,1139.96);
INSERT INTO retail_prices VALUES ('feb23','household','DD',1466.45,1404.18,1608.17,1149.44);
INSERT INTO retail_prices VALUES ('feb23','household','DE',1005.36,951.19,1555.34,1106.72);
INSERT INTO retail_prices VALUES ('feb23','household','Total',1703.5,1650.94,1811.22,1308.7);
INSERT INTO retail_prices VALUES ('apr23','household','DA',1979.76,2026.29,1908.66,1404.91);
INSERT INTO retail_prices VALUES ('apr23','household','DB',1915.72,1925.1,1895.66,1560.59);
INSERT INTO retail_prices VALUES ('apr23','household','DC',1777.93,1766.16,1814.24,1451.37);
INSERT INTO retail_prices VALUES ('apr23','household','DD',1513.09,1480.98,1645.43,1367.02);
INSERT INTO retail_prices VALUES ('apr23','household','DE',1226.57,1172.04,1641,1649.74);
INSERT INTO retail_prices VALUES ('apr23','household','Total',1802.63,1784.18,1851.29,1487.22);
INSERT INTO retail_prices VALUES ('aug23','household','DA',1510.71,1660.55,1277.94,977.38);
INSERT INTO retail_prices VALUES ('aug23','household','DB',1500.24,1576.26,1333.47,891.97);
INSERT INTO retail_prices VALUES ('aug23','household','DC',1472.1,1504.09,1376.89,1097.67);
INSERT INTO retail_prices VALUES ('aug23','household','DD',1344.3,1369.44,1251.62,1057.42);
INSERT INTO retail_prices VALUES ('aug23','household','DE',956.58,932.22,1223.42,1004.38);
INSERT INTO retail_prices VALUES ('aug23','household','Total',1443.06,1491.84,1321.36,957.79);
INSERT INTO retail_prices VALUES ('apr24','household','DA',1079.74,1185.6,898.98,827.88);
INSERT INTO retail_prices VALUES ('apr24','household','DB',1117.86,1193.87,940.76,751.35);
INSERT INTO retail_prices VALUES ('apr24','household','DC',1078.48,1111.95,983.43,909.1);
INSERT INTO retail_prices VALUES ('apr24','household','DD',953.26,946.56,980.79,970.12);
INSERT INTO retail_prices VALUES ('apr24','household','DE',814.7,793.25,971.22,984.64);
INSERT INTO retail_prices VALUES ('apr24','household','Total',1067.55,1114.03,947.42,818.93);
INSERT INTO retail_prices VALUES ('apr25','household','DA',965.46,978.99,935.94,700.11);
INSERT INTO retail_prices VALUES ('apr25','household','DB',982.67,987.28,971.71,700.47);
INSERT INTO retail_prices VALUES ('apr25','household','DC',977.19,969.24,1006.31,772.44);
INSERT INTO retail_prices VALUES ('apr25','household','DD',921.08,906.86,1000.41,891.46);
INSERT INTO retail_prices VALUES ('apr25','household','DE',874.88,858.6,1000.97,951.84);
INSERT INTO retail_prices VALUES ('apr25','household','Total',966.05,963.12,976.4,731.69);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','IA',2203.7,2752.97,NULL,1012.76);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','IB',2011.84,2347.4,NULL,1193.98);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','IC',1814.87,1918.62,NULL,1222.97);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','ID',1378.29,1429.8,NULL,988.55);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','IE',1054.19,1061.26,NULL,894.33);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','IF',885.19,888.82,NULL,776.66);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','IG',751.08,751.07,NULL,1017.73);
INSERT INTO retail_prices VALUES ('feb23','nonhousehold','Total',1460.4,1517.97,NULL,1104.81);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','IA',1860.41,2333.55,NULL,1095.36);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','IB',2110.44,2220.44,NULL,1905.03);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','IC',1415.11,1504.61,NULL,1140.04);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','ID',1104.53,1100.11,NULL,1131.99);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','IE',849.73,809.75,NULL,1420.94);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','IF',774.22,774.22,NULL,NULL);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','IG',703.34,703.34,NULL,NULL);
INSERT INTO retail_prices VALUES ('apr23','nonhousehold','Total',1214.12,1168.92,NULL,1468.02);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','IA',1557.65,1618.67,NULL,1307.73);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','IB',1509.62,1672.74,NULL,949.26);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','IC',1178.96,1209.97,NULL,1012.69);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','ID',957.91,950.5,NULL,1053.53);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','IE',827.87,823.97,NULL,2802.41);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','IF',819.81,819.81,NULL,NULL);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','IG',721.74,721.74,NULL,NULL);
INSERT INTO retail_prices VALUES ('aug23','nonhousehold','Total',1043.78,1044.41,NULL,1037.26);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','IA',1145.41,1158.55,NULL,880.9);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','IB',1187.53,1241.84,NULL,871.5);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','IC',831.07,819.26,NULL,929.39);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','ID',700.19,691.24,NULL,920.17);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','IE',654.08,654.08,NULL,699.47);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','IF',676.47,655.48,NULL,1007.53);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','IG',502.91,502.91,NULL,NULL);
INSERT INTO retail_prices VALUES ('apr24','nonhousehold','Total',752.96,745.08,NULL,904.99);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','IA',1018.53,1024.66,NULL,866.09);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','IB',1036.33,1049.21,NULL,847.96);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','IC',825.03,823.68,NULL,839.51);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','ID',738.6,735.86,NULL,817.88);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','IE',672.49,672.95,NULL,763.63);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','IF',610.85,610.85,NULL,NULL);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','IG',561.98,561.98,NULL,NULL);
INSERT INTO retail_prices VALUES ('apr25','nonhousehold','Total',752.96,750.4,NULL,839.66);

-- ===== retail_concentration (Total tranche only; detailed tranche tables available in PDFs) =====
INSERT INTO retail_concentration VALUES ('feb23','total_pam','nonhousehold','Total',13,38,742,2760,82);
INSERT INTO retail_concentration VALUES ('feb23','total_pam','household','Total',35,64,2030,934,34);
INSERT INTO retail_concentration VALUES ('feb23','competitive','nonhousehold','Total',15,35,668,2376,82);
INSERT INTO retail_concentration VALUES ('feb23','competitive','household','Total',24,57,1664,625,34);
INSERT INTO retail_concentration VALUES ('apr23','total_pam','nonhousehold','Total',14,35,625,2473,83);
INSERT INTO retail_concentration VALUES ('apr23','total_pam','household','Total',28,61,1797,1116,33);
INSERT INTO retail_concentration VALUES ('apr23','competitive','nonhousehold','Total',17,30,575,2100,83);
INSERT INTO retail_concentration VALUES ('apr23','competitive','household','Total',22,59,1654,804,33);
INSERT INTO retail_concentration VALUES ('aug23','total_pam','nonhousehold','Total',13,31,571,2860,90);
INSERT INTO retail_concentration VALUES ('aug23','total_pam','household','Total',31,60,1864,1105,32);
INSERT INTO retail_concentration VALUES ('aug23','competitive','nonhousehold','Total',15,28,551,2609,90);
INSERT INTO retail_concentration VALUES ('aug23','competitive','household','Total',5,13,88,792,32);
INSERT INTO retail_concentration VALUES ('apr24','total_pam','nonhousehold','Total',9,25,460,2682,93);
INSERT INTO retail_concentration VALUES ('apr24','total_pam','household','Total',33,61,1914,1063,30);
INSERT INTO retail_concentration VALUES ('apr24','competitive','nonhousehold','Total',10,24,445,2549,93);
INSERT INTO retail_concentration VALUES ('apr24','competitive','household','Total',21,57,1629,767,29);
INSERT INTO retail_concentration VALUES ('apr25','total_pam','nonhousehold','Total',14,31,559,2610,95);
INSERT INTO retail_concentration VALUES ('apr25','total_pam','household','Total',30,73,2261,1157,26);
INSERT INTO retail_concentration VALUES ('apr25','competitive','nonhousehold','Total',14,31,554,2536,95);
INSERT INTO retail_concentration VALUES ('apr25','competitive','household','Total',36,73,2254,878,26);

-- ===== notable_figures =====
INSERT INTO notable_figures VALUES ('feb23','Enel Energie Muntenia S.A.',450,691.3,691.66,699.24,705.15,88,201,82);
INSERT INTO notable_figures VALUES ('apr23','CEZ Vânzare S.A.',450,475.68,475.68,481.24,505.22,59,NULL,83);
INSERT INTO notable_figures VALUES ('aug23','E.ON Energie România S.A.',450,541.33,541.22,502.18,519.32,77,211,90);
INSERT INTO notable_figures VALUES ('apr24','PPC Energie S.A.',450,329.1,329.29,298.35,265.78,201,213,93);
INSERT INTO notable_figures VALUES ('apr25','Premier Energy Furnizare S.A.',NULL,465.24,460.66,430.21,382.01,119,241,95);

-- ===== data_quality_notes =====
INSERT INTO data_quality_notes VALUES (1,'apr23','PCCB-LE-flex March pct','warning','Printed pct_internal_consumption for March 2023 PCCB-LE-flex is 1.0 in the PDF text extraction; volume 1201 GWh / SEN ~4672 implies ~25.7%. Stored as printed.');
INSERT INTO data_quality_notes VALUES (2,'aug23','retail competitive household Total concentration','warning','PDF prints C1=5, C3=13, HHI=88 for competitive household Total — internally implausible vs tranche values. Stored as printed; do not use Total without PDF visual check.');
INSERT INTO data_quality_notes VALUES (3,NULL,'import_pi pct_internal_consumption','warning','In several 2023–2024 reports, coupled-IDM import % of internal consumption appears misaligned with volumes (e.g. Feb23 import PI 41 GWh printed as 8.6%). Volumes and prices are trusted; % columns for import_pi in those months should be treated cautiously.');
INSERT INTO data_quality_notes VALUES (4,'apr25','MACEE','info','MACEE segment absent from April 2025 wholesale sales table (mechanism ended / no longer reported).');
INSERT INTO data_quality_notes VALUES (5,'apr25','PZU/PI venue split','info','From May/Nov 2024 BRM operates PI/PZU; April 2025 report splits DAM and IDM into OPCOM and BRM components.');
INSERT INTO data_quality_notes VALUES (6,'apr25','balancing methodology','info','From July 2024 PE volumes refer to engaged energy (angajată), not effectively delivered. Comparability with earlier PE volumes is limited.');
INSERT INTO data_quality_notes VALUES (7,NULL,'retail prices','info','Retail average prices are contractual (energy + supply + network tariffs), exclude taxes/VAT, and do NOT equal capped final invoices under OUG 27/2022 support scheme.');
INSERT INTO data_quality_notes VALUES (8,NULL,'wholesale % of consumption','info','Wholesale component % of SEN internal consumption can sum well above 100% because of resales and portfolio adjustments.');
INSERT INTO data_quality_notes VALUES (9,'apr25','nonhousehold competitive consumption Total','info','Detailed table prints competitive total 2535.25 GWh in one place; physical balance and aggregate structure use 2535.51 GWh. SQL stores 2535.51 from physical/aggregate tables.');
INSERT INTO data_quality_notes VALUES (10,'apr23','household DD SU clients','info','Extracted SU for DD as 75919 (consistent with Total); one OCR token read 753919 — corrected by arithmetic check against Total.');

-- ===== BATCH 2: dec23, aug24, aug25 =====
-- Added 2026-08-08 from Monit-dec23, Monit-aug24, Monit-aug25

-- reports
INSERT INTO reports VALUES ('dec23',2023,12,'2023-12-01','2023-11-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA DECEMBRIE 2023','Monit-dec23.pdf',53,'99 Attachments/source-anre/monitorizare-ee/Monit-dec23.pdf');
INSERT INTO reports VALUES ('aug24',2024,8,'2024-08-01','2024-07-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA AUGUST 2024','Monit-aug24.pdf',46,'99 Attachments/source-anre/monitorizare-ee/Monit-aug24.pdf');
INSERT INTO reports VALUES ('aug25',2025,8,'2025-08-01','2025-07-01','RAPORT PRIVIND REZULTATELE MONITORIZĂRII PIEŢEI DE ENERGIE ELECTRICĂ ÎN LUNA AUGUST 2025','Monit-aug25.pdf',48,'99 Attachments/source-anre/monitorizare-ee/Monit-aug25.pdf');

-- physical_balance
INSERT INTO physical_balance VALUES ('dec23','electricity_produced_pi_gt_5mw','GWh',4613.12,5250.38);
INSERT INTO physical_balance VALUES ('aug24','electricity_produced_pi_gt_5mw','GWh',4048.87,3727.12);
INSERT INTO physical_balance VALUES ('aug25','electricity_produced_pi_gt_5mw','GWh',3882.17,3792.35);
INSERT INTO physical_balance VALUES ('dec23','electricity_delivered_networks_pi_gt_5mw','GWh',4386.41,4983.37);
INSERT INTO physical_balance VALUES ('aug24','electricity_delivered_networks_pi_gt_5mw','GWh',3822.95,3515.9);
INSERT INTO physical_balance VALUES ('aug25','electricity_delivered_networks_pi_gt_5mw','GWh',3659.32,3583.31);
INSERT INTO physical_balance VALUES ('dec23','commercial_exchanges_import_incl_transit','GWh',1084.12,1342.68);
INSERT INTO physical_balance VALUES ('aug24','commercial_exchanges_import_incl_transit','GWh',1340.81,1323.26);
INSERT INTO physical_balance VALUES ('aug25','commercial_exchanges_import_incl_transit','GWh',1778.38,1525.77);
INSERT INTO physical_balance VALUES ('dec23','commercial_exchanges_export_incl_transit','GWh',1102.98,1015.1);
INSERT INTO physical_balance VALUES ('aug24','commercial_exchanges_export_incl_transit','GWh',769.4,785.75);
INSERT INTO physical_balance VALUES ('aug25','commercial_exchanges_export_incl_transit','GWh',1236.49,1273.02);
INSERT INTO physical_balance VALUES ('dec23','sen_internal_consumption','GWh',4611.22,4930.32);
INSERT INTO physical_balance VALUES ('aug24','sen_internal_consumption','GWh',4797.48,4419.29);
INSERT INTO physical_balance VALUES ('aug25','sen_internal_consumption','GWh',4566.77,4154.47);
INSERT INTO physical_balance VALUES ('dec23','household_consumption_total','GWh',1145.12,1323.81);
INSERT INTO physical_balance VALUES ('aug24','household_consumption_total','GWh',1239.81,1204.43);
INSERT INTO physical_balance VALUES ('aug25','household_consumption_total','GWh',1188.93,1156.9);
INSERT INTO physical_balance VALUES ('dec23','household_consumption_competitive','GWh',818.98,953.69);
INSERT INTO physical_balance VALUES ('aug24','household_consumption_competitive','GWh',913.81,876.9);
INSERT INTO physical_balance VALUES ('aug25','household_consumption_competitive','GWh',911.12,882.21);
INSERT INTO physical_balance VALUES ('dec23','household_consumption_su','GWh',325.03,368.94);
INSERT INTO physical_balance VALUES ('aug24','household_consumption_su','GWh',324.97,326.62);
INSERT INTO physical_balance VALUES ('aug25','household_consumption_su','GWh',276.53,273.67);
INSERT INTO physical_balance VALUES ('dec23','household_consumption_ui','GWh',1.11,1.18);
INSERT INTO physical_balance VALUES ('aug24','household_consumption_ui','GWh',1.03,0.91);
INSERT INTO physical_balance VALUES ('aug25','household_consumption_ui','GWh',1.27,1.03);
INSERT INTO physical_balance VALUES ('dec23','nonhousehold_consumption_total','GWh',2767.15,2749.38);
INSERT INTO physical_balance VALUES ('aug24','nonhousehold_consumption_total','GWh',3169.1,2883.52);
INSERT INTO physical_balance VALUES ('aug25','nonhousehold_consumption_total','GWh',3109.79,2934.03);
INSERT INTO physical_balance VALUES ('dec23','nonhousehold_consumption_competitive','GWh',2556.2,2538.14);
INSERT INTO physical_balance VALUES ('aug24','nonhousehold_consumption_competitive','GWh',3035.2,2760.5);
INSERT INTO physical_balance VALUES ('aug25','nonhousehold_consumption_competitive','GWh',3061.67,2890.73);
INSERT INTO physical_balance VALUES ('dec23','nonhousehold_consumption_ui','GWh',210.95,211.24);
INSERT INTO physical_balance VALUES ('aug24','nonhousehold_consumption_ui','GWh',133.89,123.02);
INSERT INTO physical_balance VALUES ('aug25','nonhousehold_consumption_ui','GWh',48.12,43.3);
INSERT INTO physical_balance VALUES ('dec23','cpt_transmission','GWh',95.66,92.08);
INSERT INTO physical_balance VALUES ('aug24','cpt_transmission','GWh',73.46,60.74);
INSERT INTO physical_balance VALUES ('aug25','cpt_transmission','GWh',66.46,63.16);
INSERT INTO physical_balance VALUES ('dec23','cpt_distribution','GWh',418.64,567.86);
INSERT INTO physical_balance VALUES ('aug24','cpt_distribution','GWh',330.38,292.35);
INSERT INTO physical_balance VALUES ('aug25','cpt_distribution','GWh',275.11,259.03);

-- wholesale_transactions
INSERT INTO wholesale_transactions VALUES ('dec23','bilateral_negotiated_direct_total','compare',734,720.82,15.9);
INSERT INTO wholesale_transactions VALUES ('dec23','bilateral_negotiated_direct_total','report',743,693.8,15.1);
INSERT INTO wholesale_transactions VALUES ('aug24','bilateral_negotiated_direct_total','compare',574,499.55,12);
INSERT INTO wholesale_transactions VALUES ('aug24','bilateral_negotiated_direct_total','report',615,502.03,13.9);
INSERT INTO wholesale_transactions VALUES ('aug25','bilateral_negotiated_direct_total','compare',1415,537.66,31);
INSERT INTO wholesale_transactions VALUES ('aug25','bilateral_negotiated_direct_total','report',1444,515.32,34.8);
INSERT INTO wholesale_transactions VALUES ('dec23','bilateral_negotiated','compare',705,732.02,15.3);
INSERT INTO wholesale_transactions VALUES ('dec23','bilateral_negotiated','report',713,703.96,14.5);
INSERT INTO wholesale_transactions VALUES ('aug24','bilateral_negotiated','compare',556,502.83,11.6);
INSERT INTO wholesale_transactions VALUES ('aug24','bilateral_negotiated','report',598,505.02,13.5);
INSERT INTO wholesale_transactions VALUES ('aug25','bilateral_negotiated','compare',1382,542.07,30.3);
INSERT INTO wholesale_transactions VALUES ('aug25','bilateral_negotiated','report',1413,518.9,34);
INSERT INTO wholesale_transactions VALUES ('dec23','bilateral_negotiated_aggregator','compare',29,445.8,0.6);
INSERT INTO wholesale_transactions VALUES ('dec23','bilateral_negotiated_aggregator','report',29,445.8,0.6);
INSERT INTO wholesale_transactions VALUES ('aug24','bilateral_negotiated_aggregator','compare',18,399.29,0.4);
INSERT INTO wholesale_transactions VALUES ('aug24','bilateral_negotiated_aggregator','report',17,399.15,0.4);
INSERT INTO wholesale_transactions VALUES ('aug25','bilateral_negotiated_aggregator','compare',34,355.78,0.7);
INSERT INTO wholesale_transactions VALUES ('aug25','bilateral_negotiated_aggregator','report',31,350.35,0.7);
INSERT INTO wholesale_transactions VALUES ('dec23','export_contracts','compare',235,662.24,5.1);
INSERT INTO wholesale_transactions VALUES ('dec23','export_contracts','report',343,553.02,7);
INSERT INTO wholesale_transactions VALUES ('aug24','export_contracts','compare',337,697.85,7);
INSERT INTO wholesale_transactions VALUES ('aug24','export_contracts','report',225,616.78,5.1);
INSERT INTO wholesale_transactions VALUES ('aug25','export_contracts','compare',339,545.74,7.4);
INSERT INTO wholesale_transactions VALUES ('aug25','export_contracts','report',409,422.37,9.8);
INSERT INTO wholesale_transactions VALUES ('dec23','centralized_bilateral_total','compare',1275,904.67,27.6);
INSERT INTO wholesale_transactions VALUES ('dec23','centralized_bilateral_total','report',1315,906.07,26.7);
INSERT INTO wholesale_transactions VALUES ('aug24','centralized_bilateral_total','compare',935,496.83,19.5);
INSERT INTO wholesale_transactions VALUES ('aug24','centralized_bilateral_total','report',1019,506.07,23.1);
INSERT INTO wholesale_transactions VALUES ('aug25','centralized_bilateral_total','compare',2029,541.94,44.4);
INSERT INTO wholesale_transactions VALUES ('aug25','centralized_bilateral_total','report',1947,537.68,46.9);
INSERT INTO wholesale_transactions VALUES ('dec23','PCCB-LE-flex','compare',908,823.89,19.7);
INSERT INTO wholesale_transactions VALUES ('dec23','PCCB-LE-flex','report',932,826.66,18.9);
INSERT INTO wholesale_transactions VALUES ('aug24','PCCB-LE-flex','compare',725,493.45,15.1);
INSERT INTO wholesale_transactions VALUES ('aug24','PCCB-LE-flex','report',759,503.84,17.2);
INSERT INTO wholesale_transactions VALUES ('aug25','PCCB-LE-flex','compare',1086,541.15,23.8);
INSERT INTO wholesale_transactions VALUES ('aug25','PCCB-LE-flex','report',1037,539.44,25);
INSERT INTO wholesale_transactions VALUES ('dec23','PCCB-NC','compare',31,1055.17,0.7);
INSERT INTO wholesale_transactions VALUES ('dec23','PCCB-NC','report',37,1003.99,0.7);
INSERT INTO wholesale_transactions VALUES ('aug24','PCCB-NC','compare',7,1625.81,0.2);
INSERT INTO wholesale_transactions VALUES ('aug24','PCCB-NC','report',16,1047.53,0.4);
INSERT INTO wholesale_transactions VALUES ('aug25','PCCB-NC','compare',152,602.32,3.3);
INSERT INTO wholesale_transactions VALUES ('aug25','PCCB-NC','report',133,594.8,25);
INSERT INTO wholesale_transactions VALUES ('dec23','PC-OTC','compare',262,1212.6,5.7);
INSERT INTO wholesale_transactions VALUES ('dec23','PC-OTC','report',271,1212.6,5.5);
INSERT INTO wholesale_transactions VALUES ('aug24','PC-OTC','compare',149,532.15,3.1);
INSERT INTO wholesale_transactions VALUES ('aug24','PC-OTC','report',179,534.52,4.1);
INSERT INTO wholesale_transactions VALUES ('aug25','PC-OTC','compare',505,561.64,11.1);
INSERT INTO wholesale_transactions VALUES ('aug25','PC-OTC','report',481,553.62,11.6);
INSERT INTO wholesale_transactions VALUES ('dec23','PCE-ESRE-CV','compare',31,397.85,0.7);
INSERT INTO wholesale_transactions VALUES ('dec23','PCE-ESRE-CV','report',31,384.94,0.6);
INSERT INTO wholesale_transactions VALUES ('aug24','PCE-ESRE-CV','compare',46,257.99,1);
INSERT INTO wholesale_transactions VALUES ('aug24','PCE-ESRE-CV','report',49,259.88,1.1);
INSERT INTO wholesale_transactions VALUES ('aug25','PCE-ESRE-CV','compare',62,283.79,1.5);
INSERT INTO wholesale_transactions VALUES ('aug25','PCE-ESRE-CV','report',64,288.83,1.5);
INSERT INTO wholesale_transactions VALUES ('dec23','PMC-BRM','compare',43,984.61,0.9);
INSERT INTO wholesale_transactions VALUES ('dec23','PMC-BRM','report',45,982.65,0.9);
INSERT INTO wholesale_transactions VALUES ('aug24','PMC-BRM','compare',7,472.75,0.2);
INSERT INTO wholesale_transactions VALUES ('aug24','PMC-BRM','report',16,493.27,0.3);
INSERT INTO wholesale_transactions VALUES ('aug25','PMC-BRM','compare',19,550.32,0.4);
INSERT INTO wholesale_transactions VALUES ('aug25','PMC-BRM','report',19,551.99,0.4);
INSERT INTO wholesale_transactions VALUES ('aug25','PCT-BRM','compare',205,530.45,4.1);
INSERT INTO wholesale_transactions VALUES ('aug25','PCT-BRM','report',213,530.41,4.3);
INSERT INTO wholesale_transactions VALUES ('dec23','MACEE','compare',1385,450,30);
INSERT INTO wholesale_transactions VALUES ('dec23','MACEE','report',1656,450,33.6);
INSERT INTO wholesale_transactions VALUES ('aug24','MACEE','compare',1135,443.32,23.6);
INSERT INTO wholesale_transactions VALUES ('aug24','MACEE','report',885,449.87,20);
INSERT INTO wholesale_transactions VALUES ('dec23','DAM_PZU_total','compare',1503,527.2,32.6);
INSERT INTO wholesale_transactions VALUES ('dec23','DAM_PZU_total','report',1566,423.01,31.8);
INSERT INTO wholesale_transactions VALUES ('aug24','DAM_PZU_total','compare',1730,837.68,36.1);
INSERT INTO wholesale_transactions VALUES ('aug24','DAM_PZU_total','report',1462,707.58,33.1);
INSERT INTO wholesale_transactions VALUES ('aug25','DAM_PZU_total','compare',2034,542.58,44.5);
INSERT INTO wholesale_transactions VALUES ('aug25','DAM_PZU_total','report',1859,418.45,44.7);
INSERT INTO wholesale_transactions VALUES ('dec23','DAM_PZU_OPCOM','compare',1503,527.2,32.6);
INSERT INTO wholesale_transactions VALUES ('dec23','DAM_PZU_OPCOM','report',1566,423.01,31.8);
INSERT INTO wholesale_transactions VALUES ('aug24','DAM_PZU_OPCOM','compare',1730,837.68,36.1);
INSERT INTO wholesale_transactions VALUES ('aug24','DAM_PZU_OPCOM','report',1462,707.58,33.1);
INSERT INTO wholesale_transactions VALUES ('aug25','DAM_PZU_OPCOM','compare',1304,527.07,28.5);
INSERT INTO wholesale_transactions VALUES ('aug25','DAM_PZU_OPCOM','report',1201,409.53,28.9);
INSERT INTO wholesale_transactions VALUES ('aug25','DAM_PZU_BRM','compare',730,570.29,16);
INSERT INTO wholesale_transactions VALUES ('aug25','DAM_PZU_BRM','report',658,434.75,15.8);
INSERT INTO wholesale_transactions VALUES ('dec23','IDM_PI_total','compare',185,561.46,4);
INSERT INTO wholesale_transactions VALUES ('dec23','IDM_PI_total','report',146,426.95,3);
INSERT INTO wholesale_transactions VALUES ('aug25','IDM_PI_total','compare',447,525.43,9.8);
INSERT INTO wholesale_transactions VALUES ('aug25','IDM_PI_total','report',414,348.52,10);
INSERT INTO wholesale_transactions VALUES ('dec23','IDM_PI_OPCOM','compare',185,561.46,4);
INSERT INTO wholesale_transactions VALUES ('dec23','IDM_PI_OPCOM','report',146,426.95,3);
INSERT INTO wholesale_transactions VALUES ('aug24','IDM_PI_OPCOM','compare',153,694.95,3.2);
INSERT INTO wholesale_transactions VALUES ('aug24','IDM_PI_OPCOM','report',163,656.24,3.7);
INSERT INTO wholesale_transactions VALUES ('aug25','IDM_PI_OPCOM','compare',191,506.48,4.2);
INSERT INTO wholesale_transactions VALUES ('aug25','IDM_PI_OPCOM','report',164,306.19,3.9);
INSERT INTO wholesale_transactions VALUES ('aug24','IDM_PI_BRM','compare',9,897.63,0.2);
INSERT INTO wholesale_transactions VALUES ('aug24','IDM_PI_BRM','report',10,635.84,0.2);
INSERT INTO wholesale_transactions VALUES ('aug25','IDM_PI_BRM','compare',256,539.56,5.6);
INSERT INTO wholesale_transactions VALUES ('aug25','IDM_PI_BRM','report',250,376.2,6);

-- balancing_market
INSERT INTO balancing_market VALUES ('dec23','compare',162,3.5,115,917.64,48,767.55,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('dec23','report',164,3.3,74,597.47,90,438.01,'effectively delivered balancing energy');
INSERT INTO balancing_market VALUES ('aug24','compare',167,3.5,98,662.79,69,523.86,'engaged/activated balancing energy (angajată) per Ordin ANRE 127/2021');
INSERT INTO balancing_market VALUES ('aug24','report',114,2.6,47,437.41,67,317,'engaged/activated balancing energy (angajată) per Ordin ANRE 127/2021');
INSERT INTO balancing_market VALUES ('aug25','compare',62,1.4,26,503.81,36,432.77,'engaged/activated balancing energy (angajată) per Ordin ANRE 127/2021; product labels RRFa/RRFm/RI');
INSERT INTO balancing_market VALUES ('aug25','report',54,1.3,16,224.41,38,124.14,'engaged/activated balancing energy (angajată) per Ordin ANRE 127/2021; product labels RRFa/RRFm/RI');

-- import_export_commercial
INSERT INTO import_export_commercial VALUES ('dec23','export','total','compare',688,468.26,14.9);
INSERT INTO import_export_commercial VALUES ('dec23','export','total','report',876,392.72,17.8);
INSERT INTO import_export_commercial VALUES ('dec23','export','pzu','compare',394,341.61,8.5);
INSERT INTO import_export_commercial VALUES ('dec23','export','pzu','report',477,280.38,9.7);
INSERT INTO import_export_commercial VALUES ('dec23','export','pi','compare',60,540.21,1.3);
INSERT INTO import_export_commercial VALUES ('dec23','export','pi','report',56,368.27,1.1);
INSERT INTO import_export_commercial VALUES ('dec23','import','total','compare',670,677.49,14.5);
INSERT INTO import_export_commercial VALUES ('dec23','import','total','report',548,616.41,11.1);
INSERT INTO import_export_commercial VALUES ('dec23','import','pzu','compare',173,733.37,3.8);
INSERT INTO import_export_commercial VALUES ('dec23','import','pzu','report',138,654.03,2.8);
INSERT INTO import_export_commercial VALUES ('dec23','import','pi','compare',115,567.29,25);
INSERT INTO import_export_commercial VALUES ('dec23','import','pi','report',83,460.89,16.9);
INSERT INTO import_export_commercial VALUES ('aug24','export','total','compare',412,664.97,8.6);
INSERT INTO import_export_commercial VALUES ('aug24','export','total','report',352,563.46,8);
INSERT INTO import_export_commercial VALUES ('aug24','export','pzu','compare',13,401.79,0.3);
INSERT INTO import_export_commercial VALUES ('aug24','export','pzu','report',45,326.98,1);
INSERT INTO import_export_commercial VALUES ('aug24','export','pi','compare',61,540.21,1.3);
INSERT INTO import_export_commercial VALUES ('aug24','export','pi','report',83,546.62,1.9);
INSERT INTO import_export_commercial VALUES ('aug24','import','total','compare',984,852.94,20.5);
INSERT INTO import_export_commercial VALUES ('aug24','import','total','report',890,713.59,20.2);
INSERT INTO import_export_commercial VALUES ('aug24','import','pzu','compare',626,934.97,13);
INSERT INTO import_export_commercial VALUES ('aug24','import','pzu','report',418,836.81,9.5);
INSERT INTO import_export_commercial VALUES ('aug24','import','pi','compare',91,783.46,1.9);
INSERT INTO import_export_commercial VALUES ('aug24','import','pi','report',82,737.39,1.8);
INSERT INTO import_export_commercial VALUES ('aug25','export','total','compare',823,523.68,18);
INSERT INTO import_export_commercial VALUES ('aug25','export','total','report',966,388.5,23.2);
INSERT INTO import_export_commercial VALUES ('aug25','export','pzu','compare',280,503.72,6.1);
INSERT INTO import_export_commercial VALUES ('aug25','export','pzu','report',353,388.96,8.5);
INSERT INTO import_export_commercial VALUES ('aug25','export','pi','compare',204,514.41,4.5);
INSERT INTO import_export_commercial VALUES ('aug25','export','pi','report',203,319.58,4.9);
INSERT INTO import_export_commercial VALUES ('aug25','import','total','compare',1364,577.91,29.9);
INSERT INTO import_export_commercial VALUES ('aug25','import','total','report',1220,488.37,29.4);
INSERT INTO import_export_commercial VALUES ('aug25','import','pzu','compare',607,594.74,13.3);
INSERT INTO import_export_commercial VALUES ('aug25','import','pzu','report',456,471.02,11);
INSERT INTO import_export_commercial VALUES ('aug25','import','pi','compare',228,529.95,5);
INSERT INTO import_export_commercial VALUES ('aug25','import','pi','report',196,377.61,4.7);

-- generation_mix
INSERT INTO generation_mix VALUES ('dec23','carbune',12.71);
INSERT INTO generation_mix VALUES ('dec23','pacura',0.11);
INSERT INTO generation_mix VALUES ('dec23','gaz',24.29);
INSERT INTO generation_mix VALUES ('dec23','nuclear',18.78);
INSERT INTO generation_mix VALUES ('dec23','hidro',28.91);
INSERT INTO generation_mix VALUES ('dec23','eolian',13.92);
INSERT INTO generation_mix VALUES ('dec23','solar',0.7);
INSERT INTO generation_mix VALUES ('dec23','biomasa',0.54);
INSERT INTO generation_mix VALUES ('dec23','deseuri',0.03);
INSERT INTO generation_mix VALUES ('dec23','stocare',0.01);
INSERT INTO generation_mix VALUES ('aug24','carbune',15.01);
INSERT INTO generation_mix VALUES ('aug24','pacura',0.1);
INSERT INTO generation_mix VALUES ('aug24','gaz',22.65);
INSERT INTO generation_mix VALUES ('aug24','nuclear',24.46);
INSERT INTO generation_mix VALUES ('aug24','hidro',23.44);
INSERT INTO generation_mix VALUES ('aug24','eolian',9.74);
INSERT INTO generation_mix VALUES ('aug24','solar',3.66);
INSERT INTO generation_mix VALUES ('aug24','biomasa',0.89);
INSERT INTO generation_mix VALUES ('aug24','deseuri',0.02);
INSERT INTO generation_mix VALUES ('aug24','stocare',0.03);
INSERT INTO generation_mix VALUES ('aug25','carbune',13.57);
INSERT INTO generation_mix VALUES ('aug25','pacura',0.01);
INSERT INTO generation_mix VALUES ('aug25','gaz',19.62);
INSERT INTO generation_mix VALUES ('aug25','nuclear',25.04);
INSERT INTO generation_mix VALUES ('aug25','hidro',23.58);
INSERT INTO generation_mix VALUES ('aug25','eolian',9.93);
INSERT INTO generation_mix VALUES ('aug25','solar',7.32);
INSERT INTO generation_mix VALUES ('aug25','biomasa',0.58);
INSERT INTO generation_mix VALUES ('aug25','deseuri',0.02);
INSERT INTO generation_mix VALUES ('aug25','stocare',0.31);

-- concentration_indicators
INSERT INTO concentration_indicators VALUES ('dec23','energy_delivered_networks',NULL,29.08,61.18,1550);
INSERT INTO concentration_indicators VALUES ('aug24','energy_delivered_networks',NULL,24.46,65.46,1656);
INSERT INTO concentration_indicators VALUES ('aug25','energy_delivered_networks',NULL,25.04,62.21,1529);
INSERT INTO concentration_indicators VALUES ('dec23','PZU','sell',22.96,50.77,1042);
INSERT INTO concentration_indicators VALUES ('dec23','PZU','buy',17.85,31.92,612);
INSERT INTO concentration_indicators VALUES ('aug24','PZU','sell',27.39,46.18,1068);
INSERT INTO concentration_indicators VALUES ('aug24','PZU','buy',13.11,26.26,447);
INSERT INTO concentration_indicators VALUES ('aug25','PZU_OPCOM','sell',23.33,46.55,999);
INSERT INTO concentration_indicators VALUES ('aug25','PZU_OPCOM','buy',15.02,44.1,821);
INSERT INTO concentration_indicators VALUES ('aug25','PZU_BRM','sell',19.69,45.81,982.19);
INSERT INTO concentration_indicators VALUES ('aug25','PZU_BRM','buy',24.90,44.10,1089.43);

-- retail_clients
INSERT INTO retail_clients VALUES ('dec23','household','DA',4094617,2545093,1544169,5355);
INSERT INTO retail_clients VALUES ('dec23','household','DB',3169522,2068772,1097054,3696);
INSERT INTO retail_clients VALUES ('dec23','household','DC',1045952,749757,295908,287);
INSERT INTO retail_clients VALUES ('dec23','household','DD',336307,263272,72972,63);
INSERT INTO retail_clients VALUES ('dec23','household','DE',46210,37846,8360,4);
INSERT INTO retail_clients VALUES ('dec23','household','Total',8692608,5664740,3018463,9405);
INSERT INTO retail_clients VALUES ('aug24','household','DA',4044767,2548319,1491356,5092);
INSERT INTO retail_clients VALUES ('aug24','household','DB',3228084,2135769,1088106,4209);
INSERT INTO retail_clients VALUES ('aug24','household','DC',1078356,769682,308256,418);
INSERT INTO retail_clients VALUES ('aug24','household','DD',314517,251498,62925,94);
INSERT INTO retail_clients VALUES ('aug24','household','DE',42902,35602,7282,18);
INSERT INTO retail_clients VALUES ('aug24','household','Total',8708626,5740870,2957925,9831);
INSERT INTO retail_clients VALUES ('aug25','household','DA',4113519,2754748,1353725,5046);
INSERT INTO retail_clients VALUES ('aug25','household','DB',3207546,2240668,963412,3466);
INSERT INTO retail_clients VALUES ('aug25','household','DC',1110252,841193,268507,552);
INSERT INTO retail_clients VALUES ('aug25','household','DD',330338,276497,53728,113);
INSERT INTO retail_clients VALUES ('aug25','household','DE',40661,34757,5892,12);
INSERT INTO retail_clients VALUES ('aug25','household','Total',8802316,6147863,2645264,9189);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','IA',238485,232188,NULL,6297);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','IB',54709,47712,NULL,6997);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','IC',6627,6153,NULL,474);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','ID',2325,2250,NULL,75);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','IE',155,155,NULL,0);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','IF',23,23,NULL,0);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','IG',32,32,NULL,0);
INSERT INTO retail_clients VALUES ('dec23','nonhousehold','Total',302356,288513,NULL,13843);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','IA',239351,234940,NULL,4411);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','IB',52928,47639,NULL,5289);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','IC',6526,6116,NULL,410);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','ID',2357,2289,NULL,68);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','IE',152,152,NULL,0);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','IF',29,27,NULL,2);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','IG',34,34,NULL,NULL);
INSERT INTO retail_clients VALUES ('aug24','nonhousehold','Total',301377,291197,NULL,10180);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','IA',237529,233009,NULL,4520);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','IB',52731,50054,NULL,2677);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','IC',6695,6485,NULL,210);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','ID',2463,2421,NULL,42);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','IE',189,188,NULL,1);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','IF',28,28,NULL,NULL);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','IG',36,36,NULL,NULL);
INSERT INTO retail_clients VALUES ('aug25','nonhousehold','Total',299671,292221,NULL,7450);

-- retail_consumption
INSERT INTO retail_consumption VALUES ('dec23','household','DA',211.36,133.84,76.93,0.59);
INSERT INTO retail_consumption VALUES ('dec23','household','DB',495.18,332.55,162.21,0.42);
INSERT INTO retail_consumption VALUES ('dec23','household','DC',305.44,217.87,87.48,0.09);
INSERT INTO retail_consumption VALUES ('dec23','household','DD',124.16,89.58,34.53,0.05);
INSERT INTO retail_consumption VALUES ('dec23','household','DE',187.67,179.85,7.8,0.03);
INSERT INTO retail_consumption VALUES ('dec23','household','Total',1323.81,953.69,368.94,1.18);
INSERT INTO retail_consumption VALUES ('aug24','household','DA',201.4,130.04,71.1,0.26);
INSERT INTO retail_consumption VALUES ('aug24','household','DB',504.99,355.77,148.82,0.4);
INSERT INTO retail_consumption VALUES ('aug24','household','DC',304.77,229.35,75.32,0.1);
INSERT INTO retail_consumption VALUES ('aug24','household','DD',140.63,115.51,25.02,0.1);
INSERT INTO retail_consumption VALUES ('aug24','household','DE',52.64,46.24,6.35,0.04);
INSERT INTO retail_consumption VALUES ('aug24','household','Total',1204.43,876.9,326.62,0.91);
INSERT INTO retail_consumption VALUES ('aug25','household','DA',210.32,149.75,60.17,0.4);
INSERT INTO retail_consumption VALUES ('aug25','household','DB',470.15,344.42,125.34,0.38);
INSERT INTO retail_consumption VALUES ('aug25','household','DC',301.92,238.58,63.14,0.2);
INSERT INTO retail_consumption VALUES ('aug25','household','DD',132.03,111.43,20.57,0.04);
INSERT INTO retail_consumption VALUES ('aug25','household','DE',42.48,38.02,4.44,0.01);
INSERT INTO retail_consumption VALUES ('aug25','household','Total',1156.9,882.21,273.67,1.03);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','IA',197.28,159.32,NULL,37.96);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','IB',502.75,401.54,NULL,101.21);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','IC',290.91,253.82,NULL,37.09);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','ID',599.59,564.61,NULL,34.98);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','IE',358.72,358.72,NULL,0);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','IF',146.72,146.72,NULL,0);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','IG',653.41,653.41,NULL,0);
INSERT INTO retail_consumption VALUES ('dec23','nonhousehold','Total',2749.38,2538.14,NULL,211.24);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','IA',180.4,172.47,NULL,7.93);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','IB',515.66,451.19,NULL,64.47);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','IC',292.35,266.87,NULL,25.48);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','ID',614.99,595.15,NULL,19.84);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','IE',337.45,337.45,NULL,0);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','IF',193.6,188.3,NULL,5.3);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','IG',749.07,749.07,NULL,NULL);
INSERT INTO retail_consumption VALUES ('aug24','nonhousehold','Total',2883.52,2760.5,NULL,123.02);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','IA',221.46,216.68,NULL,4.78);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','IB',493.02,477.95,NULL,15.08);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','IC',289.21,276.2,NULL,13);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','ID',611.14,600.71,NULL,10.43);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','IE',368.02,368.02,NULL,0.0024);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','IF',174.39,174.39,NULL,NULL);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','IG',776.78,776.78,NULL,NULL);
INSERT INTO retail_consumption VALUES ('aug25','nonhousehold','Total',2934.03,2890.73,NULL,43.3);

-- retail_prices
INSERT INTO retail_prices VALUES ('dec23','household','DA',1242.77,1417.68,941.04,904.12);
INSERT INTO retail_prices VALUES ('dec23','household','DB',1299.55,1462.42,966.89,823.11);
INSERT INTO retail_prices VALUES ('dec23','household','DC',1384.8,1539.75,999.26,1010.85);
INSERT INTO retail_prices VALUES ('dec23','household','DD',1447.29,1621.15,996.86,1000.37);
INSERT INTO retail_prices VALUES ('dec23','household','DE',661.39,646.61,1001.11,1004.81);
INSERT INTO retail_prices VALUES ('dec23','household','Total',1233.54,1334.87,972.7,889.92);
INSERT INTO retail_prices VALUES ('aug24','household','DA',981.76,1020.43,912.31,635.65);
INSERT INTO retail_prices VALUES ('aug24','household','DB',1024.77,1057.14,948.42,638.41);
INSERT INTO retail_prices VALUES ('aug24','household','DC',993.35,993.23,994.05,744.99);
INSERT INTO retail_prices VALUES ('aug24','household','DD',864.48,838.45,984.52,898.02);
INSERT INTO retail_prices VALUES ('aug24','household','DE',776.56,747.13,989.84,924.2);
INSERT INTO retail_prices VALUES ('aug24','household','Total',980.06,989.83,954.65,691.78);
INSERT INTO retail_prices VALUES ('aug25','household','DA',1164.96,1136.7,1235.97,1062.94);
INSERT INTO retail_prices VALUES ('aug25','household','DB',1163.17,1139.41,1228.73,1078.95);
INSERT INTO retail_prices VALUES ('aug25','household','DC',1111.21,1080.88,1225.85,1100.57);
INSERT INTO retail_prices VALUES ('aug25','household','DD',1030.33,994.45,1224.64,1064.3);
INSERT INTO retail_prices VALUES ('aug25','household','DE',972.71,943.39,1223.18,1142.84);
INSERT INTO retail_prices VALUES ('aug25','household','Total',1127.78,1096.36,1229.26,1076.97);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','IA',1272.45,1336.31,NULL,1004.4);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','IB',1431.68,1558.78,NULL,927.43);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','IC',999.17,991.49,NULL,1051.67);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','ID',898.42,889.35,NULL,1044.82);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','IE',788.7,788.7,NULL,NULL);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','IF',862.76,862.76,NULL,NULL);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','IG',674.46,674.46,NULL,NULL);
INSERT INTO retail_prices VALUES ('dec23','nonhousehold','Total',963.99,962.44,NULL,982.52);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','IA',1054.76,1065.78,NULL,815.06);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','IB',1087.46,1131.36,NULL,780.27);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','IC',836.08,843,NULL,763.62);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','ID',769.7,769.53,NULL,774.68);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','IE',766.81,766.81,NULL,NULL);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','IF',729.02,728.58,NULL,744.86);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','IG',576.67,576.67,NULL,NULL);
INSERT INTO retail_prices VALUES ('aug24','nonhousehold','Total',797.87,798.82,NULL,776.64);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','IA',983.39,982.9,NULL,1005.95);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','IB',993.27,992.9,NULL,1004.86);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','IC',859.48,852.98,NULL,997.53);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','ID',760.04,754.86,NULL,1058.69);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','IE',688.74,688.74,NULL,883.22);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','IF',628.03,628.03,NULL,NULL);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','IG',589.21,589.21,NULL,NULL);
INSERT INTO retail_prices VALUES ('aug25','nonhousehold','Total',763.88,760.1,NULL,1015.74);

-- retail_concentration
INSERT INTO retail_concentration VALUES ('dec23','total_pam','nonhousehold','Total',13,30,559,2749,89);
INSERT INTO retail_concentration VALUES ('dec23','total_pam','household','Total',33,62,1945,1324,NULL);
INSERT INTO retail_concentration VALUES ('dec23','competitive','nonhousehold','Total',14,29,533,2538,NULL);
INSERT INTO retail_concentration VALUES ('dec23','competitive','household','Total',23,58,1668,954,NULL);
INSERT INTO retail_concentration VALUES ('aug24','total_pam','nonhousehold','Total',12,27,509,2884,91);
INSERT INTO retail_concentration VALUES ('aug24','total_pam','household','Total',31,61,1834,1204,NULL);
INSERT INTO retail_concentration VALUES ('aug24','competitive','nonhousehold','Total',13,26,500,2761,NULL);
INSERT INTO retail_concentration VALUES ('aug24','competitive','household','Total',20,56,1605,877,NULL);
INSERT INTO retail_concentration VALUES ('aug25','total_pam','nonhousehold','Total',15,33,606,2934,99);
INSERT INTO retail_concentration VALUES ('aug25','total_pam','household','Total',30,74,2223,1157,27);
INSERT INTO retail_concentration VALUES ('aug25','competitive','nonhousehold','Total',16,33,607,2891,99);
INSERT INTO retail_concentration VALUES ('aug25','competitive','household','Total',34,74,2207,882,27);

-- notable_figures
INSERT INTO notable_figures VALUES ('dec23','Enel Energie Muntenia S.A.',450,423.01,422.75,402.35,426.95,285,212,89);
INSERT INTO notable_figures VALUES ('aug24','Electrica Furnizare S.A.',449.87,707.58,707.73,631.55,656.24,129,217,91);
INSERT INTO notable_figures VALUES ('aug25','E.ON Energie România S.A.',NULL,418.45,409.45,396.63,348.52,126,NULL,96);

-- data_quality_notes batch2
INSERT INTO data_quality_notes VALUES (11,'dec23','import_pi pct','warning','Printed coupled-IDM import % (Nov 25.0%, Dec 16.9%) inconsistent with volumes; stored as printed.');
INSERT INTO data_quality_notes VALUES (12,'dec23','MACEE full-year','info','Dec 2023 report also states full-year 2023 MACEE 16087 GWh (29.6% of SEN) at 450 lei/MWh — annual aggregates not duplicated as monthly rows.');
INSERT INTO data_quality_notes VALUES (13,'aug24','MACEE blended price','info','From May 2024 MACEE weighted price blends 450 lei/MWh annual-auction and 400 lei/MWh supplemental monthly-auction quantities (OUG 32/2024). Aug24 report price 449.87.');
INSERT INTO data_quality_notes VALUES (14,'aug24','BRM PI only','info','BRM PI operational from 22 May 2024 (small volumes). BRM PZU not yet operational (starts 19 Nov 2024).');
INSERT INTO data_quality_notes VALUES (15,'aug24','PE methodology','info','July–Aug 2024 PE uses engaged energy (angajată), not effectively delivered.');
INSERT INTO data_quality_notes VALUES (16,'aug25','PCCB-NC pct','warning','Printed Aug 2025 PCCB-NC pct_internal_consumption 25.0 is inconsistent with 133 GWh / ~4154 GWh (~3.2%); likely layout duplicate of PCCB-LE-flex %. Stored as printed.');
INSERT INTO data_quality_notes VALUES (17,'aug25','MACEE absent','info','MACEE not present in Aug 2025 wholesale table.');
INSERT INTO data_quality_notes VALUES (18,'aug25','retail invoice prices','info','From July 2025 ANRE states retail prices represent prices invoiced to final customers — breaks comparability with earlier contractual averages under support-scheme caps.');
INSERT INTO data_quality_notes VALUES (19,'aug25','BRM IDA','info','BRM IDA operational from 5 Aug 2025; Aug PI-BRM includes IDA.');
INSERT INTO data_quality_notes VALUES (20,'aug25','PE product labels','info','Balancing products labeled RRFa/RRFm/RI rather than secondary/fast/slow tertiary.');

COMMIT;
