import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plant_shop/res/assets/image/image_assets.dart';
import 'package:plant_shop/res/components/custom_button.dart';
import 'package:plant_shop/res/components/custom_textformfield.dart';
import 'package:plant_shop/view/home/home_view.dart';
import 'package:plant_shop/view/login/login_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(ImageAssets.logo),
            Text(
              'Signup',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Enter your name',
                    ),
                    const Gap(10),
                    Text(
                      'Mobile',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      prefixIcon: const Icon(Icons.call),
                      labelText: 'Enter your mobile number',
                    ),
                    const Gap(10),
                    Text(
                      'Email',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      prefixIcon: const Icon(Icons.email),
                      labelText: 'Enter your email id',
                    ),
                    const Gap(10),
                    Text(
                      'Password',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Enter your password',
                    ),
                    const Gap(40),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: CustomButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => const HomeView(),
                            ),
                          );
                        },
                        btnTitle: 'Sign Up',
                      ),
                    ),
                    const Gap(30),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => const LoginView(),
                            ),
                          );
                        },
                        child: Text(
                          'Back to Login',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ),
                    const Gap(10)
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
