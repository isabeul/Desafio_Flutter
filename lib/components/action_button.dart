import 'package:desafio_flutter/values/colors.dart';
import 'package:flutter/material.dart';

class ActionButton<T> extends StatefulWidget {
  final Future<T> Function()? onPressed;
  final String text;
  const ActionButton({Key? key, this.onPressed, required this.text})
      : super(key: key);

  @override
  State<ActionButton> createState() => _ActionButtonState<T>();
}

class _ActionButtonState<T> extends State<ActionButton<T>> {
  Future<T>? _future;

  Widget buildButton(Widget child) {
    return ElevatedButton(
      onPressed: widget.onPressed != null
          ? () {
              setState(() {
                _future = widget.onPressed!();
              });
            }
          : null,
      child: child,
      style: ElevatedButton.styleFrom(primary: AppColors.blue),
    );
  }

  Widget buildContent() {
    if (widget.onPressed != null) {
      return FutureBuilder<T>(
        future: _future,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const CircularProgressIndicator();

            default:
              return Text(widget.text);
          }
        },
      );
    }
    return Text(widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return buildButton(buildContent());
  }
}
