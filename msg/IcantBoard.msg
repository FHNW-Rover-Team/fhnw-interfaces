# IcantBoard.msg
# Published on /board_variable_def once per variable when a board is first discovered.
# Carries the full static definition of a single register (name, unit, limits, etc.)

uint8  global_id
uint8  register_index
string name
string unit
string datatype       # "eInt32" | "eUint32" | "eFloat"
string permission     # "eRead"  | "eReadWrite"
float32 value
float32 min_value
float32 max_value
float32 safety_value
uint32  cyclic_update_time
