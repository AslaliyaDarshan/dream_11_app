import 'package:dream_11_app/src/user/aadhar_card/uploadAddhar.dart';
import 'package:dream_11_app/src/user/aadhar_card/uploadAddharScreen.dart';
import 'package:flutter/material.dart';

class AttachAadharScreen extends StatefulWidget {
  const AttachAadharScreen({super.key});

  @override
  State<AttachAadharScreen> createState() => _AttachAadharScreenState();
}

class _AttachAadharScreenState extends State<AttachAadharScreen> {
  int grpRadioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text(
          "KYC quick",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add_sharp)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.wallet_membership)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text("Upload your Aadhaar Card"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Center(
                  child: Container(
                    height: 180,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Upload Front Image",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // changeTheme(0, context);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const UploadAadhar();
                                  }));
                                },
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      color: Color.fromRGBO(27, 104, 0, 1),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Click Photo',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.attach_file,
                                      color: Color.fromRGBO(27, 104, 0, 1),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Attach File',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Center(
                                child: Text(
                                  "Size - Less than 5mb | Format- JPEG,PNG,PDF",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
