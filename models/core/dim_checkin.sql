select
    {{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.checkin']) }} as checkin_id,
    stg_hotel_bookings_data_partitioned.checkin as checkin,
from {{ ref('stg_hotel_bookings_data_partitioned') }}
