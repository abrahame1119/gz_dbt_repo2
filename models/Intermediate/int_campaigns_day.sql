SELECT
    date_date,
    SUM(ad_cost) AS ad_cost,
    SUM(impression) AS ads_impression,
    SUM(click) AS ads_clicks
FROM {{ ref('int_campaigns') }}
GROUP BY date_date