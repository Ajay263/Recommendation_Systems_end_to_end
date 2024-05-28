select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.checkout']) }} as checkout_id,
    stg_hotel_bookings_data_partitioned.checkout as checkout,
from {{ ref('stg_hotel_bookings_data_partitioned') }}
