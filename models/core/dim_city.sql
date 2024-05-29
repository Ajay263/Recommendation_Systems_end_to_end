select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.city_id']) }} as city_key,
    stg_hotel_bookings_data_partitioned.city_id as city_id,
from {{ ref('stg_hotel_bookings_data_partitioned') }}




