# Phase enum — tracks which step of the homing pipeline is active
uint8 PHASE_IDLE=0
uint8 PHASE_PREHOME_SETUP=1
uint8 PHASE_PREHOME_MOVING=2
uint8 PHASE_DIFFWRIST_SETUP=3
uint8 PHASE_DIFFWRIST_PITCH_PLUS=4
uint8 PHASE_DIFFWRIST_PITCH_MINUS=5
uint8 PHASE_DIFFWRIST_PITCH_UPRIGHT=6
uint8 PHASE_DIFFWRIST_ROLL_PLUS=7
uint8 PHASE_DIFFWRIST_ROLL_MINUS=8
uint8 PHASE_DIFFWRIST_ROLL_CENTER=9
uint8 PHASE_DONE=10

# Outcome of the most recent homing run
uint8 RESULT_NONE=0
uint8 RESULT_SUCCESS=1
uint8 RESULT_FAILED=2
uint8 RESULT_ABORTED=3

# Persistent state — reset to false on node startup, never saved to disk
bool is_homed           # true only after a successful FULL run
bool prehome_done       # true after a successful prehome phase
bool diffwrist_done     # true after a successful diffwrist phase

# Live state
bool is_running
uint8 phase             # one of PHASE_*
uint8 last_result       # one of RESULT_*
float32 progress        # 0.0 – 1.0 coarse estimate
uint8 active_motor_index    # 255 if not motor-scoped
int32 motor_position        # last-read position (0 if N/A)
float32 motor_current_ma    # last-read current in mA (0 if N/A)
string message
