import 'package:flutter/material.dart';
import 'package:plant_shop/res/assets/image/image_assets.dart';
import 'package:plant_shop/res/components/custom_button.dart';
import 'package:plant_shop/view/buyPlant/buy_plant_view.dart';
import 'package:plant_shop/view/home/home_view.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<String> imageAsset = [
    ImageAssets.parlor,
    ImageAssets.pathos,
  ];

  List<String> title = [
    'Monstera',
    'Pothos',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            ListView.builder(
              itemCount: imageAsset.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: Image.asset(imageAsset[index]),
                    title: Text(title[index]),
                    trailing: const Icon(Icons.delete_outline),
                  ),
                );
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const BuyPlantView(),
                        ),
                      );
                    },
                    btnTitle: 'Buy',
                  ),
                ),
                SizedBox(
                  width: 150,
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
                    btnTitle: 'Home',
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
