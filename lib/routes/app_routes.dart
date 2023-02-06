import 'package:ipala/presentation/splash_screen/splash_screen.dart';
import 'package:ipala/presentation/splash_screen/binding/splash_binding.dart';
import 'package:ipala/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:ipala/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:ipala/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ipala/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:ipala/presentation/user_verification_screen/user_verification_screen.dart';
import 'package:ipala/presentation/user_verification_screen/binding/user_verification_binding.dart';
import 'package:ipala/presentation/location_access_screen/location_access_screen.dart';
import 'package:ipala/presentation/location_access_screen/binding/location_access_binding.dart';
import 'package:ipala/presentation/stores_near_you_screen/stores_near_you_screen.dart';
import 'package:ipala/presentation/stores_near_you_screen/binding/stores_near_you_binding.dart';
import 'package:ipala/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:ipala/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:ipala/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:ipala/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:ipala/presentation/verify_password_screen/verify_password_screen.dart';
import 'package:ipala/presentation/verify_password_screen/binding/verify_password_binding.dart';
import 'package:ipala/presentation/change_password_screen/change_password_screen.dart';
import 'package:ipala/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:ipala/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:ipala/presentation/homepage_container_screen/binding/homepage_container_binding.dart';
import 'package:ipala/presentation/stores_screen/stores_screen.dart';
import 'package:ipala/presentation/stores_screen/binding/stores_binding.dart';
import 'package:ipala/presentation/store_homepage_screen/store_homepage_screen.dart';
import 'package:ipala/presentation/store_homepage_screen/binding/store_homepage_binding.dart';
import 'package:ipala/presentation/policy_screen/policy_screen.dart';
import 'package:ipala/presentation/policy_screen/binding/policy_binding.dart';
import 'package:ipala/presentation/product_page_one_screen/product_page_one_screen.dart';
import 'package:ipala/presentation/product_page_one_screen/binding/product_page_one_binding.dart';
import 'package:ipala/presentation/product_page_screen/product_page_screen.dart';
import 'package:ipala/presentation/product_page_screen/binding/product_page_binding.dart';
import 'package:ipala/presentation/notification_screen/notification_screen.dart';
import 'package:ipala/presentation/notification_screen/binding/notification_binding.dart';
import 'package:ipala/presentation/notification_one_screen/notification_one_screen.dart';
import 'package:ipala/presentation/notification_one_screen/binding/notification_one_binding.dart';
import 'package:ipala/presentation/profile_screen/profile_screen.dart';
import 'package:ipala/presentation/profile_screen/binding/profile_binding.dart';
import 'package:ipala/presentation/new_password_screen/new_password_screen.dart';
import 'package:ipala/presentation/new_password_screen/binding/new_password_binding.dart';
import 'package:ipala/presentation/enable_notification_screen/enable_notification_screen.dart';
import 'package:ipala/presentation/enable_notification_screen/binding/enable_notification_binding.dart';
import 'package:ipala/presentation/about_screen/about_screen.dart';
import 'package:ipala/presentation/about_screen/binding/about_binding.dart';
import 'package:ipala/presentation/basket_screen/basket_screen.dart';
import 'package:ipala/presentation/basket_screen/binding/basket_binding.dart';
import 'package:ipala/presentation/listing_screen/listing_screen.dart';
import 'package:ipala/presentation/listing_screen/binding/listing_binding.dart';
import 'package:ipala/presentation/personal_listing_screen/personal_listing_screen.dart';
import 'package:ipala/presentation/personal_listing_screen/binding/personal_listing_binding.dart';
import 'package:ipala/presentation/success_screen/success_screen.dart';
import 'package:ipala/presentation/success_screen/binding/success_binding.dart';
import 'package:ipala/presentation/ratings_screen/ratings_screen.dart';
import 'package:ipala/presentation/ratings_screen/binding/ratings_binding.dart';
import 'package:ipala/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ipala/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String userVerificationScreen = '/user_verification_screen';

  static const String locationAccessScreen = '/location_access_screen';

  static const String storesNearYouScreen = '/stores_near_you_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verifyPasswordScreen = '/verify_password_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String storesScreen = '/stores_screen';

  static const String storeHomepageScreen = '/store_homepage_screen';

  static const String policyScreen = '/policy_screen';

  static const String productPageOneScreen = '/product_page_one_screen';

  static const String productPageScreen = '/product_page_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String enableNotificationScreen = '/enable_notification_screen';

  static const String aboutScreen = '/about_screen';

  static const String basketScreen = '/basket_screen';

  static const String listingScreen = '/listing_screen';

  static const String personalListingScreen = '/personal_listing_screen';

  static const String successScreen = '/success_screen';

  static const String ratingsScreen = '/ratings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: userVerificationScreen,
      page: () => UserVerificationScreen(),
      bindings: [
        UserVerificationBinding(),
      ],
    ),
    GetPage(
      name: locationAccessScreen,
      page: () => LocationAccessScreen(),
      bindings: [
        LocationAccessBinding(),
      ],
    ),
    GetPage(
      name: storesNearYouScreen,
      page: () => StoresNearYouScreen(),
      bindings: [
        StoresNearYouBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verifyPasswordScreen,
      page: () => VerifyPasswordScreen(),
      bindings: [
        VerifyPasswordBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: homepageContainerScreen,
      page: () => HomepageContainerScreen(),
      bindings: [
        HomepageContainerBinding(),
      ],
    ),
    GetPage(
      name: storesScreen,
      page: () => StoresScreen(),
      bindings: [
        StoresBinding(),
      ],
    ),
    GetPage(
      name: storeHomepageScreen,
      page: () => StoreHomepageScreen(),
      bindings: [
        StoreHomepageBinding(),
      ],
    ),
    GetPage(
      name: policyScreen,
      page: () => PolicyScreen(),
      bindings: [
        PolicyBinding(),
      ],
    ),
    GetPage(
      name: productPageOneScreen,
      page: () => ProductPageOneScreen(),
      bindings: [
        ProductPageOneBinding(),
      ],
    ),
    GetPage(
      name: productPageScreen,
      page: () => ProductPageScreen(),
      bindings: [
        ProductPageBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationOneScreen,
      page: () => NotificationOneScreen(),
      bindings: [
        NotificationOneBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: newPasswordScreen,
      page: () => NewPasswordScreen(),
      bindings: [
        NewPasswordBinding(),
      ],
    ),
    GetPage(
      name: enableNotificationScreen,
      page: () => EnableNotificationScreen(),
      bindings: [
        EnableNotificationBinding(),
      ],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [
        AboutBinding(),
      ],
    ),
    GetPage(
      name: basketScreen,
      page: () => BasketScreen(),
      bindings: [
        BasketBinding(),
      ],
    ),
    GetPage(
      name: listingScreen,
      page: () => ListingScreen(),
      bindings: [
        ListingBinding(),
      ],
    ),
    GetPage(
      name: personalListingScreen,
      page: () => PersonalListingScreen(),
      bindings: [
        PersonalListingBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: ratingsScreen,
      page: () => RatingsScreen(),
      bindings: [
        RatingsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
