import 'package:get/get.dart';
import '../ui/Auth/otp/otp.dart';
import '../ui/Deposit/deposit.dart';
import '../ui/Profile/profile.dart';
import '../ui/TabPage/tabpage.dart';
import '../ui/welcome/welcome.dart';
import '../ui/Auth/signin/sign_in.dart';
import '../ui/Auth/signup/sign_up.dart';
import '../ui/mytickets/mytickets.dart';
import '../ui/splashscreen/splash.dart';
import '../ui/profile/edit_profile.dart';
import '../ui/withdrawal/withdrawal.dart';
import '../ui/notification/notification.dart';
import '../ui/payment_mode/payment_mode.dart';
import '../ui/withdrawal/withdrawal_upi.dart';
import '../ui/help & support/help_support.dart';
import '../ui/Draws/selected_draws/selected_draws.dart';
import '../ui/Draws_History/draws_history_details.dart';
import '../ui/Draws/Create_Ticket_Draws/create_ticket_draws.dart';
import '../ui/Draws/Upcoming_draw_history/upcoming_draws_history.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: _Paths.tabPage,
      page: () => const TabPage(),
    ),
    GetPage(
      name: _Paths.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: _Paths.myTicketPage,
      page: () => const MyTicketPage(),
    ),
    GetPage(
      name: _Paths.profilePage,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: _Paths.welcomePage,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: _Paths.signUpPage,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: _Paths.signInPage,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: _Paths.otpPage,
      page: () => const OtpPage(),
    ),
    GetPage(
      name: _Paths.upcomingDrawsHistoryPage,
      page: () => const UpcomingDrawsHistoryPage(),
    ),
    GetPage(
      name: _Paths.createTicketDrawsPage,
      page: () => const CreateTicketDrawsPage(),
    ),
    GetPage(
      name: _Paths.selectedDrawsPage,
      page: () => SelectedDrawsPage(),
    ),
    GetPage(
      name: _Paths.paymentModePage,
      page: () => const PaymentModePage(),
    ),
    GetPage(
      name: _Paths.withDrawalPage,
      page: () => const WithDrawalPage(),
    ),
    GetPage(
      name: _Paths.withDrawalUpiPage,
      page: () => const WithDrawalUpiPage(),
    ),
    GetPage(
      name: _Paths.depositPage,
      page: () => const DepositPage(),
    ),
    GetPage(
      name: _Paths.notificationPage,
      page: () => const NotificationPage(),
    ),
    GetPage(
      name: _Paths.helpAndSupportPage,
      page: () => const HelpAndSupportPage(),
    ),
    GetPage(
      name: _Paths.drawsHistoryDetailsPage,
      page: () => const DrawsHistoryDetailsPage(),
    ),
    GetPage(
      name: _Paths.editProfilePage,
      page: () => EditProfilePage(),
    ),
  ];
}
