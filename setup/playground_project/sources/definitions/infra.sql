DEFINE DATABASE PLAYGROUND{{env_suffix}}
    COMMENT = 'DCM playground database';

DEFINE SCHEMA PLAYGROUND{{env_suffix}}.RAW
    DATA_RETENTION_TIME_IN_DAYS = {{data_retention_days}}
    COMMENT = 'Landing layer';

DEFINE SCHEMA PLAYGROUND{{env_suffix}}.ANALYTICS
    DATA_RETENTION_TIME_IN_DAYS = {{data_retention_days}}
    COMMENT = 'Modelled layer';

DEFINE WAREHOUSE PLAYGROUND_WH{{env_suffix}}
    WAREHOUSE_SIZE = '{{wh_size}}'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE
    COMMENT = 'Playground compute';