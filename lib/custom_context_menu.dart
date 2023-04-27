library custom_context_menu;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContextMenu extends StatelessWidget {
  const CustomContextMenu({
    super.key,
    required this.editableTextState,
    required this.backgroundColor,
    required this.disabledColor,
    required this.borderRadius,
    required this.buttonPadding,
    required this.textStyle,
  });

  final EditableTextState editableTextState;
  final Color backgroundColor;
  final Color disabledColor;
  final double borderRadius;
  final double buttonPadding;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTextSelectionToolbar(
      anchors: editableTextState.contextMenuAnchors,
      children: editableTextState.contextMenuButtonItems.map((ContextMenuButtonItem buttonItem) {
        return CupertinoButton(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: backgroundColor,
          disabledColor: disabledColor,
          onPressed: buttonItem.onPressed,
          padding: const EdgeInsets.all(10.0),
          pressedOpacity: 0.7,
          child: Container(
            padding: EdgeInsets.all(buttonPadding),
            child: Text(
              CupertinoTextSelectionToolbarButton.getButtonLabel(context, buttonItem),
              style: textStyle,
            ),
          ),
        );
      }).toList(),
    );
  }
}
