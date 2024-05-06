import 'package:emart_app/cart_screen/cart_screen.dart';
import 'package:emart_app/category_screen/category_screen.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_controller.dart';
import 'package:emart_app/profile_screen/profile_screen.dart';
import 'package:emart_app/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

   // var controller = Get.put(HomeController());
    var controllrer = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label:home ),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: accounts),

    ];
    var navBody = [
     HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];



    return Scaffold(
      body:Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controllrer.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controllrer.currentNavIndex.value,
          selectedItemColor: Colors.red,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: navbarItem,
           onTap: (value){
             controllrer.currentNavIndex.value = value;
           },
         ),
      ),
    );
  }
}
