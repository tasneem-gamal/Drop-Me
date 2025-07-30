import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/presentation/view/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {

  int _selectedIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        title: Text(
          'Drop Me',
          style: CustomTextStyles.font24WhiteMedium(context),
        ),
      ),
      body: _selectedIndex == 0 ? QrScreenBody() : SizedBox(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex, 
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      ),
    );
  }
}


class QrScreenBody extends StatelessWidget {
  const QrScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}