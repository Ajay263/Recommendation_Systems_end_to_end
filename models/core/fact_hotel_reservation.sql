select
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.city_id']) }} as city_key,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.affiliate_id']) }} as affiliate_key,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.checkin']) }} as checkin_id,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.checkout']) }} as checkout_id,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.city_id']) }} as city_key,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.device_class']) }} as device_class_key,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.hotel_country']) }} as hotel_country_id,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.device_class']) }} as device_class_key,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.hotel_country']) }} as hotel_country_id,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.user_id']) }} as user_key,
{{ dbt_utils.generate_surrogate_key(['stg_hotel_bookings_data_partitioned.utrip_id']) }} as utrip_key,
from {{ ref('stg_hotel_bookings_data_partitioned') }}

