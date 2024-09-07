import 'package:flutter/material.dart';
import 'package:project/address.dart';
import 'package:project/odercart.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart'; // Ensure this import is correct

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late Razorpay _razorpay;

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Order",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  const Text(
                    "CART",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    "ORDER SUMMARY",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    "PAYMENT",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Delivery Address:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Order()),
                          );
                        },
                        child: const Text("HOME"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Sreenath",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "207, Shakthi apartment, Bannargatta main road, Arikkare, Bangalore, Karnataka, 632546",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "+919088675644",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Address()),
                        );
                      },
                      child: const Text(
                        "Change the Address",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  // Displaying images
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Odercart(
                          name: 'Moon Cactus',
                          price: '360',
                          image: 'assest/images/img_44.png',
                          discount: "400",
                        ),
                        const SizedBox(height: 5),
                        Odercart(
                          name: 'Monstera Delici...',
                          price: '1150',
                          image: 'assest/images/img_40.png',
                          discount: "400",
                        ),
                        const SizedBox(height: 5),
                        Odercart(
                          name: 'Dracaena Gold',
                          price: '399',
                          image: 'assest/images/img_42.png',
                          discount: "400",
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset("assest/images/img_43.png"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Sub Total",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "₹1,949/",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Discount", style: TextStyle(fontSize: 20)),
                            Text(
                              "₹40/",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Delivery Charges",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Free Delivery",
                              style:
                              TextStyle(color: Colors.green, fontSize: 18),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            openCheckout(10, "zoople", "sreejith description",
                                "8787878770", "zoople@gmail.com");
                          },
                          child: const Text('Open'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openCheckout(int amt, String shopname, String description, String no,
      String email) async {
    var options = {
      'key': 'rzp_live_ILgsfZCZoFIKMb', // Use your Razorpay key
      'amount': amt * 100,
      'name': '$shopname',
      'description': '$description',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': '$no', 'email': '$email'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}

void main() {
  runApp(const MaterialApp(home: Order()));
}
