select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.user_id']) }} as user_key,
    stg_hotel_bookings_data_partitioned.user_id as user_id,
     stg_hotel_bookings_data_partitioned.booker_country as booker_country,
from {{ ref('stg_hotel_bookings_data_partitioned') }}


