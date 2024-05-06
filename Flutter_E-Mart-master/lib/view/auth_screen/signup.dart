import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/auth_controller.dart';
import 'package:emart_app/wigdes_common/applogo_widget.dart';
import 'package:emart_app/wigdes_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';
import '../../wigdes_common/custom_textfileld.dart';
import '../../wigdes_common/our_botton.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  //text controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

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
            'Join the $appname'.text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint,title: name,controller: nameController),
                customTextField(hint: emailHint,title: email,controller: passwordController),
                customTextField(hint: passwordHint,title: password,controller: passwordController),
                customTextField(hint:passwordHint,title: retypePassword,controller: passwordRetypeController ),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(onPressed: (){}, child: forgetpassword.text.make())),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),

                SizedBox(height: 5,),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.red,
                        value:  isCheck , onChanged: (newValue){
                         setState(() {
                           isCheck = newValue;
                         });
                    }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(text: 'I am agree to the ',style: TextStyle(
                                    fontFamily: regular,
                                    color: fontGrey
                                )),
                                TextSpan(text: '&',style: TextStyle(
                                    fontFamily: regular,
                                    color: Colors.red
                                )),
                                TextSpan(text: terAndCond,style: TextStyle(
                                    fontFamily: regular,
                                    color: Colors.red
                                )),
                                TextSpan(text: peivacyPolicyt,style: TextStyle(
                                  fontFamily: regular,
                                  color: Colors.red,
                                ))
                              ]
                          )),
                    ),
                  ],
                ),
                10.heightBox,
                OurButton(
                  title: singnup, onTap: ()async{
                    if(isCheck != false){
                      try{
                        await controller.sigupMethod(emailController, passwordController, context)
                            .then((value){
                          return Text('Ahmad YASIR');
                        }).then((value){
                          Get.offAll(()=>home);
                        });
                      }catch (e){
                        auth.signOut();
                        VxToast.show(context, msg: e.toString());
                      }
                    }
                },).box.make(),
                10.heightBox,
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAccounts,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )
                    ),
                    TextSpan(
                        text: login,
                        style: TextStyle(
                          fontFamily: bold,
                          color: Colors.red,
                        )
                    )
                  ]
                )).onTap(() {Get.back(); }),

              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
