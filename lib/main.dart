import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripe_payment/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey = "pk_test_51LQumxHIiDDpFMOxe1iVeWxOSZgfAoMLAG6oOECgVyosPxY2yuD22r1yDwIYFydpwS3xxgBB5i15j7nXreuQSVQg004MjKCJax";
  Stripe.merchantIdentifier = 'any string works';
  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      //fade in transition
      transitionDuration: const Duration(milliseconds: 500),
      defaultTransition: Transition.fadeIn,
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
      ],
    );
  }
}

class PaymentScreen extends StatefulWidget {

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  Map<String, dynamic>? paymentIntentData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){

            },
            child: Container(
              width: 100,
              height: 40,
              color: Colors.red,
              alignment: Alignment.center,

              child: Center(
                child: Text('pay'),
              ),
            ),
          ),
        ],
      ),
    );
  }


}

