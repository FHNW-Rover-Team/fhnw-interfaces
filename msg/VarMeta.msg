# VarMeta.msg — WeCant v2 variable metadata
# Published with transient_local QoS on /wecant/<board>/<var>/meta
# Bridge publishes once on join; late joiners receive the cached value.

uint8   register_index
string  name
string  unit
string  description
string  datatype          # "int32" | "uint32" | "float"
string  permission        # "read"  | "readwrite"
float64 min_value
float64 max_value
float64 startup_value
float64 safety_value
uint32  cyclic_update_ms
