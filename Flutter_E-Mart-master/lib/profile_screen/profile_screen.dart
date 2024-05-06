import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/profile_screen/commponents/detali_card.dart';
import 'package:emart_app/wigdes_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(child: Column(
        children: [
          // edit profile button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
                child: Icon(Icons.edit,color: Colors.white,)).onTap(() { }),
          ),

          // user detalis section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(imgProfile2,width: 110,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'Dumy User'.text.color(Colors.white).fontFamily(semibold).make(),
                    'customer@gmail.com'.text.color(Colors.white).make()
                  ],
                )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: whiteColor
                    )
                  ),
                    onPressed: (){}, child: 'Logout'.text.fontFamily(semibold).white.make())
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detalisCard(context.screenWidth / 3.4, '00', 'in your cart'),
              detalisCard(context.screenWidth / 3.4, '33', 'in your wichlist'),
              detalisCard(context.screenWidth / 3.4, '675', 'in your orderlist'),

            ],
          ),
          //button section

          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context ,index){
                return ListTile(
                  leading: Image.asset(profileButtonIcon[index],width: 22,),
                  title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                );
              }  ,
              separatorBuilder: (context,index){
                return  Divider(color: lightGrey,);
              },
              itemCount: profileButtonList.length).box.white.shadowSm.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).make().box.color(redColor).make()
        ],
      ),),
    ));
  }
}
