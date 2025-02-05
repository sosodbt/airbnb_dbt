SELECT  * 
FROM {{ ref('fct_reviews') }} r
JOIN {{ ref('dim_listings_cleansed') }} l 
ON r.LISTING_ID = l.LISTING_ID 
WHERE r.review_date <= l.created_at