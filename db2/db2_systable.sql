--table space check
SELECT * FROM SYSIBMADM.TBSP_UTILIZATION WHERE TBSP_NAME = '';
--check db2 Version
SELECT * FROM SYSIBMADM.ENV_INST_INFO;