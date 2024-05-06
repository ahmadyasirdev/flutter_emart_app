import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget detalisCard(width,String? count,String? title){
  return  Column(
    children: [
      '00'.text.fontFamily(semibold).size(16).make(),
      'in your cart'.text.color(darkFontGrey).make()
    ],
  ).box.rounded.white.width(width).height(60 ).padding(EdgeInsets.all(4)).make();
}