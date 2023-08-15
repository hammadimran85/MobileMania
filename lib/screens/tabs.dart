import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/screens/brand_category.dart';
import 'package:aboutmobiles/screens/home.dart';
import 'package:aboutmobiles/widgets/sidedrawer/main_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // int _selectedPageIndex = 0;
  // final List<Meal> _favoriteMeals = [];
  // Map<Filter, bool> _selectedFilters = kInitialFilters;

  // void _showInfoMethod(String message) {
  //   ScaffoldMessenger.of(context).clearSnackBars();
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(message),
  //   ));
  // }

  void _setScreen(String identifier) {
    Navigator.of(context).pop();
    if (identifier == 'home') {
      // Navigator.of(context).push(
      //   MaterialPageRoute(
      //     builder: (ctx) => const HomeScreen(),
      //   ),
      // );
    } else if (identifier == 'brands') {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => BrandCategoryScreen(
                brand: dummyBrands,
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();
    var activePagetitle = 'AboutMobile';

    // if (_selectedPageIndex == 1) {
    //   final favortiteMeals = ref.watch(favoriteMealsProvider);
    //   activePage = MealsScreen(
    //     meals: favortiteMeals,
    //     // onToggleFavorite: _toggleMealFavoriteStatus,
    //   );
    //   activePagetitle = 'Favorities';
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePagetitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: (const Icon(Icons.filter_alt)),
          ),
        ],
      ),
      body: activePage,
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
    );
  }
}
