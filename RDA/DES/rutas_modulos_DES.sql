
UPDATE CCR_CONF_MODULE SET MODULE_URL = 'http://es5dx02bsab.bancsabadell.com:8880/ccr/micro/' WHERE ID_MODULE='MICRO';
UPDATE CCR_CONF_MODULE SET MODULE_URL = 'http://es5dx02bsab.bancsabadell.com:8880/ccr/appccr/' WHERE ID_MODULE='CCR';
UPDATE CCR_CONF_MODULE SET MODULE_URL = 'http://es5dx02bsab.bancsabadell.com:8880/ccr/rbp/' WHERE ID_MODULE='RBP';
UPDATE CCR_CONF_MODULE SET MODULE_URL = 'http://es5dx02bsab.bancsabadell.com:8880/ccr/garantias/' WHERE ID_MODULE='GARAN';
COMMIT;