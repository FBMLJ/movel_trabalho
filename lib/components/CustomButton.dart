import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final onPress;

  const CustomButton({Key key, this.buttonText, this.buttonColor=Colors.lightGreen, this.textColor=Colors.white, this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
          // onPressed: this.onPress,
          color: this.buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: this.buttonColor)
          ),
          child: Text(
            this.buttonText,
            style: TextStyle(
              color: this.textColor,
              fontSize: 15
            ),
          ),
        )
    );
  }
}
