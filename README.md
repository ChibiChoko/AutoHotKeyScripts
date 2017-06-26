# AutoHotKeyScripts
Just some scripts for personal use

Image Scan

This script will scan the screen for a copy of whatever image you provide. Save you image to scan for as "Scan1.bmp" in the same directory as the .exe. I recommend you use a 24bit bitmap file.

Press ESC to terminate the script.

Steps this script takes:

Get the width of all displays
Search the screen using your provided image, providing error messages if anything goes wrong.
Continuously search all screens for all instances of this copy and click it twice.
Sleep for 30 seconds if search failed, sleep for 1 second if search succeeded.
Note: Clicking will click the top-left of your provided image, so make sure the clickable portion of the button is still the top-leftmost pixel. This script needs to launch as admin to execute.

AutoSynthesis
This script is far more complicated. It needs the following images with the same setup as Image Scan.
Arrow.bmp, Bolt.bmp, Paper.bmp, Oven.bmp, Menu.bmp, Divide.bmp, Okay.bmp, and Synthesis.bmp

This mod, designed specifically for random synthesis in Mabinogi, scans for Arrows, Bolts, and Paper in your inventory, scans for the alchemy oven (Abyss locking the time of day required), clicks the oven, then divides the stacks into one of each, placing them in the synthesis screen, then synthing.

Loop ends when any step fails, such as running out of materials. ESC also kills the script.

Menu is a screenshot of the synthesis boxes. I recommend starting in the center and going to the bottom right corner of a single box.
Divide is a screenshot of the divide button after right clicking a stack of items. Get a coloum of all three buttons but only the first two letters of Divide. Reason: Tooltips will block viewing of the whole button.
Okay is the okay button after clicking divide

Designed for random synthesis, but could be used for any 3-item synthesis as long as all the items stack.
