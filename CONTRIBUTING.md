# Contributing to Fakahany

We love your input! We want to make contributing to Fakahany as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## Development Process

We use GitHub to host code, to track issues and feature requests, as well as accept pull requests.

## Pull Requests

Pull requests are the best way to propose changes to the codebase. We actively welcome your pull requests:

1. Fork the repo and create your branch from `master`.
2. If you've added code that should be tested, add tests.
3. If you've changed APIs, update the documentation.
4. Ensure the test suite passes.
5. Make sure your code lints.
6. Issue that pull request!

## Code Style

### Dart/Flutter Guidelines
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) style guidelines
- Use `flutter analyze` to check for linting issues
- Format code using `dart format .`
- Use meaningful variable and function names
- Add doc comments for public APIs

### Architecture
- Follow the existing Clean Architecture pattern
- Keep the separation between presentation, domain, and data layers
- Use BLoC/Cubit for state management
- Implement proper error handling with custom exceptions

### Git Commit Messages
- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests liberally after the first line

## Testing

- Write unit tests for business logic
- Write widget tests for UI components
- Ensure all tests pass before submitting a PR
- Maintain or improve code coverage

### Running Tests
```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Analyze code
flutter analyze
```

## Bug Reports

We use GitHub issues to track public bugs. Report a bug by [opening a new issue](../../issues).

**Great Bug Reports** tend to have:

- A quick summary and/or background
- Steps to reproduce
  - Be specific!
  - Give sample code if you can
- What you expected would happen
- What actually happens
- Notes (possibly including why you think this might be happening, or stuff you tried that didn't work)

## Feature Requests

We welcome feature requests! Please:

1. Check if the feature has already been requested
2. Provide a clear and detailed explanation of the feature
3. Explain why this feature would be useful
4. Provide examples if possible

## Development Setup

1. **Flutter Environment**
   ```bash
   flutter doctor -v
   ```

2. **Dependencies**
   ```bash
   flutter pub get
   ```

3. **Code Generation** (if needed)
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Firebase Setup**
   - Follow the setup instructions in the main README
   - Ensure you have proper Firebase configuration

## Code Review Process

The core team looks at Pull Requests on a regular basis. After feedback has been given we expect responses within two weeks. After two weeks we may close the pull request if it isn't showing any activity.

## Community

You can chat with the core team on:
- GitHub Issues
- Pull Request discussions

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

## Recognition

Contributors will be recognized in the README.md file and in release notes for significant contributions.

Thank you for contributing! 🎉