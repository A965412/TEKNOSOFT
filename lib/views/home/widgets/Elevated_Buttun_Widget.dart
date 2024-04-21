import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:flutter/material.dart';

class Elevated_Button_Widget extends StatelessWidget {
  const Elevated_Button_Widget(
      {Key? key,
      required this.textButton,
      required this.onPressed,
      this.iconData})
      : super(key: key);
  final String textButton;
  final Function() onPressed;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Mytheme.elevetedButtonColor,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textButton,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Inder',
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
