import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:servixass/common/widgets/elevated_button.dart';
import 'package:servixass/common/widgets/gradient.dart';
import 'package:servixass/common/widgets/text_field.dart';
import 'package:servixass/core/constants/app_colors.dart';
import 'package:servixass/core/routing/app_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool obscure =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradient(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 32, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: MediaQuery.of(context).size.height*0.020,
              children: [
                   Row(
                    children: [
                      IconButton(
                        onPressed: () {
                           Get.toNamed(AppRouter.register);
                        },
                        icon: Icon(Icons.arrow_back, color: AppColors.grey600),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          //  Get.offNamed(AppRouter.main);
                        },
                        child: Text(
                          StringTranslateExtension("skip").tr(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.main500,
                          ),
                        ),
                      ),
                    ],
                  ),
                
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.67,
                    height: MediaQuery.of(context).size.height * 0.087,
                    child: Image.asset(
                      height: MediaQuery.of(context).size.height * 0.087,
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      StringTranslateExtension('title').tr(),
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey700,
                      ),
                    ),
                    Text(
                      StringTranslateExtension('title2').tr(),
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: AppColors.main500,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    StringTranslateExtension('subtitle').tr(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey400,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.016),
                CustomFormField(
                  width: MediaQuery.of(context).size.width * 0.93,
                  height: 48,
                  hint:StringTranslateExtension("email").tr(),
                  inputAction: TextInputAction.next,
                  keyboard: TextInputType.emailAddress,
                  obscuretext: false,
                  prefix: SvgPicture.asset(
                    'assets/icons/email_icon.svg',
                    width: 10,
                    height: 10,
                    fit: BoxFit.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.grey100),
                  ),
                  focused: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.grey100),
                  ),
                  enabled: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.grey100),
                  ),
                ),
                CustomFormField(width:MediaQuery.of(context).size.width * 0.93,
                 height:48,
                  hint:StringTranslateExtension('pass').tr(),
                   inputAction:TextInputAction.done, 
                   keyboard:TextInputType.text,
                    prefix:SvgPicture.asset(
                          'assets/icons/lock.svg',
                          width: 10,
                          height: 10,
                          fit: BoxFit.none,
                        ), 
                        suffix: IconButton(onPressed:() {
                          setState(() {
                            obscure=!obscure;
                          });
                        }, 
                        icon:obscure?Icon(Icons.visibility_off):SvgPicture.asset('assets/icons/view.svg',width:22,height:22,fit: BoxFit.none)),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: AppColors.grey100),
                    ),
                     focused: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: AppColors.grey100)), 
                          enabled:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: AppColors.grey100)),
                           obscuretext:obscure
                           ),
                           CustomElevated(
                            text:StringTranslateExtension('login').tr(),
                            height:48,
                             width:MediaQuery.of(context).size.width * 0.93,
                              onPressed:(){
                                 //not finished
                              }, 
                              color:AppColors.main500, 
                              background: AppColors.main500, textColor:AppColors.yellow
                              ),
                              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        StringTranslateExtension('ques-login').tr(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(AppRouter.register);
                        },
                        child: Text(
                          StringTranslateExtension('register').tr(),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.main500,
                          ),
                        ),
                      ),
                    ],
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
