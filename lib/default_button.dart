import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum SizeMode {
  Small,
  Medium,
  Large,
}

class DefaultButton extends StatefulWidget {
  Color containerColor;

  final double textSize;
  final double minHeight;

  final String text;
  final SizeMode mode;
  final bool disabled;
  final VoidCallback onPress;
  final double width;
  final EdgeInsetsGeometry margin;
  final Color textColor, backgroundColor, activeBackgroundColor, disabledTextColor, disabledBackgroundColor;

  DefaultButton(
    this.text,
    this.mode, {
    this.disabled = false,
    this.onPress,
    this.width,
    this.margin,
    this.textColor = const Color(0xffffffff),
    this.backgroundColor = const Color(0xff0091ea),
    this.activeBackgroundColor = const Color(0xff0288d1),
    this.disabledTextColor = const Color(0xff757575),
    this.disabledBackgroundColor = const Color(0xffe0e0e0),
  })  : this.textSize = (mode == SizeMode.Small ? 14 : mode == SizeMode.Medium ? 16 : 18),
        this.minHeight = (mode == SizeMode.Small ? 34 : mode == SizeMode.Medium ? 36 : 38),
        this.containerColor = (disabled ? disabledBackgroundColor : backgroundColor);

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
        margin: widget.margin == null ? new EdgeInsets.all(0) : widget.margin,
        padding: new EdgeInsets.all(8),
        decoration: new BoxDecoration(
          color: widget.containerColor,
          borderRadius: new BorderRadius.all(new Radius.circular(6)),
        ),
        constraints: new BoxConstraints(minHeight: widget.minHeight, minWidth: 88),
        width: widget.width == null ? double.infinity : widget.width,
        alignment: Alignment.center,
        child: new Text(
          widget.text,
          textAlign: TextAlign.center,
          style: new TextStyle(
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
