# 📋 Overview
This Flutter application enables users to:
 - Complete onboarding with a multi-page introduction flow shown only on first launch.
 - Earn and store points by scanning QR codes using the device camera.
 - Redeem rewards using accumulated points through a confirmation dialog and secure transaction logic.
 - Persist points locally using SharedPreferences so users don’t lose their points after restarting the app.



# 🧩 System Design

lib/
├── core/
│   ├── di/
│   │   └── dependency injection 
│   ├── utils/
│   │   ├── constants.dart
│   │   ├── extentions.dart
│   │   ├── shared_preference_helper.dart
│   │   └── spacing.dart
│   ├── theming/
│   │   ├── colors.dart
│   │   ├── font_weight_helper.dart
│   │   └── styles.dart
│   └── widgets/
│       └── custom_app_button.dart
├── Data/
│   ├── data_source/
│   │   └── reward_service.dart
│   └── models/
│       └── reward_model.dart
├── presentation/
│   ├── controllers/
│   │   ├── onboarding_controller.dart
│   │   ├── rewards/
│   │   │   ├── rewards_state.dart
│   │   │   └── rewards_cubit.dart
│   │   └── points/
│   │       ├── points_state.dart
│   │       └── points_cubit.dart
│   └── view/
│       ├── screens/
│       │   ├── confirm_scan_view.dart
│       │   ├── onboarding_view.dart
│       │   ├── qr_view.dart
│       │   ├── redeem_reward_view.dart
│       │   └── rewards_view.dart
│       └── widgets/
│           ├── custom_bottom_nav_bar.dart
│           ├── machine_info.dart
│           ├── onboarding_next_button.dart
│           ├── onboarding_page.dart
│           ├── onboarding_skip_button.dart
│           ├── redeem_alert_dialog.dart
│           ├── reward_icon.dart
│           ├── reward_item_list.dart
│           ├── reward_item.dart
│           ├── rewards_bloc_builder.dart
│           └── total_points_container.dart
├── drop_me.dart
└── main.dart


# Demo



