with 

source as (

    select * from {{ source('staging', 'external_hotelbookings_data') }}

),

renamed as (

    select
     {{ dbt_utils.generate_surrogate_key(['user_id','checkin']) }} as booking_id,
        user_id,
        checkin,
        checkout,
        city_id,
        device_class,
        affiliate_id,
        booker_country,
        hotel_country,
        utrip_id

    from source

)

select * from renamed
