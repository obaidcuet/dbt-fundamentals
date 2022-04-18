version: 2

sources:
  - name: stripe
    database: dbt
    schema: stripe
    tables:
      - name: payment
        loaded_at_field: _etl_loaded_at
        freshness:
          warn_after: {count: 12, period: hour}
          error_after: {count: 24, period: hour}
