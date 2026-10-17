import 'package:flutter_test/flutter_test.dart';
import 'package:privacy_vault/main.dart';

void main() {
  testWidgets('Privacy Vault app opens the home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const PrivacyVaultApp());
    await tester.pumpAndSettle();

    expect(find.text('Privacy Vault'), findsOneWidget);
    expect(find.text('Welcome to Privacy Vault'), findsOneWidget);
  });
}
