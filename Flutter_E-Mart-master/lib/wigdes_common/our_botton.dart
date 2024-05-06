import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurButton extends StatelessWidget {
  final onTap ;
  final title ;

  const OurButton({super.key,required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: redColor,
      ),
      child: Center(child: InkWell(
        onTap: onTap,
          child: Text(title,style: TextStyle(color: Colors.white),))),
    );
  }
}
