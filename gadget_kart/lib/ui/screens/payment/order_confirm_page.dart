import 'package:gadget_kart/commons/text_style.dart';
import '../home/home_screen.dart';
import '../../widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import '../tap_screen.dart';

class OrderConfirmPage extends StatelessWidget {
  const OrderConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _theme = Theme.of(context).colorScheme;
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          "Checkout",
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.location_on,
                      color: _theme.primary,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1.5,
                      color: _theme.primary,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.add_card_outlined,
                      color: _theme.primary,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1.5,
                      color: _theme.primary,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.check_circle,
                      color: _theme.primary,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline_rounded,
                      color: _theme.primary,
                      size: 130,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Order Confirmed!",
                      style: headingText(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Your order has been placed successfully!\nWe will contact you soon.",
                      textAlign: TextAlign.center,
                      style: subtitleText(),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              MaterialButton(
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                child: Text(
                  "Back to Home",
                  style: buttonText(),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: _theme.primary,
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                  Navigator.pushReplacementNamed(context, TapScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
