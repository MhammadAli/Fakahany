# Fakahany 🍎🥭🍌
*فكهاني - Your Digital Fruit Market*

A modern Flutter mobile application for browsing and purchasing fresh fruits. Fakahany (Arabic for "my fruit vendor") brings the traditional fruit market experience to your mobile device with a beautiful, user-friendly interface that supports Arabic language and RTL layout.

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

## 📱 Screenshots

*Screenshots will be available once the app is built and running*

## 🚀 Getting Started

### Prerequisites
- **Flutter SDK** (version 3.5.4 or higher)
- **Dart SDK** (included with Flutter)
- **Firebase CLI** (for Firebase configuration)
- **Android Studio** / **VS Code** with Flutter extensions
- **iOS development**: Xcode (for iOS builds)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MhammadAli/Fakahany.git
   cd Fakahany
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Setup**
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Authentication and Firestore Database
   - Download and place configuration files:
     - `google-services.json` in `android/app/`
     - `GoogleService-Info.plist` in `ios/Runner/`

4. **Configure Firebase Authentication**
   - Enable Email/Password authentication
   - Configure Google Sign-In (optional)
   - Configure Facebook Login (optional)

5. **Run the application**
   ```bash
   # For debug build
   flutter run
   
   # For release build
   flutter run --release
   ```

### Firebase Configuration

The app connects to the Firebase project `el-fakahany`. You'll need to:

1. **Set up Firestore Database** with the following collection:
   - `users` - User profile information

2. **Authentication Methods**:
   - Email/Password (required)
   - Google Sign-In (optional)
   - Facebook Login (optional)

3. **Security Rules**: Configure Firestore security rules according to your requirements.

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

## 🎨 Design System

### Colors
- **Primary Color**: Custom brand color defined in `app_colors.dart`
- **Background**: Clean white background
- **Text**: Using Cairo font family for Arabic support

### Typography
- **Font Family**: Cairo (Regular, Medium, SemiBold, Bold)
- **Text Styles**: Defined in `app_text_styles.dart`

### Icons & Images
- **Vector Graphics**: SVG icons for scalability
- **Assets**: Organized in `assets/images/` directory
- **Launcher Icon**: Custom fruit-themed app icon

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage
```

## 📱 Building for Production

### Android
```bash
flutter build apk --release
# or for App Bundle
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Code Style
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex business logic
- Maintain the existing architecture patterns

For detailed development guidelines, see [CONTRIBUTING.md](CONTRIBUTING.md) and [Development Guide](docs/DEVELOPMENT.md).

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**MhammadAli**
- GitHub: [@MhammadAli](https://github.com/MhammadAli)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- The open-source community for various packages used

---

*Built with ❤️ using Flutter*
