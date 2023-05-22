import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';
import 'package:plant_app/screens/home/components/text_with_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function pressBtn;
  
  const TitleWithMoreBtn({
    Key? key, required this.title, required this.pressBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(children: [
        TextWithUnderline(text: title),
        Spacer(),
        TextButton(
          style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              ),
          onPressed: () {
            pressBtn;
          }, 
          child: Text("More", style: TextStyle(
            color: Colors.white,
          ),),
        )
      ]),
    );
  }
}