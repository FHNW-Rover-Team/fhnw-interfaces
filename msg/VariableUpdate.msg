# VariableUpdate.msg
# Published on /variable_update for every cyclic value frame from any board.
# Also used on /icant_set_variable to write a register back to a device.

uint8   global_id        # Board's global index assigned during DHCP
string  variable_name    # Board name (e.g. "LC1", "Beacon")
uint8   variable_index   # Register index on the board
float32 value_float      # Value interpreted as float
int32   value_int        # Value interpreted as signed int32
uint32  value_uint       # Value interpreted as unsigned int32
