import 'package:coffee_shop/screens/card_page.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201520),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      "https://source.unsplash.com/random/",
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Opacity(
                      opacity: 0.7,
                      child: InkWell(
                        child: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                textColor: Colors.white,
                title: const Text(
                  "Cappuccino",
                  style: TextStyle(
                    fontSize: 24,
                    height: 2,
                  ),
                ),
                subtitle: Row(
                  children: const [
                    Text(
                      "Drizzeled with Caramel",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(width: 30),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    Text("4.5"),
                  ],
                ),
                trailing: const Icon(
                  Icons.favorite_outlined,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 15),
              const Text(
                "Choice of Milk",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Oat Milk",
                      style: TextStyle(color: Color(0xFF201520)),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFEFE3C8),
                      fixedSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Soy Milk",
                      style: TextStyle(color: Color(0xFFEFE3C8)),
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Color(0xFFEFE3C8),
                        width: 2,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Almond Milk",
                      style: TextStyle(color: Color(0xFFEFE3C8)),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(120, 40),
                      side: const BorderSide(
                        color: Color(0xFFEFE3C8),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
        textColor: Colors.white,
        title: const Text("Price"),
        subtitle: const Text(
          "\$249",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: ElevatedButton(
          child: const Text(
            "Buy Now",
            style: TextStyle(
              color: Color(0xFF201520),
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFEFE3C8),
            fixedSize: const Size(250, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CardPage(),
            ),
          ),
        ),
      ),
    );
  }
}
