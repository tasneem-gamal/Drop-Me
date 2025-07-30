# 📋 Overview
This Flutter application enables users to:
 - Complete onboarding with a multi-page introduction flow shown only on first launch.
 - Earn and store points by scanning QR codes using the device camera.
 - Redeem rewards using accumulated points through a confirmation dialog and secure transaction logic.
 - Persist points locally using SharedPreferences so users don’t lose their points after restarting the app.

# System Architecture
```bash
lib/
├── core/
│   ├── di/
│   │   └── dependency injection 
│   ├── utils/
│   │   ├── constants.dart                # app constants
│   │   ├── extentions.dart               # for navigation
│   │   ├── shared_preference_helper.dart # shared preference
│   │   └── spacing.dart                  # handle spacing
│   ├── theming/
│   │   ├── colors.dart                   # constants colors
│   │   ├── font_weight_helper.dart       # typography weights
│   │   └── styles.dart                   # text styles
│   └── widgets/
│       └── custom_app_button.dart        # custom button component
├── Data/
│   ├── data_source/
│   │   └── reward_service.dart           # get reward data
│   └── models/
│       └── reward_model.dart             # reward model
├── presentation/
│   ├── controllers/
│   │   ├── onboarding_controller.dart    
│   │   ├── rewards/
│   │   │   ├── rewards_state.dart        
│   │   │   └── rewards_cubit.dart        
│   │   └── points/
│   │       ├── points_state.dart         # handle user points 
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
<video src="https://github.com/user-attachments/assets/71386cfd-fb4f-4c40-b3be-16ee285570de" controls width="100%"></video>



# screenshots



