import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plant_shop/res/assets/image/image_assets.dart';
import 'package:plant_shop/res/components/custom_button.dart';
import 'package:plant_shop/view/buyPlant/buy_plant_view.dart';
import 'package:plant_shop/view/cart/cart_view.dart';

class PlantDetails extends StatefulWidget {
  final String imageUrl;
  final String title;
  const PlantDetails({super.key, required this.imageUrl, required this.title});

  @override
  State<PlantDetails> createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  List<String> imageAsset = [
    ImageAssets.aloe,
    ImageAssets.parlor,
  ];

  List<String> title = [
    'Aloe',
    'Parlor palm',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.imageUrl,
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(
              widget.title,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(20),
            Text(
              'View more',
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: imageAsset.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: .9,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        imageAsset[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
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
                          builder: (ctx) => const CartView(),
                        ),
                      );
                    },
                    btnTitle: 'Cart',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
