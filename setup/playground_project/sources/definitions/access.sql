DEFINE ROLE PLAYGROUND_READ{{env_suffix}}
    COMMENT = 'Read access to analytics layer';

GRANT USAGE  ON DATABASE PLAYGROUND{{env_suffix}}           TO ROLE PLAYGROUND_READ{{env_suffix}};
GRANT USAGE  ON SCHEMA   PLAYGROUND{{env_suffix}}.ANALYTICS TO ROLE PLAYGROUND_READ{{env_suffix}};
GRANT USAGE  ON WAREHOUSE PLAYGROUND_WH{{env_suffix}}       TO ROLE PLAYGROUND_READ{{env_suffix}};
GRANT SELECT ON VIEW PLAYGROUND{{env_suffix}}.ANALYTICS.CUSTOMER_ORDER_SUMMARY TO ROLE PLAYGROUND_READ{{env_suffix}};

-- keep the project owner holding the role it creates
GRANT ROLE PLAYGROUND_READ{{env_suffix}} TO ROLE DCM_DEPLOYER;