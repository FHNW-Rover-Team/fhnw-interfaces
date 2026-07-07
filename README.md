# FHNW Interfaces

Rover-wide ROS 2 message, service, and action definitions shared across the
FHNW rover stack. Used by `barara_autonomy`, `barara_autonomy_cpp`,
`lerobot_ros`, and the manipulator/drivetrain firmware bridges in the parent
[`ros-fhnw-autonomy`](https://gitlab.fhnw.ch/fhnw-rover/ros-fhnw-autonomy)
workspace (where this package is checked out as a git submodule at
`src/fhnw_interfaces`).

## Contents

- `msg/` — drivetrain state/control, board/tool detection, dynamixel motor
  states, sampling drill, BMS/power status, and other shared telemetry types.
- `srv/` — dynamixel control, board/tool selection, path and pose queries.
- `action/` — visual alignment/zeroing, calibration, dynamixel homing, LED
  indicator control.

## Building

This is a standard `ament_cmake` interfaces-only package (no library code).
Build it as part of the parent workspace with `colcon build`, or standalone:

```bash
colcon build --packages-select fhnw_interfaces
```
