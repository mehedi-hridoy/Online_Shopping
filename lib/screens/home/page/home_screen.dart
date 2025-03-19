import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sale Badge
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'SALE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Product Image - Resized
            Center(
              child: Container(
                width: 200,  // Set the width of the image
                height: 200, // Set the height of the image
                child: Image.network(
                  'https://images.unsplash.com/photo-1541643600914-78b084683601?q=80&w=2008&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with actual image URL
                  fit: BoxFit.cover,  // Ensure the image scales appropriately
                ),
              ),
            ),
            SizedBox(height: 12),
            // Product Name
            Text(
              'Blue De Channel ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            // Price
            Text(
              '\$ 1000.00',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'Rp 1.500.000',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(height: 8),
            // Rating & Reviews
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 18),
                SizedBox(width: 4),
                Text(
                  '4.6',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                Text(
                  '86 Reviews',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Three-dot menu (for additional actions)
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.more_vert, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
