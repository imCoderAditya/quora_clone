import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quora_clone/utils/constent.dart';

class AppBarForWindows extends StatefulWidget with PreferredSizeWidget {
  AppBarForWindows({super.key}) : preferredSize = const Size.fromHeight(50);
  @override
  final Size preferredSize;

  @override
  State<AppBarForWindows> createState() => _AppBarForWindowsState();
}

class _AppBarForWindowsState extends State<AppBarForWindows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(color: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              child: Text(
                "Quora",
                style: GoogleFonts.acme(
                  color: Colors.red[800],
                  fontSize: 30,
                ),
              ),
            ),

            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.list),
                    Icon(Icons.edit_calendar_rounded),
                    Icon(Icons.group),
                    Icon(Icons.notifications),
                  ],
                )),
            // Expanded(
            //   flex: 2,

            // ),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              label: const Text("Search quora"),
                              alignLabelWithHint: true,
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 11),
                            child: Text("Try Quora+"),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(profile.toString()),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.language,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red[800],
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  "Add Question",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.black,
                                  width: .3,
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
