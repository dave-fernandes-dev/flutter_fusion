import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final Icon? leading;
  final bool isPassword;
  final TextInputType type;
  final int rows;

  const FormInput({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.text,
        isPassword = false,
        super(key: key);

  const FormInput.text({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.validator,
    this.labelText,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.text,
        isPassword = false,
        super(key: key);

  const FormInput.password({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.text,
        isPassword = true,
        super(key: key);

  const FormInput.number({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.number,
        isPassword = false,
        super(key: key);

  const FormInput.email({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.emailAddress,
        isPassword = false,
        super(key: key);

  const FormInput.datetime({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.datetime,
        isPassword = false,
        super(key: key);

  const FormInput.url({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
  })  : type = TextInputType.url,
        isPassword = false,
        super(key: key);

  const FormInput.multiline({
    Key? key,
    this.controller,
    this.hintText = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 4,
  })  : type = TextInputType.multiline,
        isPassword = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      minLines: type == TextInputType.multiline ? rows : 1,
      maxLines: type == TextInputType.multiline ? null : 1,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: leading,
      ),
      obscureText: isPassword,
      validator: validator,
    );
  }
}
