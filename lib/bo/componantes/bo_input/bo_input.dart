// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class $INPUT extends StatefulWidget {
  $INPUT(
      {super.key,
      this.height = 60,
      this.radius = 20,
      this.bg_color = Colors.white,
      this.shadow_color = Colors.grey,
      this.isMotDePasse = false,
      this.isHaveSuffix = false,
      this.suffix_icon = Icons.error,
      required this.label,
      required this.width,
      required this.color,
      required this.prefixIcon});

  String label;
  double height;
  double width;
  double radius;
  Color bg_color;
  MaterialColor color;
  Color shadow_color;
  bool isMotDePasse;
  IconData prefixIcon;

  bool isHaveSuffix = false;
  IconData suffix_icon = Icons.error;

  Function suffixAction = () {};
  Function onChangeValue = () {};

  setSuffixAction(Function action) {
    isHaveSuffix = true;
    suffixAction = () {
      action();
    };
  }

  setActionOnChangeValue(Function action) {
    onChangeValue = () {
      action();
    };
  }

  setColorPrimary(MaterialColor color) {
    color = color;
  }

  TextEditingController controller = TextEditingController();

  String getValue() {
    return controller.text;
  }

  @override
  State<$INPUT> createState() => _boInput();
}

class _boInput extends State<$INPUT> {
  bool isObscur = false;

  void onChangeVuMpd() {
    setState(() {
      isObscur = !isObscur;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        height: 60,
        child: Material(
            elevation: 10,
            color: widget.bg_color,
            shadowColor: widget.shadow_color,
            borderRadius: BorderRadius.circular(widget.radius),
            child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                        child: Theme(
                            data: ThemeData(primarySwatch: widget.color),
                            child: TextFormField(
                                controller: widget.controller,
                                obscureText: isObscur,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                onChanged: (value) => {widget.onChangeValue()},
                                decoration: InputDecoration(
                                    isDense: true,
                                    labelText: widget.label,
                                    prefixIcon: Icon(widget.prefixIcon),
                                    labelStyle: const TextStyle(
                                        fontWeight: FontWeight.normal),
                                    alignLabelWithHint: false,
                                    contentPadding: const EdgeInsets.all(15),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(1)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(0)),
                                    suffixIcon: widget.isMotDePasse
                                        ? InkWell(
                                            onTap: () {
                                              onChangeVuMpd();
                                            },
                                            child: isObscur
                                                ? const Icon(Icons.visibility)
                                                : const Icon(
                                                    Icons.visibility_off))
                                        : widget.isHaveSuffix
                                            ? InkWell(
                                                onTap: () =>
                                                    {widget.suffixAction()},
                                                child: Icon(widget.suffix_icon))
                                            : null))))))));
  }
}
