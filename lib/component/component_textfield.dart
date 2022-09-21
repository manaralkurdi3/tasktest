import 'package:flutter/material.dart';

class TextFieldComponent extends StatefulWidget {
  FormFieldValidator? callback;
  String? hinttext;
  TextEditingController? textcontroller;

  //GlobalKey<FormState> ? formkey;
  TextFieldComponent({
    this.callback,
    this.hinttext,
    this.textcontroller,
  });

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        child: TextFormField(
          validator: widget.callback,
          controller: widget.textcontroller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            hintText: widget.hinttext,
            //fillColor: Theme.of(context).backgroundColor,
            filled: true,
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xFF969A9D),
              fontWeight: FontWeight.w300,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Color(0xFF707070), width: .5),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red, width: .5),
            ),
          ),
        ),
      ),
    );
  }
}
