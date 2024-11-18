import subprocess

# Monitor 1 (eDP-1) coordinates and dimensions
first_monitor_x = 0
first_monitor_y = 0
first_monitor_width = 1920
first_monitor_height = 1080

# Monitor 2 (DP-1-3) coordinates and dimensions
second_monitor_x = 1920
second_monitor_y = 0
second_monitor_width = 1920
second_monitor_height = 1080

def move_all_windows_to_monitor(monitor):
    # Select monitor dimensions based on user choice
    if monitor == 1:
        x = first_monitor_x
        y = first_monitor_y
        width = first_monitor_width
        height = first_monitor_height
    elif monitor == 2:
        x = second_monitor_x
        y = second_monitor_y
        width = second_monitor_width
        height = second_monitor_height
    else:
        print("Invalid monitor selection.")
        return

    # List all windows with wmctrl
    result = subprocess.run(["wmctrl", "-l"], capture_output=True, text=True)
    windows = result.stdout.strip().splitlines()

    # Move each window to the selected monitor
    for window in windows:
        window_id = window.split()[0]  # Extract the window ID
        # Move window to the specified monitor's position and size
        subprocess.run([
            "wmctrl", "-i", "-r", window_id,
            "-e", f"0,{x},{y},{width},{height}"
        ])

# Prompt user to select the monitor
monitor_choice = int(input("Enter monitor number (1 for first monitor, 2 for second monitor): "))
move_all_windows_to_monitor(monitor_choice)