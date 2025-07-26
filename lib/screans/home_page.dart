import 'package:flutter/material.dart';
import 'package:iti_project/data/dummy_data_products.dart';
import 'package:iti_project/models/products.dart';
import 'package:iti_project/res/app_colors.dart';
import 'package:iti_project/widgets/custom_app_bar.dart';
import 'package:iti_project/widgets/product_list.dart';
import 'package:iti_project/widgets/product_view.dart';
import 'package:iti_project/widgets/search_bar.dart';
import 'package:iti_project/widgets/cutom_bottom_navbar.dart';
import 'package:iti_project/widgets/category_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
    List<Product> products = List.from(dummyProducts);
    
  int _currentIndex = 0;

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
}

  @override
  Widget build(BuildContext context) {
    
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.primaryLight,
                  AppColors.primary,
                  AppColors.primaryDark,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
           
          ),
          Positioned(
            top: screenHeight * 0.01,
            left: 16,
            right: 16,
            child: const CustomAppBar(),
          ),

           Positioned.fill(
            top: screenHeight * 0.29,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 211, 202, 178),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomSearchBar(),
                    const SizedBox(height: 16),
                    const CategoryRow(),
                    const SizedBox(height: 16),
                    FurntureItem(
                      img: 'https://a.1stdibscdn.com/carl-gustaf-hiort-af-ornas-lounge-chair-wood-fabric-finland-1950s-for-sale/1121189/f_455937321751094064419/45593732_datamatics.jpg?disable=upscale&auto=webp&quality=60&width=1400',
                      title: 'chair',
                      description: 'A comfortable chair for your living room.',
                      price: 100.0,
                    ), FurntureItem(
                      img: 'https://a.1stdibscdn.com/carl-gustaf-hiort-af-ornas-lounge-chair-wood-fabric-finland-1950s-for-sale/1121189/f_455937321751094064419/45593732_datamatics.jpg?disable=upscale&auto=webp&quality=60&width=1400',
                      title: 'chair',
                      description: 'A comfortable chair for your living room.',
                      price: 100.0,
                    ), FurntureItem(
                      img: 'https://a.1stdibscdn.com/carl-gustaf-hiort-af-ornas-lounge-chair-wood-fabric-finland-1950s-for-sale/1121189/f_455937321751094064419/45593732_datamatics.jpg?disable=upscale&auto=webp&quality=60&width=1400',
                      title: 'chair',
                      description: 'A comfortable chair for your living room.',
                      price: 100.0,
                    ),
             ProductList(
              onFavorite: (p0) => setState(() {}),
              onAddToCart: (p0) => setState(() {}),
              products: dummyProducts,
             
                    // Add more widgets here if needed
                    ),
          
        ],

      ),
            ),
          ),
          
      ),
      
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
                 child: CustomBottomNavigationBar(
                             currentIndex: _currentIndex,
                             onTap: _onNavTapped,
                      ),
               ),

      
        ]
      )
    );
  }
}
