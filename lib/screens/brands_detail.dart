import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/widgets/brand_details/brand_detail_list_items.dart';
import 'package:aboutmobiles/widgets/brand_details/brand_detial_grid_items.dart';
import 'package:flutter/material.dart';

class BrandsDetailScreen extends StatefulWidget {
  const BrandsDetailScreen(
      {super.key, required this.mobile, required this.brandName});

  final List<Mobile> mobile;
  final String brandName;

  @override
  State<BrandsDetailScreen> createState() => _BrandsDetailScreenState();
}

class _BrandsDetailScreenState extends State<BrandsDetailScreen> {
  int _selectedBottomNavItem = 1;
  bool _isSortAscending = false;
  bool _isSortDescending = false;
  bool _showLatestOnly = false;
  bool _isPriceLow = false;
  bool _isPriceHigh = false;
  List<Mobile> _originalMobileList = [];

  @override
  void initState() {
    super.initState();
    // Copy the original mobile list when the screen initializes
    _originalMobileList = List.from(widget.mobile);
  }

  void _toggleLatestOnly(bool value) {
    setState(() {
      _showLatestOnly = value;

      if (_showLatestOnly) {
        // Show only the latest mobiles with category "latestmobile"
        List<Mobile> filteredMobiles = _originalMobileList
            .where((mobile) => mobile.category == 'latestmobile')
            .toList();
        widget.mobile.clear();
        widget.mobile.addAll(filteredMobiles);
      } else {
        // Show all mobiles (restore the original list)
        widget.mobile.clear();
        widget.mobile.addAll(_originalMobileList);
      }
    });
  }

  void _showSortDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          title: Container(
            alignment: Alignment.center,
            child: Text(
              'Samsung',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 22,
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.8),
                  ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SwitchListTile(
                title: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text('Latest Mobiles'),
                ),
                value: _showLatestOnly,
                onChanged: (newValue) {
                  setState(() {
                    _toggleLatestOnly(newValue);
                  });
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
              SwitchListTile(
                title: const Text('Name A-Z'),
                value: _isSortAscending,
                onChanged: (newValue) {
                  setState(() {
                    _isSortAscending = newValue;
                    _isSortDescending =
                        false; // Set the descending flag to false
                    _sortList(_isSortAscending, _isSortDescending, _isPriceLow,
                        _isPriceHigh);
                  });
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
              SwitchListTile(
                title: const Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text('Name Z-A'),
                ),
                value: _isSortDescending,
                onChanged: (newValue) {
                  setState(() {
                    _isSortDescending = newValue;
                    _isSortAscending = false; // Set the ascending flag to false
                    _sortList(_isSortAscending, _isSortDescending, _isPriceLow,
                        _isPriceHigh);
                  });
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
              SwitchListTile(
                title: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text('Price Low-High'),
                ),
                value: _isPriceLow,
                onChanged: (newValue) {
                  setState(() {
                    _isPriceLow = newValue;
                    _isPriceHigh = false; // Set the ascending flag to false
                    _sortList(_isSortAscending, _isSortDescending, _isPriceLow,
                        _isPriceHigh);
                  });
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
              SwitchListTile(
                title: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text('Price High-Low'),
                ),
                value: _isPriceHigh,
                onChanged: (newValue) {
                  setState(() {
                    _isPriceHigh = newValue;
                    _isPriceLow = false; // Set the ascending flag to false
                    _sortList(_isSortAscending, _isSortDescending, _isPriceLow,
                        _isPriceHigh);
                  });
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          ),
        );
      },
    );
  }

  int extractNumber(String priceString) {
    // Remove any non-numeric characters from the price string
    String numericString = priceString.replaceAll(RegExp(r'[^0-9]'), '');

    // Parse the numeric string to an integer and return it
    return int.parse(numericString);
  }

  void _sortList(
      bool ascending, bool descending, bool priceLow, bool priceHigh) {
    setState(() {
      if (_showLatestOnly) {
        // Sort the list of mobiles based on the mobile name (A-Z)
        widget.mobile.sort((a, b) {
          return a.brand.compareTo(b.brand);
        });
      } else {
        if (ascending) {
          // Sort the list of mobiles based on the mobile name (A-Z)
          widget.mobile.sort((a, b) {
            return a.brand.compareTo(b.brand);
          });
        } else if (descending) {
          // Sort the list of mobiles based on the mobile name (Z-A)
          widget.mobile.sort((a, b) {
            return b.brand.compareTo(a.brand);
          });
        } else if (priceLow) {
          widget.mobile.sort((a, b) {
            int aPrice = extractNumber(a.price);
            int bPrice = extractNumber(b.price);
            return aPrice.compareTo(bPrice);
          });
        }

// Add sorting based on price (High to Low)
        else if (priceHigh) {
          widget.mobile.sort((a, b) {
            int aPrice = extractNumber(a.price);
            int bPrice = extractNumber(b.price);
            return bPrice.compareTo(aPrice);
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget listView = SizedBox(
      height: double.infinity,
      child: ListView.builder(
        itemCount: widget.mobile
            .where((mobile) => mobile.brand == widget.brandName)
            .toList()
            .length,
        itemBuilder: (ctx, index) => BrandDetailItems(
          mobile: widget.mobile
              .where((mobile) => mobile.brand == widget.brandName)
              .toList()[index],
        ),
      ),
    );

    Widget gridView = SizedBox(
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: widget.mobile
            .where((mobile) => mobile.brand == widget.brandName)
            .toList()
            .length,
        itemBuilder: (ctx, index) => BrandDetailGridItems(
          mobile: widget.mobile
              .where((mobile) => mobile.brand == widget.brandName)
              .toList()[index],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Samsung',
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 22,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
              ),
        ),
      ),
      backgroundColor: const Color.fromARGB(252, 252, 252, 255),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        currentIndex: _selectedBottomNavItem,
        onTap: (index) {
          if (index == 0) {
            // Sort By item clicked, show the sort dialog
            _showSortDialog();
          } else {
            setState(() {
              _selectedBottomNavItem = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            label: 'Sort By',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Grid View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_alt),
            label: 'Filter',
          ),
        ],
      ),
      body: Stack(
        children: [
          Visibility(
            visible: _selectedBottomNavItem == 1,
            child: listView,
          ),
          Visibility(
            visible: _selectedBottomNavItem == 2,
            child: gridView,
          ),
        ],
      ),
    );
  }
}
