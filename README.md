# Quick Shell

A lightweight desktop status bar built with QML and Quickshell.

This project creates a floating translucent panel that sits at the top of the screen and displays a minimal status interface with:

- current time
- workspace indicators
- battery level
- Wi-Fi connection status
- a blurred glass-like background

It is designed as a clean starting point for a custom Wayland desktop shell panel.

## Features

- Minimal floating panel design
- Transparent background with blur-like effect
- Centered clock display
- Workspace/tag indicators on the left
- Status indicators on the right
- Easy to customize colors, spacing, and layout in QML

## Project Structure

```text
Quick-Shell/
├── main.qml
└── README.md
```

## Requirements

Before running this project, make sure you have:

- Linux with a Wayland-based desktop environment
- Quickshell installed and configured
- Qt Quick / QML tooling available
- A desktop session that supports custom shell panels

## Running

1. Open a terminal in the project directory.
2. Start Quickshell using your local configuration and load this project as a shell panel.
3. Adjust the QML file to fit your preferred layout and system status widgets.

Example workflow:

```bash
cd Quick-Shell
# Launch via your Quickshell setup or shell config
```

Note: The exact run command depends on how Quickshell is installed and configured in your environment.

## Customization

The main UI is defined in `main.qml`. You can easily modify:

- panel size and position
- colors and opacity
- spacing and layout
- status text values
- workspace indicators and widgets

Example customization points:

- `implicitHeight: 44` controls panel height
- `color: "#cc1a1b26"` changes the panel background
- `Text { text: "09:17 AM" }` updates the visible clock
- `Text { text: "80%" }` updates battery level
- `Text { text: " Connected" }` updates network status

## Example UI

The current design includes a floating bar with:

- left side: workspace pills
- center: digital clock
- right side: battery and Wi-Fi status

## Notes

This is a simple template-style shell panel. The values shown in the UI are static placeholders and can be replaced with real system data or widgets in a fuller Quickshell setup.

## License

This project does not currently specify a license. If you plan to share or distribute it publicly, consider adding one such as MIT or GPL.

## Contributing

Feel free to modify the design, add widgets, or connect real system data. If you improve the panel, consider sharing your changes in a pull request.
