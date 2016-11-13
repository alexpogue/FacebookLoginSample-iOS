# FacebookLoginSample-iOS

This is an example iOS application using the Facebook login Swift API.

You can log in and log out. Isn't it great? :D

## Building

Build easily using Carthage:

1. cd into project directory
2. run `carthage update --platform iOS`

## Running

Open with Xcode and run using the play button

Note: You'll have to create a new scheme


The following error might come up when you try running it.

```
FacebookLoginSample-iOS[89295:3786650] [] nw_host_stats_add_src recv too small, received 24, expected 28
2016-11-13 02:38:03.147518 FacebookLoginSample-iOS[89295:3786650] [] ____nwlog_simulate_crash_inner_block_invoke dlopen CrashReporterSupport failed
2016-11-13 02:38:03.147802 FacebookLoginSample-iOS[89295:3786650] [] __nwlog_err_simulate_crash simulate crash failed "nw_socket_set_common_sockopts setsockopt SO_NOAPNFALLBK failed: [42] Protocol not available"
```

If you're encountering a similar error:

1. Go to Product > Scheme > Edit Scheme
2. Under "Environment Variables", click the plus sign
3. enter `OS_ACTIVITY_MODE` under "Name", and `disable` under "Value".
