import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    this.value = "",
    this.onTap,
    this.icon,
    this.color,
    this.isVisible = true,
    this.isBorder = false,
    this.borderColor,
  });
  final String value;
  final bool isVisible;
  final IconData? icon;
  final bool isBorder;
  final Color? color;
  final Color? borderColor;
  final void Function(String value)? onTap;

  @override
  Widget build(BuildContext context) {
    final colorButton = color ?? Theme.of(context).colorScheme.background;
    return isVisible
        ? Material(
            color: colorButton,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: onTap == null ? null : () => onTap!(value),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: isBorder
                        ? Border.all(
                            width: 3,
                            color: borderColor ??
                                Theme.of(context).colorScheme.primaryContainer)
                        : null),
                child: value.isNotEmpty
                    ? Text(
                        value,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      )
                    : Icon(icon),
              ),
            ),
          )
        : Container();
  }
}
