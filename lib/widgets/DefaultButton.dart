import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  static final double smallTextSize = 14;
  static final double smallMinHeight = 34;
  static final double mediumTextSize = 16;
  static final double mediumMinHeight = 36;
  static final double largeTextSize = 18;
  static final double largeMinHeight = 38;

  Color containerColor;

  final String text;

  final double textSize;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final double minHeight;

  final bool disabled;
  final double radius;
  final Border border;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final VoidCallback onPress;
  final Color textColor, backgroundColor, activeBackgroundColor, disabledTextColor, disabledBackgroundColor;

  DefaultButton(this.text, {
    this.textSize = 16,
    this.fontWeight = FontWeight.normal,
    this.width = double.infinity,
    this.height,
    this.minHeight = 36,
    this.disabled = false,
    this.radius = 6.0,
    this.border,
    this.padding = const EdgeInsets.all(8),
    this.margin = const EdgeInsets.all(0),
    this.onPress,
    this.textColor = const Color(0xffffffff),
    this.backgroundColor = const Color(0xff0091ea),
    this.activeBackgroundColor = const Color(0xff0288d1),
    this.disabledTextColor = const Color(0xff757575),
    this.disabledBackgroundColor = const Color(0xffe0e0e0),
  }) : this.containerColor = (disabled ? disabledBackgroundColor : backgroundColor);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _DefaultButtonState();
  }
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        if (widget.onPress != null && !widget.disabled) {
          widget.onPress();
        }
      },
      onTapDown: (TapDownDetails details) {
        if (!widget.disabled) {
          setState(() {
            widget.containerColor = widget.activeBackgroundColor;
          });
        }
      },
      onTapUp: (TapUpDetails details) {
        if (!widget.disabled) {
          setState(() {
            widget.containerColor = widget.backgroundColor;
          });
        }
      },
      onTapCancel: () {
        if (!widget.disabled) {
          setState(() {
            widget.containerColor = widget.backgroundColor;
          });
        }
      },
      child: new Container(
        margin: widget.margin,
        padding: widget.padding,
        decoration: new BoxDecoration(
          border: widget.border,
          color: widget.containerColor,
          borderRadius: new BorderRadius.all(new Radius.circular(widget.radius)),
        ),
        constraints: new BoxConstraints(minHeight: widget.minHeight),
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        child: new Text(
          widget.text,
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontWeight: widget.fontWeight,
            fontSize: widget.textSize,
            color: widget.disabled ? widget.disabledTextColor : widget.textColor,
          ),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    widget.containerColor = widget.disabled ? widget.disabledBackgroundColor : widget.backgroundColor;
  }
}
