# Basketball Score

A simple Flutter scoreboard app for tracking points for two basketball teams.

## Features

- Track scores for Team A and Team B
- Add 1, 2, or 3 points with dedicated buttons
- Reset both scores with a single action
- State management powered by `flutter_bloc`
- Runs on Android, iOS, web, Windows, Linux, and macOS

## Tech Stack

- Flutter
- Dart
- `flutter_bloc`

## Project Structure

```text
lib/
|- main.dart
|- pages/
|  |- home_pages.dart
|- cubits/
   |- score_cubit/
      |- score_cubit.dart
      |- score_state.dart
```

## Getting Started

### Prerequisites

- Flutter SDK installed
- Dart SDK included with Flutter
- An emulator, simulator, browser, or connected device

### Install Dependencies

```bash
flutter pub get
```

### Run the App

```bash
flutter run
```

To run on a specific device, first list available targets:

```bash
flutter devices
```

Then launch with a device id:

```bash
flutter run -d <device-id>
```

## How It Works

The app starts in [`lib/main.dart`](/Users/fatmagalal/Development/Projects/basketballscore/lib/main.dart), where `ScoreCubit` is provided to the widget tree using `BlocProvider`.

The main UI lives in [`lib/pages/home_pages.dart`](/Users/fatmagalal/Development/Projects/basketballscore/lib/pages/home_pages.dart) and displays:

- Team A score controls
- Team B score controls
- A reset button for both teams

State updates are handled in [`lib/cubits/score_cubit/score_cubit.dart`](/Users/fatmagalal/Development/Projects/basketballscore/lib/cubits/score_cubit/score_cubit.dart), with state definitions in [`lib/cubits/score_cubit/score_state.dart`](/Users/fatmagalal/Development/Projects/basketballscore/lib/cubits/score_cubit/score_state.dart).
