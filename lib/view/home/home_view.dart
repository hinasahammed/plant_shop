import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/res/assets/image/image_assets.dart';
import 'package:plant_shop/view/plantDetails/plant_details.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> imageAsset = [
    ImageAssets.monstera,
    ImageAssets.pathos,
    ImageAssets.parlor,
    ImageAssets.aloe,
  ];

  List<String> title = [
    'Monstera',
    'Pothos',
    'Parlor palm',
    'Aloe',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            ImageAssets.logo,
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
                childAspectRatio: .6,
              ),
              itemBuilder: (context, index) {
                return OpenContainer(
                  transitionDuration: const Duration(milliseconds: 400),
                  closedBuilder: (context, openContainer) => Card(
                    child: InkWell(
                      onTap: openContainer,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              imageAsset[index],
                              fit: BoxFit.cover,
                              height: 180,
                            ),
                            Text(
                              title[index],
                              style: theme.textTheme.bodyLarge!.copyWith(
                                color: theme.colorScheme.onSurface,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  openBuilder: (context, action) => PlantDetails(
                    imageUrl: imageAsset[index],
                    title: title[index],
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
