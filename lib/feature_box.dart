import 'package:flutter/material.dart';
import 'package:practise2/home_page.dart';
import 'package:practise2/pallete.dart';
import 'package:speech_to_text/speech_to_text.dart';

class FeatureBox extends StatefulWidget {
  final Color color;
  final String headerText;
  final String descriptionText;
  const FeatureBox({
    Key? key,
    required this.color,
    required this.headerText,
    required this.descriptionText,
  }): super(key: key);

  @override
  State<FeatureBox> createState() => _FeatureBoxState();
}

class _FeatureBoxState extends State<FeatureBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: widget.color ,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 15,bottom: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(widget.headerText, style:const TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(widget.descriptionText, style:const TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
              ),),
            )

          ],
        ),
      ),
    );
  }
}
