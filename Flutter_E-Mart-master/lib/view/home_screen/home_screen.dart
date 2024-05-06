import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/view/home_screen/compoents/featured_button.dart';
import 'package:emart_app/wigdes_common/home_batton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: Colors.white70,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffix: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white70,
                hintText: secheranything
              ),
            ),
          ),
         Expanded(
           child: SingleChildScrollView(
             physics: BouncingScrollPhysics(),
             child: Column(
               children: [
                 //swipers
                 VxSwiper.builder(
                     aspectRatio: 16/9,
                     autoPlay: true,
                     height: 150,
                     enlargeCenterPage: true,
                     itemCount: SlidersList.length, itemBuilder: (context,index){
                   return Image.asset(SlidersList[index],
                     fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal:8 )).make();
                 }),
                 10.heightBox,
                 //deals button
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: List.generate(
                       2,
                           (index) => homeButton(
                         heigth: context.screenHeight * 0.15,
                         width: context.screenWidth  /2.5,
                         icon: index == 0 ? icTodaysDeal:icFlashDeal,
                         title: index ==0? todayDeal :flashals,
             
                       )),
                 ),
                 10.heightBox,
                 VxSwiper.builder(
                     aspectRatio: 16/9,
                     autoPlay: true,
                     height: 150,
                     enlargeCenterPage: true,
                     itemCount: secondSliderList.length, itemBuilder: (context,index){
                   return Image.asset( secondSliderList[index],
                     fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal:8 )).make();
                 }),
                 10.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: List.generate(3, (index) => homeButton(
                       heigth: context.screenHeight * 0.15,
                       width: context.screenWidth  /3.5,
                       icon:   index == 0? icTopCategories:index ==1?icBrands:icTopSeller,
                       title: index == 0? topCategories: index == 1? icBrands:topSellers
                   )),
                 ),
                 20.heightBox,
                 Align(
                     alignment: Alignment.centerLeft,
                     child: featuredCategories.text.color(darkFontGrey).size(20).fontFamily(semibold).make()),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: List.generate(3, (index) => Column(
                       children: [
                         featuredButton(icon: featuredImages1[index],title: freaturedTitles1[index]),
                         10.heightBox,
                         featuredButton(icon: featuredImages2[index],title: freaturedTitles2[index]),
                       ],
                     )).toList(),
                   ),
                 ),
                 //featued productes
                 20.heightBox,
                 Container(
                   padding: EdgeInsets.all(12),
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.red,
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       featuredProduct.text.white.fontFamily(bold).size(18).make(),
                       SizedBox(height: 10,),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                          children: List.generate(6, (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                              SizedBox(height: 10,),
                              'Laptop 4GB/64GB'.text.fontFamily(semibold).color(darkFontGrey).make(),
                              SizedBox(height: 10,),
                              '\$600'.text.color(redColor).fontFamily(bold).size(16).make()
                            ],
                          ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(8)).make()),
                         ),
                       )
                     ],
                   ),
                 ),
                 SizedBox(height: 20,),
                 VxSwiper.builder(
                     aspectRatio: 16/9,
                     autoPlay: true,
                     height: 150,
                     enlargeCenterPage: true,
                     itemCount: secondSliderList.length, itemBuilder: (context,index){
                   return Image.asset( secondSliderList[index],
                     fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal:8 )).make();
                 }),
                 //all productes title
                 SizedBox(height: 20,),
               GridView.builder(

                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                   itemCount: 6,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 300),
                   itemBuilder: (context,indext){
                 return Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Image.asset(imgP5,height: 200,width: 200,fit: BoxFit.cover,),
                     Spacer(),
                     'Laptop 4GB/64GB'.text.fontFamily(semibold).color(darkFontGrey).make(),
                     SizedBox(height: 10,),
                     '\$600'.text.color(redColor).fontFamily(bold).size(16).make()
                   ],
                 ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make();
                   })

               ],
             ),
           ),
         )
        ],
      ),),
    );
  }
}
