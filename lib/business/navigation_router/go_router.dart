import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/pages/email_settings_page/view/input_email_page.dart';
import 'package:womens_shop/presentation/pages/email_settings_page/view/verification_code_page.dart';
import 'package:womens_shop/presentation/pages/email_settings_page/view/verified_email_change_page.dart';
import 'package:womens_shop/presentation/pages/email_settings_page/view/verify_email_page.dart';
import 'package:womens_shop/presentation/pages/home_page/view/home_page.dart';
import 'package:womens_shop/presentation/pages/not_found_page/view/not_found_page.dart';
import '../../presentation/pages/email_settings_page/view/confirmation_email_page.dart';

class GoRouters {
  // GoRouter configuration
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: '/email',
        name: '/email',
        builder: (context, state) {
          return VerifyChangeEmailPage();
        },
      ),
      GoRoute(
        path: '/email/change',
        name: '/email/change',
        builder: (context, state) {
          return InputEmailPage();
        },
      ),
      GoRoute(
        path: '/email/confirm',
        name: '/email/confirm',
        builder: (context, state) {
          return ConfirmationEmailPage();
        },
      ),
      GoRoute(
        path: '/email/verify',
        name: '/email/verify',
        builder: (context, state) {
          return VerifyEmailPage();
        },
      ),
      GoRoute(
        path: '/email/verify/code',
        name: '/email/verify/code',
        builder: (context, state) {
          return VerificationCodePage();
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}
