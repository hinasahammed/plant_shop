import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plant_shop/res/assets/image/image_assets.dart';
import 'package:plant_shop/res/components/custom_button.dart';
import 'package:plant_shop/res/components/custom_textformfield.dart';
import 'package:plant_shop/view/home/home_view.dart';
import 'package:plant_shop/view/signup/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageAssets.background,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.asset(
              ImageAssets.logo,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Welcome to GreenHub',
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'LOGIN',
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(10),
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                              btnTitle: 'LOGIN',
                            ),
                          ),
                          const Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create New Account? ',
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (ctx) => const SignupView(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Signup',
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
