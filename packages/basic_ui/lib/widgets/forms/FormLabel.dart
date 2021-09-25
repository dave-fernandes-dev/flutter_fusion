import 'package:flutter/material.dart';
import '../../helpers/TextStyles.dart';

class FormLabel extends StatelessWidget {
  FormLabel({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$label",
      style: TextStyles.label(context),
    );
  }
}
