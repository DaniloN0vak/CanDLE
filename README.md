# Birdle 🕊

Birdle is a small Flutter game inspired by Wordle. The player has a limited
number of attempts to guess a five-letter English word. After each guess, tile
colors indicate whether each letter appears in the word and whether it is in
the correct position.

## Current status

**0.1.0 — Alpha**

- A random answer is selected from `legalWords`.
- `legalGuesses` contains additional words that can be entered.
- Only five-letter English words in the dictionary are accepted.
- Guess results are shown using colored tiles.
- Basic tests cover the game logic and input validation.

This is an early version for demonstration and testing. The dictionaries are
still small, and the interface and game rules need further development.

## Run in VS Code for testing

### Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Visual Studio Code](https://code.visualstudio.com/)
- The **Flutter** extension for VS Code (this also installs the Dart extension)

Make sure Flutter is available in your `PATH`. Check your setup with:

```powershell
flutter doctor
```

### Run the project from the terminal

1. Open the project folder in VS Code.
2. Open the integrated terminal using **Terminal → New Terminal**.
3. Change to the project root folder, where `pubspec.yaml` is located:

   ```powershell
   cd C:\path\to\birdle
   ```

4. Fetch the dependencies:

   ```powershell
   flutter pub get
   ```

5. Check the available devices and emulators:

   ```powershell
   flutter devices
   ```

6. Run the game on your chosen device:

   ```powershell
   flutter run
   ```

To run the game in Chrome, if it is available in the device list:

```powershell
flutter run -d chrome
```

To run the game on Windows, you need the Visual Studio C++ toolchain required
for Flutter Desktop. After setting it up, run:

```powershell
flutter run -d windows
```

Stop the running app by pressing `q` in the terminal.


## Version roadmap 

The versions below outline the planned development of Birdle. The scope and
order of features may change based on testing and feedback.

| Version | Stage | Planned features |
| --- | --- | --- |
| **0.1.0 — Alpha** | Current | Basic gameplay, initial dictionaries, input validation, and color-coded hints. |
| **0.2.0 — Playable Alpha** | Complete the core game loop | Win and loss messages, prevent guesses after a round ends, reveal the correct answer, and add a new-game button. |
| **0.3.0 — Beta** | Improve input and dictionaries | Expand the answer and guess dictionaries, add an on-screen keyboard, and show each letter's best-known status. |
| **0.4.0 — Beta** | Polish the interface | Responsive layouts for different screen sizes, clearer messages, and improved accessibility and contrast. |
| **0.5.0 — Beta** | Add modes and progress | Prepare language modes, add a daily puzzle, and save player statistics locally. |
| **1.0.0 — Release** | First stable release | Verified rules and dictionaries, a polished interface, reliable tests, and instructions for supported platforms. Release at App Store.|

## Built with

- Flutter / Flutter Test
- Dart

