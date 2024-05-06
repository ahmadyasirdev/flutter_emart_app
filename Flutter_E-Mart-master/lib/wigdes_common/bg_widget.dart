import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/colors.dart';

Widget bgWidget(Widget? child){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.fill),

    ),
    child: child,
  );
}
