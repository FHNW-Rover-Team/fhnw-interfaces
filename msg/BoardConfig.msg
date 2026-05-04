# BoardConfig.msg
# Published on /wecant/discovery and /wecant/<BoardName>/discovery
# whenever a WECANT board completes its DHCP handshake.

uint8  global_id
string name
string hw_version
string sw_version
string description

# Wall-clock timestamp (seconds since Unix epoch) at the moment this board
# completed its DHCP handshake with this bridge instance. Use this to detect
# whether a latched discovery message is from the current run or stale from
# before the last bridge restart.
builtin_interfaces/Time last_dhcp_time
