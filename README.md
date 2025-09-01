# Fakahany 🍎🥭🍌

A modern Flutter mobile application for browsing and purchasing fresh fruits. Fakahany brings the traditional fruit market experience to your mobile device with a beautiful, user-friendly interface that supports Arabic language and RTL layout.

## 🌟 Features

### 🔐 Authentication & User Management
- **Firebase Authentication** with email/password
- **Social Login** support (Google, Facebook, Apple)
- **User Profile Management** with persistent data storage
- **Secure Session Management** with automatic login state persistence

### 🏠 Core Functionality
- **Splash Screen** with animated logo and smooth transitions
- **Interactive Onboarding** for new users
- **Home Dashboard** with featured products and categories
- **Search Functionality** to find specific fruits
- **Best Selling Products** showcase
- **Shopping Cart** integration
- **Bottom Navigation** for easy app navigation

### 🌐 Localization & Accessibility
- **Arabic Language Support** with RTL (Right-to-Left) layout
- **Custom Arabic Fonts** (Cairo font family)
- **Responsive Design** that adapts to different screen sizes
- **Clean UI/UX** following Material Design principles

### 🏗️ Technical Features
- **Clean Architecture** with separation of concerns
- **BLoC Pattern** for state management
- **Firebase Integration** (Auth + Firestore)
- **Dependency Injection** using GetIt
- **Error Handling** with custom exceptions and failures
- **Shared Preferences** for local data persistence

## 🛠️ Tech Stack

### Frontend
- **Flutter** - Cross-platform mobile development
- **Dart** - Programming language
- **BLoC/Cubit** - State management
- **Flutter ScreenUtil** - Responsive design

### Backend & Services
- **Firebase Auth** - User authentication
- **Cloud Firestore** - NoSQL database
- **Firebase Core** - Firebase SDK integration

### Key Dependencies
```yaml
dependencies:
  flutter_bloc: ^8.1.6          # State management
  firebase_auth: ^5.3.3         # Authentication
  cloud_firestore: ^5.6.2       # Database
  get_it: ^8.0.2                # Dependency injection
  shared_preferences: ^2.3.3     # Local storage
  flutter_screenutil: ^5.9.3    # Responsive design
  flutter_svg: ^2.0.14          # SVG image support
  dartz: ^0.10.1                # Functional programming
  google_sign_in: ^6.2.2        # Google authentication
  flutter_facebook_auth: ^7.1.1  # Facebook authentication
```

## 📁 Project Structure

```
lib/
├── core/                          # Core functionality
│   ├── errors/                    # Error handling
│   ├── helper_functions/          # Utility functions
│   ├── services/                  # Core services
│   └── widgets/                   # Reusable widgets
├── features/                      # Feature modules
│   ├── auth/                      # Authentication
│   │   ├── data/                  # Data layer
│   │   ├── domain/                # Domain layer
│   │   └── presentation/          # UI layer
│   ├── home/                      # Home screen
│   ├── splash/                    # Splash screen
│   ├── on_boarding/               # Onboarding flow
│   └── best_selling_fruits/       # Best selling products
├── generated/                     # Generated files
├── l10n/                         # Localization
├── utils/                        # Utilities and constants
├── constants.dart                # App constants
└── main.dart                     # App entry point
```

### Architecture Pattern

The app follows **Clean Architecture** principles:

- **Presentation Layer**: UI components, BLoC/Cubit state management
- **Domain Layer**: Business logic, entities, repository contracts
- **Data Layer**: Repository implementations, data sources, models

*Built with ❤️ using Flutter*
