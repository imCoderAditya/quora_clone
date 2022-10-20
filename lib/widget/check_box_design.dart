import 'package:flutter/material.dart';

class CheckBoxDesign extends StatelessWidget {
  bool? value;
  String? title;
  final ValueChanged<bool?>? onChanged;
  CheckBoxDesign({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
            title.toString(),
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
        )
      ],
    );
  }
}
