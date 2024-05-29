select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.utrip_id']) }} as utrip_key,
    stg_hotel_bookings_data_partitioned.user_id as utrip_id,
from {{ ref('stg_hotel_bookings_data_partitioned') }}


