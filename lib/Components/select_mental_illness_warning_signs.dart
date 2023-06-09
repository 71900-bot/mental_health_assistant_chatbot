import 'package:flutter/material.dart';
import 'package:mental_health_chatbot/constants.dart';

class SelectMentalIllnessWarningSigns extends StatelessWidget {
  final Function? press;
  const SelectMentalIllnessWarningSigns({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press as void Function()?,
          child: Text("Mental Illness Warning Signs",
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}