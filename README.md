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




# 📸 Screenshots
<center>
  <p float="left">
  <img src="https://github.com/user-attachments/assets/9dae814c-feb4-4053-9511-4d4d0ad7d81a" width="300" height="616"> 
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/cb48d303-aa38-412c-ae3e-87ce56ceca1c" width="300" height="616">
</p>
<p float="left">
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/d8a1f7c9-4938-442d-abb0-ae88d09655f7" width="300" height="616">
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/69af7c5b-a005-407e-b61b-b0b990974e26" width="300" height="616">
</p>
<p float="left">
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/e8b52f19-56f6-429c-b896-1180345eeb1e" width="300" height="616">
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/b4d64769-b007-4b6d-8cfd-037b98997dc4" width="300" height="616">
</p>
<p float="left">
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/c2ae17b1-25ee-47ba-a8fb-326aa3547478" width="300" height="616">
<img src="https://github.com/tasneem-gamal/Guidely/assets/156458349/09811fde-f006-4298-a098-66dbf9dab38d" width="300" height="616">
</p>
</center>

<p align="center">
  <img src="" width="45%" />
  <img src="https://github.com/user-attachments/assets/e0950834-aaed-419b-a903-990e744fc7ad" width="45%" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/755a0574-dbc8-45ad-a7d0-ed12cc91807d" width="45%" />
  <img src="https://github.com/user-attachments/assets/35f11ab4-8513-4655-9b6a-3314150036f9" width="45%" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/a9cf6853-ebeb-41d9-bb1d-107d73362519" width="45%" />
  <img src="https://github.com/user-attachments/assets/53a4933d-a2e1-4c63-96cd-1567bace8e9a" width="45%" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/1769959d-2147-4783-9038-f35fce03e142" width="45%" />
  <img src="https://github.com/user-attachments/assets/62fdf87e-84c8-408a-8392-dec46caef8a2" width="45%" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/f3aaf0de-2f31-4246-a3b0-a2ddebc0bc6b" width="45%" />
  <img src="https://github.com/user-attachments/assets/65a18e38-df14-409d-93f0-5624fd46a3e5" width="45%" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/99b93588-811b-4815-9fda-97969a2c37e7" width="45%" />
  <img src="https://github.com/user-attachments/assets/0c71d1b9-a58e-4ecb-9e05-b8063f5cae53" width="45%" />
</p>



