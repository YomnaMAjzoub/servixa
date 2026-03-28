import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:servixass/common/widgets/gradient.dart';
import 'package:servixass/core/constants/app_colors.dart';
import 'package:servixass/core/routing/app_router.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradient(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColors.black),
                  onPressed: () {
                    Get.offNamed(AppRouter.register);
                  },
                ),
              ),

              const SizedBox(height: 30),
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.mail_outline,
                  size: 40,
                  color:AppColors.main500,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Verification Code",
                style: TextStyle(
                  fontSize: 22,
                  color:AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "We sent a 6-digit code to\n+1 (555) ***-1234",
                textAlign: TextAlign.center,
                style: TextStyle(color:AppColors.grey200),
              ),

              const SizedBox(height: 40),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.symmetric(
                  horizontal:20,
                  vertical: 25,
                ),
                decoration: BoxDecoration(
                  color:AppColors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    PinCodeTextField(

                      appContext: context,
                      length:4,
                      keyboardType: TextInputType.number,
                      animationType: AnimationType.fade,
                      enableActiveFill: true,
                      cursorColor: AppColors.main500,
                      showCursor: false,

                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),

                      pinTheme: PinTheme(    
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),
                        fieldHeight: 55,
                        fieldWidth: 45,
                        inactiveColor:AppColors.grey200,
                        inactiveFillColor:AppColors.grey50,

                        selectedColor:AppColors.main500,
                        selectedFillColor:AppColors.white,

                        activeColor:AppColors.main500,
                        activeFillColor:AppColors.white,
                      ),

                      onChanged: (value) {},
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Resend code in 00:51",
                      style: TextStyle(color:AppColors.grey200),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
