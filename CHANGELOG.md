BFPaperColors
=============
[![CocoaPods](https://img.shields.io/cocoapods/v/UIColor+BFPaperColors.svg?style=flat)](https://github.com/bfeher/BFPaperColors)

> Note that this changelog was started very late, at roughly the time between version 1.3.1 and 1.4.10. Non consecutive jumps in changelog mean that there were incremental builds that weren't released as a pod, typically while solving a problem.


1.7.2
---------
+ ^ Fixed discrepancy with paperColorTextDarkHint and Google's updated color sheet.
+ ^ Updated example project to new Xcode recommended settings.
 

1.7.1
---------
+ + Added universal device support.
+ + Added a few more fake controls in the color test view.


1.6.1
---------
+ + Added a view for test-running a color. Just tap the cell of the color and a modal appears to help visualize your scheme.


1.5.1
---------
+ + Added text colors! (paperColorTextDark, paperColorTextLight, and their variants.)


1.4.10
---------
+ + Added a changelog!
+ + Added public utility function isColorDark.
+ + Added public utility function isColorLight.
+ - Removed deprecated function colorToHex.
+ ^ Google updated some colors, so I followed suit and updated the colors.
+ ^ hexStringFromColor now returns an uppercase string.
+ ^ Some minor visual tweaks to the demo app.
