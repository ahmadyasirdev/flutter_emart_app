import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/firebase_const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  Future<UserCredential?> loginMethod(email,password,context)async{
    UserCredential? userCredential ;
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException   catch(e){
VxToast.show(context, msg: e.toString());
    }
   return userCredential;
  }

  // sigup

  Future<UserCredential?> sigupMethod(email,password,context)async{
    UserCredential? userCredential ;
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException   catch(e){
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;


  }
  //stroge data meth
signoutMethode(context)async{
    try{
await auth.signOut();
    }catch(e){
      VxToast.show(context, msg: e.toString());
    }
}

}