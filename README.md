<!--
Flutter Sliable Menu helps your to create beautiful animated sidebars. This widget have two scroll directions

Left to Right
Right to Left


For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

The SlideMenuDrawer package provides a customizable slide-out menu drawer widget for Flutter applications. With smooth animations and flexible configuration options, developers can easily integrate sliding menu drawers into their Flutter projects. The package supports both left-to-right and right-to-left scrolling directions, allowing for versatile layouts. Whether you're building a mobile app or a responsive web application, SlideMenuDrawer simplifies navigation and enhances user experience.

## Features

Certainly! Here are the key features of the SlideMenuDrawer package:

1. **Customizable Drawer Widget:** Integrate a slide-out menu drawer into your Flutter app with ease.
2. **Smooth Animations:** Enjoy smooth and fluid animations for a polished user experience.
3. **Flexible Configuration:** Customize the behavior and appearance of the drawer to suit your app's design and requirements.
4. **Support for Scroll Directions:** Choose between left-to-right or right-to-left scrolling directions for the drawer, providing flexibility for various app layouts.
5. **Responsive Design:** Ensure compatibility with both mobile and web platforms, allowing for consistent navigation across different devices.
6. **Header Support:** Include a header section above the drawer for additional content or branding.
7. **Integration with Stack Widget:** Seamlessly integrate the drawer into your app layout using the Stack widget, enabling complex UI designs.
8. **Animated Positioning:** Utilize AnimatedPositioned widgets for dynamic positioning of the drawer and body content, enhancing visual appeal.
9. **Configurable Animation Duration:** Adjust the animation duration to achieve the desired speed and responsiveness.
10. **Tested and Reliable:** Deliver a reliable user experience with unit tests to ensure the stability and functionality of the drawer widget.

These features collectively empower developers to create intuitive and engaging navigation experiences within their Flutter applications using the SlideMenuDrawer package.

[](https://i.postimg.cc/tgDmbCwX/gfgf.gif)

## Getting started
just import the package library and use ;)

```dart
import 'package:flutter_slidable_menu/flutter_slidable_menu.dart';
```


## Usage


```dart
SlideMenuDrawer(
    drawerClosedWidth: 50,
    drawer: Container(
    color: Colors.grey,
    padding: EdgeInsets.all(6),
     ),
    body: Container(
    color: Colors.red,
    ),
    toggleDrawer: true / false,
    drawerScrollDirection: DrawerScrollDirection.LeftToRight,
    drawerOpenedWidth : 250,
    drawerClosedWidth : 50,
    animationDuration : const Duration(milliseconds: 300)
)
```

## Additional information

You can post issues or suggestion on the Github.com
