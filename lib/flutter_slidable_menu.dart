library flutter_slidable_menu;

import 'package:flutter/material.dart';

class SlideMenuDrawer extends StatefulWidget {
  final Widget? header;
  final Widget drawer;
  final Widget body;
  final double? drawerOpenedWidth;
  final double? drawerClosedWidth;
  final Duration? animationDuration;
  final DrawerScrollDirection drawerScrollDirection;
  final bool toggleDrawer;
  const SlideMenuDrawer({super.key, required this.drawer, required this.body, this.drawerOpenedWidth, this.drawerClosedWidth, this.animationDuration, this.drawerScrollDirection = DrawerScrollDirection.leftToRight, required this.toggleDrawer, this.header});

  @override
  State<SlideMenuDrawer> createState() => _SlideMenuDrawerState();
}

class _SlideMenuDrawerState extends State<SlideMenuDrawer> {

  double _defaultOpenedWidth = 250;
  double _defaultCloseWidth = 0;
  int _defaultAnimationTime = 500;
  double? _drawerLeftPosition;
  double? _bodyLeftPosition;
  double? _drawerRightPosition;
  double? _bodyRightPosition;
  double? _drawerWidth;
  double? _bodyWidth;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if(widget.toggleDrawer){
      if(widget.drawerScrollDirection == DrawerScrollDirection.leftToRight){
        _drawerLeftPosition = 0;
        _bodyLeftPosition = (widget.drawerOpenedWidth ?? _defaultOpenedWidth);
      }
      else if(widget.drawerScrollDirection == DrawerScrollDirection.rightToLeft){
        _drawerRightPosition = 0;
        _bodyRightPosition = (widget.drawerOpenedWidth ?? _defaultOpenedWidth);
      }
      _bodyWidth = width - (widget.drawerOpenedWidth ?? _defaultOpenedWidth);
    }
    else{
      if(widget.drawerScrollDirection == DrawerScrollDirection.leftToRight){
        _drawerLeftPosition = -(widget.drawerOpenedWidth ?? _defaultOpenedWidth) + (widget.drawerClosedWidth ?? _defaultCloseWidth);
        _bodyLeftPosition = (widget.drawerClosedWidth ?? _defaultCloseWidth);
      }
      else if(widget.drawerScrollDirection == DrawerScrollDirection.rightToLeft){
        _drawerRightPosition = 0;
        _bodyRightPosition = (widget.drawerClosedWidth ?? _defaultCloseWidth);
      }
      _bodyWidth = width - (widget.drawerClosedWidth ?? _defaultCloseWidth);

    }
    _drawerWidth = widget.drawerOpenedWidth ?? _defaultOpenedWidth;

    return Column(
      children: [
        widget.header ?? const SizedBox() ,
        Expanded(
          child: Stack(
            children: [
              AnimatedPositioned(
                  duration: widget.animationDuration ?? Duration(milliseconds: _defaultAnimationTime),
                  curve: Curves.easeInOut,
                  left: _drawerLeftPosition,
                  top: 0,
                  bottom: 0,
                  right: _drawerRightPosition,
                  width: _drawerWidth,
                  // height: height,
                  child: widget.drawer
              ),
              AnimatedPositioned(
                duration:  widget.animationDuration ?? Duration(milliseconds: _defaultAnimationTime),
                curve: Curves.easeInOut,
                left: _bodyLeftPosition,
                top: 0,
                bottom: 0,
                right: _bodyRightPosition,
                width: _bodyWidth,
                child: widget.body,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

enum DrawerScrollDirection {leftToRight, rightToLeft}
