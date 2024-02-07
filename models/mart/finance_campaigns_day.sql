SELECT
    f.date_date,
    f.operational_margin - c.ad_cost AS ads_margin,
    f.average_basket,
    f.operational_margin
FROM {{ ref('int_campaigns_day') }} c
FULL OUTER JOIN {{ ref('finance_days') }} f
Using(date_date)