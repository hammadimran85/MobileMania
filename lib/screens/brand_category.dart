import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/models/brands.dart';
import 'package:aboutmobiles/providers/latest_mobile_api_service.dart';
import 'package:aboutmobiles/screens/brands_detail.dart';
import 'package:aboutmobiles/widgets/api_call/api_brand.dart';
import 'package:aboutmobiles/widgets/brand_details/brand_category_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BrandCategoryScreen extends ConsumerWidget {
  BrandCategoryScreen({super.key, required this.brand});
  final List<Brand> brand;
  final ApiBrand apiBrand = ApiBrand();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mobileDataSnapshot = ref.watch(mobileList);
    return FutureBuilder(
        future: apiBrand.loadItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: SizedBox(
                  width: 200, height: 200, child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Use the API data here
            // For example, you can create a ListView to display the data
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
                  itemCount: snapshot.data.length,
                  itemBuilder: (ctx, index) => BrandCategoryItems(
                    brand: snapshot.data[index],
                    onSelectBrand: (snapshot) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BrandsDetailScreen(
                            mobile: mobileDataSnapshot,
                            brandName: snapshot.title),
                      ));
                    },
                  ),
                ),
              ),
            );
          }
        });
  }
}
