import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plant_shop/res/assets/image/image_assets.dart';
import 'package:plant_shop/res/components/custom_button.dart';
import 'package:plant_shop/res/components/custom_textformfield.dart';
import 'package:plant_shop/view/home/home_view.dart';

class BuyPlantView extends StatelessWidget {
  const BuyPlantView({super.key});

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
              'Add Plants',
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
                      labelText: 'Plant name',
                    ),
                    const Gap(10),
                    Text(
                      'About',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      labelText: 'About',
                      isMax: 4,
                    ),
                    const Gap(10),
                    Text(
                      'Image',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      labelText: 'Upload Image',
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
                        btnTitle: 'Add',
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
