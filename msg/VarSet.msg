# VarSet.msg
#
# Single-shot register write addressed at one variable on one WECANT board.
# Replaces the old per-register topics (/MinValue, /MaxValue, /StartupValue,
# /SafetyValue, /CyclicUpdateTime) with a single subscriber per variable, so
# the bridge creates ~3.5x fewer ROS entities at startup.
#
# register_type values mirror the WECANT wire constants:
#   0 = Value
#   1 = MinValue
#   2 = MaxValue
#   3 = StartupValue
#   4 = SafetyValue
#   5 = CyclicUpdateTime  (value is interpreted as ms; cast to uint32)

uint8 REGISTER_VALUE         = 0
uint8 REGISTER_MIN_VALUE     = 1
uint8 REGISTER_MAX_VALUE     = 2
uint8 REGISTER_STARTUP_VALUE = 3
uint8 REGISTER_SAFETY_VALUE  = 4
uint8 REGISTER_CYCLIC_TIME   = 5

uint8   register_type
float32 value
