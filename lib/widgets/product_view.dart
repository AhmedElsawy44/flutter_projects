import 'package:flutter/material.dart';
import 'package:iti_project/res/app_colors.dart';
import 'package:iti_project/res/text_style.dart';
import 'package:iti_project/res/app_strings.dart';

class FurntureItem extends StatefulWidget {
  const FurntureItem({super.key, required this.img, required this.title, required this.price, required this.description});
  final String img;
  final String title;
  final double price;
  final String description;

  @override
  State<FurntureItem> createState() => _FurntureItemState();
}

class _FurntureItemState extends State<FurntureItem> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.textLight,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 8,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          spacing: 15,
          children: [
            SizedBox(height: 150, child: Image.network(widget.img)),
            Expanded(
              child: Column(
                spacing: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: AppTextStyles.headline,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        color: isLoved ? Colors.red : Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            isLoved = !isLoved;
                          });
                        },
                        iconSize: 24,
                      ),
                    ],
                  ),
                  Text(
                    widget.description,
                    maxLines: 4,
                    style: AppTextStyles.productDesc,
                  ),
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(),
                        ),
                        onPressed: () {},
                        child: Text( '\$${widget.price.toStringAsFixed(2)}',
                          style: AppTextStyles.productPrice,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.secondary,
                          shape: RoundedRectangleBorder(),
                        ),
                        onPressed: () {},
                        child: Text(AppStrings.homeAddToCard),
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
