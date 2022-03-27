import 'dart:math';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201520),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Card",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            productList(
              context,
              "Dalgona Macha",
              "\$299",
            ),
            productList(
              context,
              "Bursing Bluberry",
              "\$249",
            ),
            productList(
              context,
              "With Cocoa",
              "\$99",
            ),
            const Divider(
              color: Color(0xFF362C36),
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Delivery Charges",
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\$49",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Taxes",
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\$64.87",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFF362C36),
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Grand Total",
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\$1009.87",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Pay Now",
                  style: TextStyle(
                    color: Color(0xFF201520),
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFEFE3C8),
                  fixedSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding productList(BuildContext context, String description, String price) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        textColor: Colors.white,
        tileColor: const Color(0xFF362C36),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://source.unsplash.com/random/${Random().nextInt(10)}",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Cappuccino"),
                Text(
                  description,
                  style: const TextStyle(
                    height: 1.9,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    height: 1.7,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Container(
          margin: const EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFF463D46),
          ),
          child: Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.07,
                child: ElevatedButton(
                  child: const Icon(
                    Icons.remove,
                    color: Color(0xFF201520),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFEFE3C8),
                    padding: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.06,
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.07,
                child: ElevatedButton(
                  child: const Icon(
                    Icons.add,
                    color: Color(0xFF201520),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFEFE3C8),
                    padding: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
