### #1 Instances of BBTOOL_BUSINESS_RATE string
Searched for instances of the string BBTOOL_BUSINESS_RATE and found only one
([Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Apache/Handler.pm?r=h.d.b.c#L7506)).
It is used by an `if` construct to add a property called `bbtool_company_has_business_rate_available` to the response
(`$rd`) if either the BBTOOL_BUSINESS_RATE feature or experiment is on.

I removed the `if` construct.

### #2 Usages of `bbtool_company_has_business_rate_available` property in response
#### #2.1 lib/Bookings/Tools/Action/HotelBlocks.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Tools/Action/HotelBlocks.pm?r=h.d.b.c#L2363)
I removed the statement which adds a key/value pair to a hash (`%block`) if `bbtool_company_has_business_rate_available`
exists in the response (`$rd`) because `bbtool_company_has_business_rate_available` will always be non-existent in
`$rd`.

#### #2.2 lib/Bookings/Tools/Channels.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Tools/Channels.pm?r=h.d.b.c#L449)
I removed the outer block of code (which I believe is a promise) that uses `bbtool_company_has_business_rate_available`
here because it is guaranteed that line 451 will never be reached.

#### #2.3 lib/Bookings/User.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/User.pm?r=h.d.b.c#L3263)
It is safe to remove this `if` construct because it will never be true.

#### #2.4 lib/Bookings/Apache/BaseAction/Simple.pm [Gitlab link](https://gitlab.booking.com/core/main/blob/f81728619cc7977202bd5a22f9bdb20dfb18218f/lib/Bookings/Apache/BaseAction/Simple.pm?r=h.d.b.c#L1412)
Removed line 1412 because `$rd->{bbtool_company_has_business_rate_available}` will always be non-existent

