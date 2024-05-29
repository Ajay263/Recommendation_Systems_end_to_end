select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.hotel_country']) }} as hotel_country_id,
    stg_hotel_bookings_data_partitioned.hotel_country as hotel_country,
from {{ ref('stg_hotel_bookings_data_partitioned') }}

