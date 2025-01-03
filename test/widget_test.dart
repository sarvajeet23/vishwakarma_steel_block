import 'package:flutter_test/flutter_test.dart';
import 'package:vishwakarama_steel_bloc/auth/login_page.dart';
import 'package:vishwakarama_steel_bloc/main.dart';

void main() {
  testWidgets('Splash Page smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(const MyApp()); // Replace with your app widget

    // Wait for the first frame to render
    await tester.pumpAndSettle();

    // Optionally, check that no "Loading..." text is found (if you're not using this text)
    expect(find.text('Loading...'), findsNothing);

    // Wait for the Future.delayed (which triggers the navigation) to complete
    await tester.pumpAndSettle(const Duration(
        seconds: 3)); // Adjust duration to match your splash delay

    // Optionally, check that the app has navigated to the login page
    expect(find.byType(LoginPage),
        findsOneWidget); // Ensure LoginPage is now displayed
  });
}
