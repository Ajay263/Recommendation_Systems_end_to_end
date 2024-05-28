select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.affiliate_id']) }} as affiliate_key,
    stg_hotel_bookings_data_partitioned.affiliate_id as affiliate_id,
from {{ ref('stg_hotel_bookings_data_partitioned') }}
