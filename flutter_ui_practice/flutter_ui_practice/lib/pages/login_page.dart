import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/widgets/rounded_circular_button.dart';
import 'package:flutter_ui_practice/widgets/rounded_text_form_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 251, 254, 255),
      body: _bodyUI(context),
    );
  }

  Widget _bodyUI(BuildContext context){
    return Column(
      children: [
        _header(context),
        _loginForm(context)
      ],
    );
  }

  Widget _header(BuildContext context){
    return Container(

      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height*0.30,
      color: const Color.fromARGB(255, 174, 240, 235),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize:MainAxisSize.max ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sign In", style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.w600
            ),),
            Image.asset("assets/images/ill.webp",
            width: MediaQuery.sizeOf(context).width*0.50,
            fit:BoxFit.fill,)
          ],
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context){
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height*0.65,
      child: Form(child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          _formFields(context),
          _bottomButtons(context)
              
        ],),
      )),
    );
  }


  Widget _formFields(BuildContext context){
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*0.20,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RoundedTextFormFieldWidget(prefixIconData: Icons.email_outlined,hintText:"Enter Email",),
          RoundedTextFormFieldWidget(prefixIconData: Icons.lock_outline,hintText:"Enter Password", obsureText: true,),
          Text("Forgot password", style: TextStyle(
            color: Colors.blue,
            fontSize: 15
          ),)
        ],
      ),
    );
  }

  Widget _bottomButtons(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width*0.80,
            height: MediaQuery.sizeOf(context).height*0.05,
            child: RoundedCircularButton(text: "Sign in"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("I don't have an account",
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue,
              fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
    );
  }


}