import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class TransactionTab1 extends StatefulWidget {
  int index;
  TransactionTab1({Key? key, required this.index}) : super(key: key);

  @override
  State<TransactionTab1> createState() => _TransactionTab1State();
}

class _TransactionTab1State extends State<TransactionTab1>
    with TickerProviderStateMixin {
  List lst = ['Entry Paid', 'Entry Refund', 'Offer Details', "Winnings"];
  List lst1 = ['Success', 'In-Process', 'Failed'];
  List lst2 = ['Refund', 'Entry Refund', 'In-Process', "Failed"];
  List lst3 = ['Fc purchase', 'Deposit Cash Bonus', 'Friend Joined Contest'];

  int selectedIndex = 0;
  setSelectedContainer(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rowWidget(widget.index == 0
              ? lst
              : widget.index == 1
                  ? lst1
                  : widget.index == 2
                      ? lst2
                      : lst3),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                AssetUtilities.logo,
                height: 220,
                width: 220,
              )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Nothing to Show...',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "You’ve not done any transactions till",
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "Now.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Note:',
                      style: TextStyle(fontSize: 10),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.16,
                      child: Wrap(children: const [
                        Text(
                          'For transactions older than 6 months, tap on the download icon to review your yealy summary',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(125, 125, 125, 1)),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget rowWidget(List lst) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 0.0))),
      height: 60,
      child: ListView.builder(
        itemCount: lst.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setSelectedContainer(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? const Color.fromRGBO(54, 130, 54, 0.19)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: selectedIndex == index
                                  ? const Color.fromRGBO(54, 130, 54, 1)
                                  : Colors.black,
                            )),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 5, right: 5, bottom: 5),
                              child: Text(
                                lst[index],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? const Color.fromRGBO(54, 130, 54, 1)
                                      : Colors.black,
                                ),
                              ),
                            ),
                            selectedIndex == index
                                ? GestureDetector(
                                    onTap: () {
                                      lst.removeAt(index);
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.cancel_outlined,
                                      size: 20,
                                      color: Color.fromRGBO(54, 130, 54, 1),
                                    ))
                                : const SizedBox.shrink(),
                            const SizedBox(
                              width: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
