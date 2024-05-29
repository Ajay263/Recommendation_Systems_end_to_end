select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.device_class']) }} as device_class_key,
    stg_hotel_bookings_data_partitioned.device_class as device_class,
from {{ ref('stg_hotel_bookings_data_partitioned') }}



