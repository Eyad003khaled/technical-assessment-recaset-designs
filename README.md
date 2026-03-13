# Technical Assessment - Recast Designs

A production-ready Flutter application demonstrating **Clean Architecture**, **BLoC state management**, **responsive design**, and **modular feature structure**. The app is a restaurant discovery platform with food menu browsing, atmosphere exploration, and detailed item information.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Architecture](#architecture)
- [State Management](#state-management)
- [Dependency Injection](#dependency-injection)
- [Responsive Design](#responsive-design)
- [Technologies & Dependencies](#technologies--dependencies)
- [Getting Started](#getting-started)

## 🎯 Overview

A Flutter technical assessment for **Recast Designs** demonstrating professional development practices with a restaurant discovery application featuring home page, food menu browsing, atmosphere exploration, and detailed item information.

**Target:** Flutter 3.5.3+  
**Architecture:** Clean Architecture with Feature-First approach  
**State Management:** BLoC (Cubit pattern)  

## ✨ Features

- **Home Screen** - Restaurant showcase with hero imagery and gradient overlays
- **Food Menu** - Browse food items with grid layout and animations
- **Atmosphere** - Discover restaurant atmosphere categories
- **Item Details** - In-depth information with pricing and preparation details
- **Responsive UI** - Adaptive design using `flutter_screenutil`
- **Local Data Source** - Mock data layer for offline functionality
- **Custom Animations** - Smooth transitions using `animate_do`
- **Skeleton Loaders** - Redacted placeholders for loading states

## 📁 Project Structure

```
lib/
├── main.dart
├── app/
│   └── recast_designs.dart
├── core/
│   ├── functions/animation/
│   ├── routes/app_router.dart
│   ├── services/
│   │   ├── device_type_service.dart
│   │   └── injection.dart
│   ├── utils/
│   │   ├── app_colors.dart
│   │   ├── app_images.dart
│   │   ├── app_strings.dart
│   │   └── app_text_styles.dart
│   └── widgets/
│       ├── back_button.dart
│       └── redacted/
├── features/
│   ├── atmosphere/          # Atmosphere Feature
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── food_menu/          # Food Menu Feature
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── food_menu_details/  # Item Details Feature
│   │   └── presentation/
│   └── home/               # Home Feature
│       └── presentation/
└── assets/
    ├── images/png/
    ├── images/svg/
    └── fonts/
```

## 🏗️ Architecture

### Clean Architecture Layers

**Presentation Layer** - UI components, Cubits, and Widgets  
**Domain Layer** - Business logic, Entities, Use Cases, and Repository interfaces  
**Data Layer** - Repository implementations, Models, and Data Sources

### Layer Responsibilities

- **Presentation:** UI rendering and user interactions
- **Domain:** Framework-independent business logic
- **Data:** Data management and API/Database operations

## 🎮 State Management

**BLoC Pattern with Cubits**

- **Cubits:** `FoodMenuCubit`, `AtmosphereCubit`
- **States:** Immutable and equatable states (Initial, Loading, Success, Error)
- **Events:** User actions trigger state changes
- **BlocBuilder:** Listens and rebuilds UI on state changes

Features use reactive state management for automatic UI updates without manual refresh.

## 💉 Dependency Injection

**GetIt Service Locator**

Located in `lib/core/services/injection.dart`:
- Registers Data Sources, Repositories, Use Cases, and Cubits
- Enables loose coupling and easy testing
- Lazy loading support for performance optimization

## 📱 Responsive Design

**Flutter ScreenUtil**

- Design size: 390x844 (iPhone 12 baseline)
- Responsive sizing with `.w` and `.h` extensions
- Device-specific logic through `DeviceTypeService`
- Adaptive UI for mobile and tablet screens

## 📦 Technologies & Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| flutter_bloc | ^9.1.1 | State management |
| get_it | ^8.0.3 | Dependency injection |
| flutter_screenutil | ^5.9.3 | Responsive sizing |
| animate_do | ^4.2.0 | Animation effects |
| flutter_svg | ^2.1.0 | SVG rendering |
| flutter_staggered_grid_view | ^0.7.0 | Grid layouts |
| redacted | ^1.0.13 | Skeleton loaders |
| flutter_launcher_icons | ^0.14.3 | App icons |

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.5.3+
- Dart SDK 3.5.3+

### Installation

```bash
# Clone repository
git clone https://github.com/yourusername/technical_assessment_recast_designs.git
cd technical-assessment-recaset-designs

# Get dependencies
flutter pub get

# Run app
flutter run
```

### Run Commands

```bash
flutter devices              # List connected devices
flutter run -d <device_id>  # Run on specific device
flutter test                 # Run all tests
flutter test --coverage      # Run with coverage report
```

## 🎨 UI Features

### RestaurantSection Component
- Gradient overlay with shader mask for smooth transitions
- Hero image with bottom fade effect
- Back button and profile picture overlay
- Restaurant name, title, and description display
- Gold gradient text for accent elements

### Core Widgets
- **BackButtonWidget** - Navigation component
- **Redacted Components** - Skeleton loaders for food items and atmosphere
- **Custom Text Styles** - Satoshi Variable font with responsive sizing
- **Color Palette** - Gold accents (#E4B679) with dark primary colors

## 📁 Assets

- **Images:** PNG and SVG assets in `assets/images/`
- **Fonts:** Satoshi Variable font in `assets/fonts/`
- **App Icon:** `app_icon.png` for launcher icon generation

## 🔄 Data Flow

User Action → Cubit Event → Use Case Execution → Repository Call → Data Source → Mock Data → State Emission → UI Rebuild

## 🧪 Testing Strategy

Project structure supports:
- Unit tests for Use Cases and Repositories
- Widget tests for UI components
- Integration tests for feature flows

## 📚 Key Implementation Patterns

- **Feature-First Organization** - Each feature is self-contained
- **Repository Pattern** - Abstraction between data sources and business logic
- **Use Case Pattern** - Isolated business operations
- **BLoC Pattern** - Event-driven state management
- **Equatable Mixin** - Value equality for states and entities
- **Service Locator** - Centralized dependency management

## 🐛 Common Commands

```bash
flutter clean               # Clean build artifacts
flutter pub upgrade         # Upgrade dependencies
flutter run --no-fast-start # Run without fast startup
flutter pub cache clean     # Clear package cache
```

## 📄 Project Info

**Version:** 1.0.0+1  
**SDK Constraint:** ^3.5.3  
**Publish Status:** Private  
**Last Updated:** March 13, 2026

## 👨‍💼 Author

**Recast Designs** - Technical Assessment

---

**Key Technologies:** Flutter 3.5.3 • Dart 3.5.3 • BLoC 9.1.1 • GetIt 8.0.3 • ScreenUtil 5.9.3
