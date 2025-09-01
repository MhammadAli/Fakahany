# Development Guide

This document provides additional information for developers working on the Fakahany project.

## Development Environment

### Required Tools
- Flutter SDK 3.5.4+
- Dart SDK (included with Flutter)
- Android Studio / IntelliJ IDEA or VS Code
- Firebase CLI
- Git

### VS Code Extensions (Recommended)
- Flutter
- Dart
- GitLens
- Firebase Explorer
- Arabic Language Pack (for UI testing)

### Android Studio Plugins (Recommended)
- Flutter
- Dart
- Firebase Assistant

## Project Architecture

### Clean Architecture Layers

```
┌─────────────────┐
│   Presentation  │ ← UI, BLoC/Cubit, Widgets
├─────────────────┤
│     Domain      │ ← Entities, Use Cases, Repository Interfaces
├─────────────────┤
│      Data       │ ← Repository Implementations, Data Sources, Models
└─────────────────┘
```

### Directory Structure Explanation

- **`lib/core/`**: Shared functionality across features
  - `errors/`: Custom exceptions and failure classes
  - `services/`: Core services (Firebase, SharedPreferences, etc.)
  - `widgets/`: Reusable UI components

- **`lib/features/`**: Feature-based modules
  - Each feature follows the same structure: `data/`, `domain/`, `presentation/`

- **`lib/utils/`**: Utility classes and constants
  - `app_colors.dart`: Color palette
  - `app_text_styles.dart`: Typography styles
  - `backend_endpoints.dart`: API endpoints

## State Management

We use **BLoC pattern** for state management:

### BLoC Structure
```dart
// Event
abstract class AuthEvent {}
class LoginEvent extends AuthEvent {}

// State
abstract class AuthState {}
class AuthLoadingState extends AuthState {}
class AuthSuccessState extends AuthState {}
class AuthErrorState extends AuthState {}

// BLoC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // Implementation
}
```

### Best Practices
- Keep BLoCs focused on single responsibility
- Use Cubit for simple state management
- Handle loading, success, and error states
- Emit states immutably

## Firebase Integration

### Services Used
- **Firebase Auth**: User authentication
- **Cloud Firestore**: Data storage
- **Firebase Core**: SDK initialization

### Authentication Flow
1. User enters credentials
2. AuthRepo validates with Firebase Auth
3. User data stored in Firestore
4. Session persisted locally
5. User navigated to home screen

### Data Structure
```
users/
├── {userId}/
│   ├── name: string
│   ├── email: string
│   └── uId: string
```

## Localization

The app supports Arabic language with RTL layout:

### Current Implementation
- Arabic text direction (RTL)
- Cairo font family for Arabic text
- Locale set to Arabic (`ar`)

### Adding New Translations
1. Add text to `lib/l10n/intl_en.arb`
2. Run `flutter packages pub run intl_utils:generate`
3. Use generated strings in UI

## Asset Management

### Images
- SVG files preferred for icons and illustrations
- PNG for photos and complex images
- All assets in `assets/images/`

### Fonts
- Cairo font family (Regular, Medium, SemiBold, Bold)
- Stored in `assets/fonts/`

## Testing Strategy

### Test Types
1. **Unit Tests**: Business logic and utilities
2. **Widget Tests**: UI components
3. **Integration Tests**: Full app flows

### Testing Guidelines
- Test public APIs and user interactions
- Mock external dependencies (Firebase, etc.)
- Use meaningful test descriptions
- Maintain good code coverage

## Code Quality

### Linting Rules
The project uses Flutter lints with additional rules:
- `prefer_const_constructors`
- `prefer_const_declarations`
- `prefer_const_constructors_in_immutables`
- `prefer_const_literals_to_create_immutables`

### Code Formatting
```bash
# Format all Dart files
dart format .

# Analyze code
flutter analyze

# Fix common issues
dart fix --apply
```

## Performance Considerations

### Responsive Design
- Use `flutter_screenutil` for responsive layouts
- Define dimensions relative to screen size
- Test on different screen sizes

### Memory Management
- Dispose controllers and streams properly
- Use `const` constructors where possible
- Optimize image assets

### Build Optimization
- Use `--release` mode for production builds
- Enable code shrinking and obfuscation
- Optimize app bundle size

## Debugging

### Common Issues
1. **Firebase Configuration**: Ensure proper setup of `google-services.json` and `GoogleService-Info.plist`
2. **State Management**: Check BLoC event emission and state handling
3. **Navigation**: Verify route names and navigation context

### Debugging Tools
- Flutter Inspector
- Dart DevTools
- Firebase Debug View
- Network inspection

## Build & Deployment

### Debug Build
```bash
flutter run
```

### Release Build
```bash
# Android
flutter build apk --release
flutter build appbundle --release

# iOS
flutter build ios --release
```

### Continuous Integration
Consider setting up:
- Automated testing on PR
- Code quality checks
- Automated builds

## Performance Monitoring

### Firebase Performance
- Monitor app startup time
- Track network requests
- Monitor screen rendering

### Crashlytics
- Track app crashes
- Monitor user sessions
- Identify problematic areas

## Security Considerations

### Authentication
- Validate input on both client and server
- Use secure session management
- Implement proper error handling

### Data Protection
- Follow Firebase security rules
- Encrypt sensitive local data
- Validate user permissions

## Resources

### Documentation
- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase for Flutter](https://firebase.flutter.dev/)
- [BLoC Library](https://bloclibrary.dev/)

### Community
- [Flutter Community](https://flutter.dev/community)
- [Firebase Community](https://firebase.google.com/community)

This guide should help you get started with development. For specific questions, please check the existing issues or create a new one.