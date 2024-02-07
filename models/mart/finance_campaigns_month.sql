SELECT
   EXTRACT(month FROM date_date) AS monthly,
    SUM(ads_margin) AS monthly_margin,
    AVG(average_basket) AS monthly_avgBasket,
    SUM(operational_margin) AS monthly_op,
FROM {{ ref('finance_campaigns_day') }}
GROUP by monthly
