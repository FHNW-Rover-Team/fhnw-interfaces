# Spin and control states (modes and transition states)
bool is_spinning                            # If in spin-in-place mode (self.spin)
bool spin_transition_active                 # True when switching in/out of spin mode (self.spin_edge)
bool driving_allowed_after_spin             # True when driving is unlocked after wheels finish aligning for spin (self.vel_unlock)
bool steering_locked_during_transition      # True when wheel angles are locked during spin transitions (self.ang_lock)
bool spin_exit_sequence_active              # If exiting spin mode and waiting for wheels to reset (self.spin_unlock)

# Drive and direction states
int32 drive_direction                       # Current driving direction multiplier: 1 for forward, -1 for reverse (self.dir)
float32 reverse_angle_offset                # Offset angle applied to target when driving in reverse (self.angdelta)

# Safety & monitoring
bool watchdog_triggered                     # True if locomotion stopped because no input was received in time (self.watchdog_triggered)
float32 input_latency                       # Time elapsed since the last received input command (delta)
