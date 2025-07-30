import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/constants.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/core/widgets/custom_app_button.dart';
import 'package:dropme/presentation/view/widgets/machine_info.dart';
import 'package:flutter/material.dart';

class ConfirmScanView extends StatelessWidget {
  const ConfirmScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: ConfirmScanViewBody(),
    );
  }
}

class ConfirmScanViewBody extends StatelessWidget {
  const ConfirmScanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/machine_icon.png', width: 300, height: 300,),
          verticalSpace(context, 16),
          Text(
            "You're now connected to this RVM.",
            textAlign: TextAlign.center,
            style: CustomTextStyles.font18MainColorMedium(context),
          ),
          verticalSpace(context, 16),
          MachineInfo(
            title: 'Branch: ',
            subTitle: 'Maadi',
          ),
          MachineInfo(
            title: 'ٌRVM ID: ', 
            subTitle: 'RVM-178'
          ),
          verticalSpace(context, 24),
          CustomAppButton(
            btnText: 'Deposit',
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

