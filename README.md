# 📋 Overview
This Flutter application enables users to:
 - Complete onboarding with a multi-page introduction flow shown only on first launch.
 - Earn and store points by scanning QR codes using the device camera.
 - Redeem rewards using accumulated points through a confirmation dialog and secure transaction logic.
 - Persist points locally using SharedPreferences so users don’t lose their points after restarting the app.

# System Architecture
lib/
├── core/
│   ├── di/
│   │   ├── dependency injection 
│   ├── utils/
│   │   ├── constants.dart                        # app constants
│   │   └── extentions.dart                       # for navigation
│   │   └── shared_preference_helper.dart         # shared preference
│   │   └── spacing.dart                          # handle spacing
│   ├── theming/
│   │   ├── colors.dart                  # constants colors
│   │   ├── font_weight_helper.dart      # Typography weights
│   │   └── styles.dart                  # text styles
│   └── widgets/
│       ├── custom_app_button.dart     # Custom button component
├── Data/
│   └── data_source/
│   │     ├── reward_service.dart         #get reward data
│   └── models/
│   │     ├── reward_model.dart           #reward model
├── presentaion/
│   └── controllers/
│   │     ├── onboarding_controller.dart         
│   │     ├── rewards/
│   │           ├── rewards_state.dart         
│   │           ├── rewards_cubit.dart         
│   │     ├── points/
│   │           ├── points_state.dart        #handle user points 
│   │           ├── points_cubit.dart    
│   └── view/
│   │     ├── screens/
│   │           ├── confirm_scan_view.dart   
│   │           ├── onboarding_view.dart      
│   │           ├── qr_view.dart      
│   │           ├── redeem_reward_view.dart      
│   │           ├── rewards_view.dart  
│   │     ├── widgets/
│   │           ├── custom_bottom_nav_bar.dart   
│   │           ├── machine_info.dart      
│   │           ├── onboarding_next_button.dart      
│   │           ├── onboarding_page.dart      
│   │           ├── onboarding_skip_button.dart 
│   │           ├── redeem_alert_dialog.dart   
│   │           ├── reward_icon.dart      
│   │           ├── reward_item_list.dart      
│   │           ├── reward_item.dart      
│   │           ├── rewards_bloc_builder.dart 
│   │           ├── total_points_container.dart 
│ 
│ 
└── drop_me.dart
└── main.dart
# Demo
![App Demo](https://github.com/user-attachments/assets/32ad8148-6fdb-46cb-9f74-614455c68416)

# screenshots
<p align="center">
  <img src="https://github.com/user-attachments/assets/5169a008-5ceb-4d52-a87b-dc78e2214592" alt="Screen 1" width="45%" />
  <img src="https://github.com/user-attachments/assets/deeec03d-952a-4426-b0a3-b2f2c1d477d7" alt="Screen 2" width="45%" />
</p>


