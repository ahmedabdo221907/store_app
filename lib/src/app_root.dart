import 'package:flutter/material.dart';
import 'package:store/screens/store_screen.dart';
import 'package:store/screens/update_producr_page.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      routes:  {
      StoreScreen.id :(context) => const StoreScreen(),
      UpdateProductPage.id :(context) => UpdateProductPage()
      },
      initialRoute:StoreScreen.id,
    );
  }
}