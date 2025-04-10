import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:currency_converter/screen/currency_converter_screen.dart';
import 'package:currency_converter/screen/currency_symbole_screen.dart';
import 'package:currency_converter/screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  final List<IconData> iconList = [
    Icons.currency_exchange_rounded,
    Icons.currency_bitcoin_rounded,
  ];
  final List<Widget> _screenList = [HomeScreen(), CurrencySymbolScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[currentIndex],

      /// --- Floating action button --- ///
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CurrencyConverterScreen()));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: AppColors.secondary,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("lib/assets/images/exchange.png"),
        ),
        // other params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            iconList[index],
            size: 35,
            color: isActive ? Colors.lightBlueAccent : Colors.white70,
          );
        },
        activeIndex: currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        backgroundColor: AppColors.primary,
        onTap: (index) => setState(() => currentIndex = index),
        // other params
      ),
    );
  }
}
