// ignore_for_file: non_constant_identifier_names

import 'package:bo/bo/componantes/bo_screen/screen.dart';
import 'package:flutter/material.dart';

import '../bo/componantes/bo_checbox/bo_checbox.dart';
import '../bo/componantes/bo_input/bo_input.dart';
import '../bo/componantes/bo_label/bo_label.dart';
import '../bo/componantes/bo_padding/bo_padding.dart';
import '../bo/componantes/bo_button/bo_button.dart';

class SECONNECT extends SCREEN {
  const SECONNECT({super.key, required super.rootName});

  @override
  State<SECONNECT> createState() => _SECONNECTState();
}

class _SECONNECTState extends State<SECONNECT> {
  $INPUT input_Login = $INPUT(
          label: 'Login',
          width: 300,
          prefixIcon: Icons.person,
          color: Colors.yellow),
      input_Mdp = $INPUT(
          label: 'Mdp',
          width: 300,
          isMotDePasse: true,
          prefixIcon: Icons.lock,
          color: Colors.deepPurple);

  $LABEL lb_logo = $LABEL(
        text: 'BO',
        textColor: Colors.brown,
        textSize: 22,
      ),
      lb_logoAmoi = $LABEL(
        text: 'AMOI Groupe',
        textColor: Colors.brown,
        textSize: 17,
      );

  $BUTTON bt_seconnect = $BUTTON(
        text: 'Connect',
      ),
      bt_newCompte = $BUTTON(
        text: 'Créer un compte',
        type: textButton,
      );

  $CHECBOX isRemember = $CHECBOX(
    text: 'Memoriser',
  );

  funct() {
    // print(input_Login.getValue());
    print(isRemember.getValue());
    print('--------');
  }

  @override
  Widget build(BuildContext context) {
    // input
    input_Login.width = MediaQuery.of(context).size.width;
    input_Login.setSuffixAction(funct);

    // label
    lb_logo.setFontWeight(bold);

    // button
    bt_seconnect.setAction(funct);
    bt_newCompte.setAction(funct);

    // checBox
    isRemember.setAction(funct);

    // BUILD
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // container Logo
                  const SizedBox(height: 80),
                  Center(
                      child: Column(
                    children: [
                      SizedBox(width: 60, child: lb_logo),
                      const SizedBox(height: 10),
                      lb_logoAmoi
                    ],
                  )),
                  const SizedBox(height: 80),

                  $PADDING(left: 20, right: 20, child: input_Login),
                  const SizedBox(height: 10),
                  input_Mdp,

                  $PADDING(left: 20, right: 20, child: bt_seconnect),

                  const SizedBox(height: 10),

                  $PADDING(
                      left: 30,
                      right: 30,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            bt_newCompte,
                            isRemember,
                          ]))
                ])));
  }
}
// ==========
