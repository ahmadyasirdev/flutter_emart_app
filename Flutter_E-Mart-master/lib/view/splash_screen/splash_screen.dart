import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/images.dart';
import 'package:emart_app/view/auth_screen/login_screen.dart';
import 'package:emart_app/wigdes_common/applogo_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //change amethod to change
  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
Get.to(()=>LoginScreen());
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg,width: 300,)),
            20.heightBox,
            applogoWideget(),
            SizedBox(height: 10,),
            appname.text.fontFamily(bold).size(22).white.make(),
            SizedBox(height: 5,),
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
