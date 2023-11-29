// ignore_for_file: unnecessary_this, duplicate_ignore

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon? icon;
  final TextInputType keyboard;
  final bool obsecure;
  final void Function(String data)? onChanged;
  final String Function(String? data)? validator;
  const InputText({ key ,
    this.label ="",
    this.hint ="",
    this.icon ,
    this.keyboard= TextInputType.text,
    this.obsecure = false,
    this.onChanged,
    this.validator,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // ignore: duplicate_ignore
      child: TextFormField(
        // ignore: unnecessary_this
        keyboardType: this.keyboard,
        obscureText: this.obsecure,
        onChanged: this.onChanged,
        validator: this.validator,
        decoration: InputDecoration(
          hintText: this.hint,
          labelText: this.label,
          labelStyle: const TextStyle(
            color: Colors.black12,
            fontFamily: "FreedokaOne",
            fontSize:  25.0,
          ),
          suffixIcon: this.icon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
        ),
      ),
    );
  }
}