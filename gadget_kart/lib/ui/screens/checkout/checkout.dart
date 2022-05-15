import 'package:gadget_kart/commons/text_style.dart';
import '../payment/payment.dart';
import '../../widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: Colors.grey[400],
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.add_card_outlined,
                      color: Colors.grey[400],
                      size: 30,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.check_circle_outline,
                      color: Colors.grey[400],
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Step 1",
                style: subtitleText().copyWith(color: Colors.grey[500]),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Shipping",
                style: headingText(),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: "Full Name",
                  labelText: "Full Name",
                  prefixIcon: const Icon(Icons.person_outline_rounded),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: "Street address",
                  labelText: "Street address",
                  prefixIcon: const Icon(Icons.map_outlined),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "City",
                        labelText: "City",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Zip Code",
                        labelText: "Zip Code",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: "Country",
                  labelText: "Country",
                  prefixIcon: const Icon(Icons.location_on_outlined),
                ),
              ),
              const Spacer(),
              MaterialButton(
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                child: Text(
                  "Continue to Payment",
                  style: buttonText(),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: _theme.primary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
