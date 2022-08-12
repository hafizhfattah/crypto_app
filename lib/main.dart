import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyUI(),
    );
  }
}

class CurrencyUI extends StatefulWidget {
  const CurrencyUI({Key? key}) : super(key: key);

  @override
  State<CurrencyUI> createState() => _CurrencyUIState();
}

class _CurrencyUIState extends State<CurrencyUI> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 16,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          selectedItemColor: Colors.pinkAccent,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.shopping_cart,
              ),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart_fill,
              ),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.link,
              ),
              label: '',
              backgroundColor: Colors.white,
            ),
          ]),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      CupertinoIcons.square_grid_2x2_fill,
                      color: Colors.black,
                      size: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/sekul.png'),
                      radius: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.all(5),
                        height: 220,
                        width: 360,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 110, 255),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'My Wallet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Balance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '\$1414.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 1.5,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '/usd',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.archivebox_fill,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Deposit',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.tray_arrow_down_fill,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Withdraw',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.link,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'More',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.all(5),
                        height: 220,
                        width: 360,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'My Wallet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Balance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '\$1414.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 1.5,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '/usd',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.archivebox_fill,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Deposit',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.tray_arrow_down_fill,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Withdraw',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.link,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'More',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      ' For You',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 15, right: 15),
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.all(5),
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 110, 255),
                            borderRadius: BorderRadius.circular(16)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  CupertinoIcons.book,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Learn Crypto \nEarn Crypto',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 15, right: 15),
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.all(5),
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 245, 245),
                            borderRadius: BorderRadius.circular(16)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  CupertinoIcons.map,
                                  color: Colors.black,
                                  size: 26,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'DCA Simulation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 15, right: 15),
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.all(5),
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 245, 245),
                            borderRadius: BorderRadius.circular(16)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  CupertinoIcons.text_bubble,
                                  color: Colors.black,
                                  size: 26,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Join Community',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      ' Popular Crypto',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/btc.png'),
                          radius: 16,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bitcoin',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 1.5,
                              ),
                              const Text(
                                'BTC/USD',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$20174.45',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 1.5,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.arrowtriangle_down_fill,
                                  color: Colors.redAccent,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '-3.15',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/eth.png'),
                          radius: 16,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ethereum',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 1.5,
                              ),
                              const Text(
                                'BTC/USD',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$1074.55',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 1.5,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.arrowtriangle_up_fill,
                                  color: Colors.greenAccent,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '-3.15',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
