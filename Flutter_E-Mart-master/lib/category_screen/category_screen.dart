import 'package:emart_app/category_screen/category_dalited.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/wigdes_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 8,mainAxisSpacing: 8,mainAxisExtent: 200), itemBuilder: (context,index){
          return Column(
            children: [
              Image.asset(categoriesImage[index],height: 120,
                width: 200,
                fit: BoxFit.cover,
              ),
              categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
            ],
          ).box.rounded.clip(Clip.antiAlias).outerShadowSm.white.make().onTap(() {
            Get.to(()=> CategoryDetails(title: categories[index],));
          });
        }),
      ),
    ));
  }
}
