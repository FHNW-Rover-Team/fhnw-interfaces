# Drivetrain/steering geometry and limits. Distances in meters, angles in
# degrees unless noted otherwise.
float32 wheelbase 0.85
float32 track_width 0.82
float64 MAX_RADIUS = 2147483647  # "infinite" turn radius sentinel (INT32_MAX), meters -- used to represent straight-line driving
float64 MIN_RADIUS = 0.8         # meters
float32 MAX_WHEEL_VELOCITY = 1.45  # m/s
float32 MAX_CRAB_ANGLE = 270.0        # degrees
float32 MAX_ANGULAR_VELOCITY = 270.0  # degrees/s
float32 ELEVATION_PITCH_OFFSET = 2.3     # degrees
float32 ELEVATION_ROLL_OFFSET = 0.0      # degrees
float32 ELEVATION_SWAYBAR_OFFSET = 180.0 # degrees
float32 ELEVATION_MAX_HEIGHT = 0.25   # meters
float32 ELEVATION_MIN_HEIGHT = 0.06   # meters
float32 ELEVATION_MOTOR_MINPOS = 0.0  # motor position units, lower bound
float32 ELEVATION_MOTOR_MAXPOS = 0.13 # motor position units, upper bound
float32 TURNING_LOCK_POS = 0.1        # motor position units

# Elevation/suspension linkage kinematics (link lengths and heights, meters,
# and ALPHA in degrees) used by the elevation/swaybar inverse-kinematics
# solver. Confirm exact geometric meaning with the drivetrain/elevation
# maintainer before changing.
float32 ALPHA = 15
float32 LA = 0.31
float32 LD = 0.175
float32 LC = 0.15
float32 LMOT = 0.105
float32 HR = 0.366
float32 HP = 0.19
