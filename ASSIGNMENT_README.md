# Privacy Vault — Flutter Assignment

## Included screens
1. Home Screen — overview, receipt/warranty counts, and privacy vault summary.
2. Receipt List Screen — four sample purchase receipt cards using a reusable `ReceiptCard` widget.
3. Add Receipt Screen — look-only receipt form; the Save button shows a demo message and does not store data.
4. Vault Records Screen — privacy summary and reusable warranty cards.

## Assignment constraints
- One `MaterialApp`; debug banner disabled.
- All four screens are `StatelessWidget`s.
- No navigation, database, API, or persistent saving is implemented. Screens are selected from `main.dart` only for separate demonstrations/screenshots.
- Three PNG images are registered in `pubspec.yaml` under `assets/images/`.
- A custom Privacy Vault shield launcher icon is included for Android at all five standard density sizes.
- Scrollable screen bodies help avoid vertical overflow on smaller screens.

## Run
Open this folder (the one containing `pubspec.yaml`) in VS Code. In its terminal run:

```bash
flutter pub get
flutter analyze
flutter run -d chrome
```

If Chrome crashes or reports memory errors, close extra Chrome tabs, stop other Flutter runs, then retry.

## Show each screen for screenshots (no navigation)
Open `lib/main.dart`. The `home:` line currently selects `HomeScreen`. For each screenshot, change only the screen class on that line, save, and let hot reload update the app:

- `home: const HomeScreen(),`
- `home: const ReceiptListScreen(),` (add `import 'receipt_list_screen.dart';`)
- `home: const AddReceiptScreen(),` (add `import 'add_receipt_screen.dart';`)
- `home: const VaultRecordsScreen(),` (add `import 'vault_records_screen.dart';`)

Take one screenshot for each screen. Restore `home: const HomeScreen(),` and its import before submitting. Do not add Navigator routes; the assignment says navigation is not allowed yet.
