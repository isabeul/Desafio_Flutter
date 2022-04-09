import 'package:flutter/material.dart';

class CoinCard extends StatefulWidget {
  final String name;
  final double? value;
  final VoidCallback? onTap;
  const CoinCard({Key? key, required this.name, this.onTap, this.value})
      : super(key: key);

  @override
  State<CoinCard> createState() => _CoinCardState();
}

class _CoinCardState extends State<CoinCard> {
  Widget? buildValue() {
    if (widget.value == null) {
      return null;
    }
    var color = const Color.fromARGB(255, 224, 64, 64);
    final value = widget.value ?? 0;
    if (value < 1) {
      color = const Color(0xFF36FF93);
    } else if (value < 5) {
      color = const Color(0xFFD8EC5B);
    }
    return Text(
      widget.value.toString(),
      style: TextStyle(color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.attach_money_sharp),
          trailing: buildValue(),
          title: Text(widget.name),
        ),
      ),
    );
  }
}
