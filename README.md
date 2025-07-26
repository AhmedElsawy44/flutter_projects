# 🛍️ Flutter Marketing App

This is a Flutter-based marketing app built with clean UI components, custom theming, and navigation logic. The app includes multiple screens such as splash, login, OTP, home, and password reset.

---

## ✨ Features

- 🖼️ Splash Screen
- 🔐 Login & OTP Verification
- 🔁 Forget Password Flow
- 🏠 Home Screen with Categories
- 🎨 Custom App Theme (Dark / Light mode)
- 📱 Bottom Navigation Bar & Modal Bottom Sheet

---

## 📸 Screenshots

| Splash | Login | OTP | Forget Password |
|-------|--------|-----|-----------------|
| ![Splash](assets/Screenshot/splash_screen.png) | ![Login](assets/Screenshot/login_screen.png) | ![OTP](assets/Screenshot/otp_screen.png) | ![Forget](assets/Screenshot/forget_password_screen.png) |

<br/>

| Home | Bottom Navigation |
|------|-------------------|
| ![Home](assets/Screenshot/home_screen.png) | ![Bottom Nav](assets/Screenshot/buttom_navBar.png) |

---

## 🛠️ Technologies Used

- **Flutter**
- **Dart**
- **Firebase Auth** (for login & OTP)
- **Custom Widgets** (Theming, Bottom Nav, AppBar, etc.)

---
lib/
├── res/                # Colors, styles, themes
├── models/             # Data models
├── widgets/            # Reusable widgets (AppBar, BottomNav, etc.)
├── screens/            # UI Screens (login, home, otp, etc.)
└── main.dart           # App entry point

## 🚀 Getting Started

```bash
flutter pub get
flutter run
