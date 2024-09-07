import 'package:flutter/material.dart';
import 'package:project/Order.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  int _selectedAddress = 1; // Variable to hold selected address index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Select Address",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align to left
          children: [
            const SizedBox(height: 20), // Spacing between text and button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Order()),
                  );
                },
                child: const Text(
                  "Add new Address",
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green), // Green button
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Default Address",
                style: TextStyle(fontSize: 20),
              ),
            ),
            _buildAddressTile(1, "Sreenath", "207, Shakthi apartment, Bannargatta main road, Arikkare, Bangalore, Karnataka, 632546", "+919088675644", "assest/images/img_81.png"),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Other Address",
                style: TextStyle(fontSize: 20),
              ),
            ),
            _buildAddressTile(2, "Sreenath", "207, Shakthi apartment, Bannargatta main road, Arikkare, Bangalore, Karnataka, 632546", "+919088675644", "assest/images/img_81.png"),
            const SizedBox(height: 20),
            _buildAddressTile(3, "Sreenath", "207, Sruthi apartment, KK Nagar main road, Arikkare, Bangalore, Karnataka, 632546", "+917025773778", "assest/images/img_83.png"),
          ],
        ),
      ),
    );
  }

  // A reusable method to build address tiles
  Widget _buildAddressTile(int value, String name, String address, String phone, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Radio<int>(
                    value: value,
                    groupValue: _selectedAddress,
                    activeColor: Colors.green,
                    onChanged: (int? newValue) {
                      setState(() {
                        _selectedAddress = newValue!;
                      });
                    },
                  ),
                  const SizedBox(width: 16),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Image.asset(imagePath, height: 40, width: 90),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            address,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            phone,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w100,
            ),
          ),
          if (value == _selectedAddress)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle remove address logic
                  },
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle edit address logic
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 20),
        ],
      ),
    );

  }
}
