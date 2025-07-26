import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
       children: const [
      CategoryItem(title: 'Chairs', icon: Icons.chair),
      SizedBox(width: 22),
      CategoryItem(title: 'Beds', icon: Icons.bed),
      SizedBox(width: 22),
      CategoryItem(title: 'Tables', icon: Icons.table_bar),
      SizedBox(width: 22),
      CategoryItem(title: 'Sofas', icon: Icons.weekend),
      SizedBox(width: 22),
      CategoryItem(title: 'Lamps', icon: Icons.light),
      // You can add more items here
    ],
    
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const CategoryItem({required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: const Color.fromARGB(255, 157, 145, 108)),
        const SizedBox(width: 50,),
        Text(title, style: const TextStyle(color: Color.fromARGB(255, 125, 90, 15),fontWeight: FontWeight.w400,fontSize: 16),),
      ],
    );
  }
}
