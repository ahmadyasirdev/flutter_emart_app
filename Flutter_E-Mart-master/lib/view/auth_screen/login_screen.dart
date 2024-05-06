import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/view/auth_screen/signup.dart';
import 'package:emart_app/view/home_screen/home.dart';
import 'package:emart_app/wigdes_common/applogo_widget.dart';
import 'package:emart_app/wigdes_common/bg_widget.dart';
import 'package:emart_app/wigdes_common/custom_textfileld.dart';
import 'package:emart_app/wigdes_common/our_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight *0.1).heightBox,
            applogoWideget(),
            10.heightBox,
            'Log in to $appname'.text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(hint: emailHint,title: email),
                customTextField(hint: passwordHint,title: password),
                Align(
                  alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetpassword.text.make())),
                5.heightBox,
               // ourButton().box.width(context.screenWidth - 50).make(),
               OurButton(title: 'Login', onTap: (){
                 Get.to(()=> Home());
               },),
                SizedBox(height: 5,),
                createNewAccount.text.color(fontGrey).make(),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (){
                    Get.to(()=> SignupScreen());
                  },
                    child: Text('Sign up',style: TextStyle(color: Colors.red,fontFamily: bold),)),
                SizedBox(height: 10,),
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                                            backgroundColor: lightGrey,
                                            radius: 25,
                                            child: Image.asset(socialIconList[index],width: 30,),
                                          ),
                      ))
                )


              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
