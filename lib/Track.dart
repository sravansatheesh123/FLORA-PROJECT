import 'package:flutter/material.dart';

class Track extends StatelessWidget {
  const Track({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 15,
          ),
        ),
        title: Center(
          child: Text('Track order', style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Moon Cactus",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Price: ₹360.00",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Quantity: 1 Nos",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Order Id: 213256489",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "assest/img/img_2.png",
                    height: 120,
                    width: 100,
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Tracking",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 20),
                  _buildTrackStep("Order placed", "Aug 25, 2024, 10:00 AM", true, "assest/img/img_4.png"),
                  _buildTrackStep("Order confirmed", "Aug 25, 2024, 11:30 AM", true, "assest/img/img_5.png"),
                  _buildTrackStep("Shipped", "Aug 26, 2024, 1:30 PM", true, "assest/img/img_6.png"),
                  _buildTrackStep("Out for delivery", "Aug 27, 2024, 9:00 AM", false, "assest/img/img_7.png"),
                  SizedBox(height: 20),
                  _buildInfoContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackStep(String title, String time, bool isCompleted, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 20,
                width: 2,
                color: isCompleted ? Colors.green : Colors.grey, // Track indicator above image
              ),
              Icon(
                isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                color: isCompleted ? Colors.green : Colors.grey,
                size: 24,
              ),
              if (!isCompleted)
                Container(
                  height: 60,
                  width: 2,
                  color: Colors.grey, // Track indicator below image
                ),
            ],
          ),
          SizedBox(width: 10),
          Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text(
                time,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Address',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(
                'assest/img/img_8.png', // Replace with the actual path to your small image
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Sreenath, 207, Shakthi apartment, Bannargatta main road, Arikkare, Bangalore, Karnat...',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Added space between the two containers
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black), // Black border for the second container
          ),
          child: Row(
            children: [
              Image.asset(
                'assest/img/img_9.png', // Replace with the actual path to your small image
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'We value your feedback, please don’t forget to leave a review and rate us',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
