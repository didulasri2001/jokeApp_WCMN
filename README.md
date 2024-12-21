# Daily Laughs - Flutter Jokes App

A modern Flutter application that delivers a collection of jokes with offline caching support. Built using Material Design 3 principles, this app provides a seamless user experience for viewing and enjoying jokes, even without an internet connection.

## Features

- **Modern UI**: Clean and intuitive interface using Material Design 3
- **Offline Support**: Caches jokes for offline viewing
- **Interactive Jokes**: Expandable cards with setup and punchline
- **Real-time Updates**: Refresh functionality to fetch new jokes
- **Error Handling**: Graceful handling of network issues
- **Responsive Design**: Works across different screen sizes
- **Smooth Animations**: Engaging transitions and interactions

## Prerequisites

Before running the project, ensure you have the following installed:
- Flutter SDK (latest version)
- Dart SDK
- Android Studio or VS Code with Flutter extensions
- A physical device or emulator for testing

## Installation

1. Clone the repository:
```bash
git clone https://github.com/didulasri2001/jokeApp_WCMN.git
```

2. Navigate to the project directory:
```bash
cd jokes-app
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart           # Main application entry point
├── models/
│   └── joke.dart       # Joke data model
├── services/
│   └── jokes_service.dart  # API and caching service
└── widgets/
    └── joke_card.dart  # Custom joke card widget
```

## Usage

1. Launch the app
2. Jokes will automatically load from cache (if available) and then fetch new ones
3. Tap on any joke card to reveal the punchline
4. Use the refresh button to fetch new jokes
5. Offline mode will automatically activate when no internet connection is available

## Key Components

### JokesService
Handles API calls and local caching of jokes:
- Fetches jokes from the remote server
- Stores jokes in local cache
- Retrieves cached jokes when offline

### JokeCard Widget
Custom widget for displaying jokes:
- Animated expansion/collapse
- Material Design styling
- Interactive tap functionality
- Visual feedback for user interactions

## Styling

The app uses a custom Material 3 theme with:
- Dynamic color scheme based on purple seed color
- Elevated cards with rounded corners
- Consistent spacing and typography
- Icon integration for visual enhancement

## Error Handling

The app includes robust error handling:
- Network error detection
- Offline mode indication
- Cached content access
- User-friendly error messages
- Retry functionality

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Known Issues

- [List any known issues or limitations]
- [Include planned improvements]

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  # Add your other dependencies here
```

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Material Design team for the design system
- [Add any other acknowledgments]

## Contact

Developer - Didula Sri Lakpriya
Email - [diduladdsl@gmail.com]()

---


