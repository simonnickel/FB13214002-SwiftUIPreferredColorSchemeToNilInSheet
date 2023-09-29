# FB13214002 - Setting PreferredColorScheme to nil does not work in sheet.


## Scenario

An app opens a sheet to show a toggle to override the preferredColorScheme of the app.
The device is in .light colorScheme.
When the toggle is enabled it is set to .dark via preferredColorScheme.
When the toggle is disabled it should follow system settings.


## Issue

Disabling the override by setting the preferredColorScheme to nil does work on the main view, but not inside the sheet.


## Example Code

The example shows a Button to open the sheet.
The sheet contains a toggle to override to dark mode.

Device: Any iPhone Simulator.

1. Make sure the device is in light mode.
2. Open the sheet.
3. Enable the toggle.
->  Everything is dark.
4. Disable the toggle.
-> Only the background view is back to light, the sheet stays dark.


## Workaround

Set the preferredColorScheme inside of the sheet with the colorScheme form the Environments from outside of the sheet. 

```
	@Environment(\.colorScheme) private var colorScheme
	
	view.sheet {
		view.preferredColorScheme(isDark ? .dark : colorScheme)
	}

```
 

## Tested on

 - Xcode Version 15.0 (15A240d): iPhone 15 Pro (iOS 17.0 (21A328)) Simulator
