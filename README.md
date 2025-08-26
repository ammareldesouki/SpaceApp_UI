# 🌌 Space Explorer - Flutter App

A beautiful and interactive Flutter application that takes you on a journey through our solar system. Explore planets, learn fascinating facts, and discover the wonders of space with this immersive mobile app.



## 📱 Screenshots
![image alt](https://github.com/am5u/SpaceApp_UI/blob/66184fb82ebae0bcc43c302a2ebb18dad9d4040b/ui.png)


## 🚀 Features

### ✨ Interactive Planet Exploration
- **9 Celestial Bodies**: Explore the Sun and all 8 planets of our solar system
- **Smooth Navigation**: Swipe through planets with intuitive arrow controls
- **Rich Information**: Detailed descriptions and scientific data for each celestial body

### 🎨 Beautiful UI/UX
- **Dark Space Theme**: Immersive black background with space-themed graphics
- **Responsive Design**: Optimized for various screen sizes and orientations
- **Smooth Animations**: Fluid transitions between screens and interactions
- **Custom Navigation**: Elegant navigation buttons with space aesthetics

### 📱 App Screens

#### 1. Welcome Screen
- Stunning space background with "Explore The Universe" title
- Single "Explore" button to begin the journey
- Sets the mood for the space exploration experience

#### 2. Home Screen
- Interactive planet carousel with navigation arrows
- Large planet images with smooth transitions
- Planet name display and exploration button
- Space-themed background graphics

#### 3. About Screen
- Detailed information about each celestial body
- High-quality planet images
- Scientific data including:
  - Distance from Sun
  - Orbital period
  - Radius and mass
  - Gravity and surface area
- Comprehensive descriptions of each planet's characteristics

## 🪐 Available Celestial Bodies

1. **Sun** - Our star and the center of the solar system
2. **Mercury** - The smallest and closest planet to the Sun
3. **Venus** - Earth's "sister planet" with extreme temperatures
4. **Earth** - Our home planet and the only known world with life
5. **Mars** - The "Red Planet" with the largest volcano in the solar system
6. **Jupiter** - The largest planet with the Great Red Spot
7. **Saturn** - Famous for its stunning ring system
8. **Uranus** - The "sideways" planet with a pale blue-green color
9. **Neptune** - The windiest planet with the strongest storms

## 🛠️ Technical Details

### Built With
- **Flutter** - Cross-platform mobile development framework
- **Dart** - Programming language
- **Material Design** - UI/UX design system

### Dependencies
- `device_preview: ^1.2.0` - For responsive design testing
- `google_fonts: ^6.2.1` - Custom typography (Space Grotesk font)
- `cupertino_icons: ^1.0.8` - iOS-style icons

### Project Structure
```
lib/
├── main.dart              # App entry point
├── data.dart              # Planet data and information
├── Screens/
│   ├── welcome.dart       # Welcome screen
│   ├── home.dart          # Main planet selection screen
│   └── about_screen.dart  # Detailed planet information
└── widgets/
    └── navigation_buttom.dart  # Custom navigation component
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version 3.7.2 or higher)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd space_ui
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

**Android APK:**
```bash
flutter build apk
```

**iOS:**
```bash
flutter build ios
```

The app features:
- Welcome screen with space-themed graphics
- Interactive planet carousel
- Detailed planet information pages
- Smooth navigation between screens

## 🎯 Key Features

- **No Backend Required**: All data is stored locally in the app
- **Offline Capable**: Works without internet connection
- **Cross-Platform**: Runs on both Android and iOS
- **Responsive**: Adapts to different screen sizes
- **Educational**: Provides accurate scientific information about planets

## 🔧 Customization

### Adding New Planets
To add a new celestial body, edit the `lib/data.dart` file and add a new entry to the `planets` list with the required fields:
- `name`: Planet name
- `image`: Path to planet image in assets
- `about`: Detailed description
- `feature`: List of scientific facts

### Modifying UI
- Colors and themes can be customized in the respective screen files
- Images can be replaced in the `assets/images/` directory
- Fonts can be changed by modifying the Google Fonts import

## 📄 License

This project is for educational and demonstration purposes.

## 🤝 Contributing

Feel free to contribute to this project by:
- Adding new features
- Improving the UI/UX
- Fixing bugs
- Adding more celestial bodies or information



**Explore the universe from the palm of your hand! 🌟**
