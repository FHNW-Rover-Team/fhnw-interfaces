# BoardInfo.msg — WeCant v2 board identity and state
# Published with transient_local QoS on /wecant/<board>/info
# Updated on every JOIN (HELLO→ALLOCATE) and warm ANNOUNCE.
#
# link_state values: 0 = offline, 1 = ready

uint64  uid64
uint8   short_id
uint32  schema_hash32
string  name
string  description
string  fw_version
string  hw_version
uint8   link_state
builtin_interfaces/Time last_join_time
