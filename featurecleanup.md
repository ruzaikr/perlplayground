## #1 Instances of BBTOOL_BUSINESS_RATE string
Searched for instances of the string BBTOOL_BUSINESS_RATE and found only one
([Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Apache/Handler.pm?r=h.d.b.c#L7506)).
It is used by an `if` construct to add a property called `bbtool_company_has_business_rate_available` to the response
(`$rd`) if either the BBTOOL_BUSINESS_RATE feature or experiment is on.

I removed the `if` construct.

## #2 Usages of `bbtool_company_has_business_rate_available` property in response
### #2.1 lib/Bookings/Tools/Action/HotelBlocks.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Tools/Action/HotelBlocks.pm?r=h.d.b.c#L2363)
I removed the statement which adds a key/value pair to a hash (`%block`) if `bbtool_company_has_business_rate_available`
exists in the response (`$rd`) because `bbtool_company_has_business_rate_available` will always be non-existent in
`$rd`.

#### #2.1.1 lib/Bookings/Tools/Action/HotelBlocks.pm (line 3363) [Gitlab link](https://gitlab.booking.com/core/main/blob/9a97fe2a610d22c378f459d6ad86f16614b46079/lib/Bookings/Tools/Action/HotelBlocks.pm?r=h.d.b.c#L3363)
I removed this statement because `$block{b_business_rate}` will always be non-existent because I removed the code in
`2.1`.

### #2.2 lib/Bookings/Tools/Channels.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Tools/Channels.pm?r=h.d.b.c#L449)
I removed the outer block of code (which I believe is a promise) that uses `bbtool_company_has_business_rate_available`
here because it is guaranteed that line 451 will never be reached.

### #2.3 lib/Bookings/User.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/User.pm?r=h.d.b.c#L3263)
It is safe to remove this `if` construct because it will never be true.

#### #2.3.1 lib/Bookings/Tools/Action/Company.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/c8f6f31d000ec8e5e408ba756c2e19565dc7b6d8/lib/Bookings/Tools/Action/Company.pm?r=h.d.b.c#L412)
I removed this statement because it is the only usage of `existing_user_onboarding_business_rates`. Since I removed the
code in section `2.3` it makes sense to remove this statement.

### #2.4 lib/Bookings/Apache/BaseAction/Simple.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Apache/BaseAction/Simple.pm?r=h.d.b.c#L1412)
Removed line 1412 because `$rd->{bbtool_company_has_business_rate_available}` will always be non-existent
