import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/models/brands.dart';
import 'package:aboutmobiles/screens/brands_detail.dart';
import 'package:aboutmobiles/widgets/brand_details/brand_category_items.dart';
import 'package:flutter/material.dart';

class BrandCategoryScreen extends StatelessWidget {
  const BrandCategoryScreen({super.key, required this.brand});
  final List<Brand> brand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Brand'),
      ),
      backgroundColor: const Color.fromARGB(252, 252, 252, 255),
      body: SizedBox(
        height: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
          ),
          itemCount: brand.length,
          itemBuilder: (ctx, index) => BrandCategoryItems(
            brand: brand[index],
            onSelectBrand: (brand) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BrandsDetailScreen(
                    mobile: dummyMobiles, brandName: brand.title),
              ));
            },
          ),
        ),
      ),
    );
  }
}
