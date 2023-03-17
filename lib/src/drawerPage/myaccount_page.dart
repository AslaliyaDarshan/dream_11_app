import 'package:dream_11_app/src/drawerPage/addCashScreen.dart';
import 'package:dream_11_app/src/drawerPage/transaction.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  List<String> textList = [
    'Update Bank Details',
    'My Recent Transaction',
    'My Recent Deposits',
    'My Recent Withdrawals',
    'Refar and earn'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('My Account'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add_sharp))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AssetUtilities.bonus),
              const SizedBox(height: 17),
              Container(
                height: 68,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetUtilities.bgImage))),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(156, 216, 92, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(39, 44, 86, 1)),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.wallet,
                          color: Color.fromRGBO(39, 44, 86, 1),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Total Balance',
                              style: TextStyle(fontSize: 7),
                            ),
                            Text(
                              '₹500,000.000',
                              style: TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AddCashScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                ),
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text(
                          'ADD CASH',
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                ),
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text(
                          'Withdraw CASH',
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 280,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, right: 18, top: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Deposit',
                          style: TextStyle(fontSize: 10),
                        ),
                        const Text(
                          '₹0',
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Divider(
                          height: 3,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Text(
                          'Instant Cash',
                          style: TextStyle(fontSize: 10),
                        ),
                        const Text(
                          '₹0',
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Divider(
                          height: 3,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Text(
                          'Winning',
                          style: TextStyle(fontSize: 10),
                        ),
                        const Text(
                          '₹0',
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Divider(
                          height: 3,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'NO BONUS AMOUNT ONLY FOR WINNING AMOUNT WITHDRAW AND MINIMUM ACCOUNT BALANCE 300+ WINNING.',
                          style: TextStyle(
                              fontSize: 9,
                              color: Color.fromRGBO(255, 13, 13, 1)),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(54, 130, 54, 1)),
                              onPressed: () {},
                              child: const Text(
                                'VERIFY NOW',
                                style: TextStyle(fontSize: 7),
                              )),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          height: 5,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Bonus',
                          style: TextStyle(fontSize: 10),
                        ),
                        const Text(
                          '₹0',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                itemCount: textList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        child: GestureDetector(
                          onTap: () {
                            if (index == 1) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const TransactionScreen();
                              }));
                            }
                          },
                          child: Card(
                            elevation: 3,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10, bottom: 9),
                                  child: Text(
                                    textList[index],
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
