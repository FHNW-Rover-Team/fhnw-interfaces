# VarMetaWrite.msg — WeCant v2 metadata write command
# Publish to /wecant/<board>/meta_write to update a variable's metadata field.
# One board-level subscription replaces 5 per-variable metadata subscribers.
#
# field values (WECANT_META_* constants from wecant_protocol_v2.h):
#   1 = min_value
#   2 = max_value
#   3 = startup_value
#   4 = safety_value
#   5 = cyclic_update_ms  (value is interpreted as uint32 milliseconds)

uint8   register_index
uint8   field
float64 value
