import 'package:flutter/material.dart';

import 'check_box_design.dart';

class CheckBoxListDesign extends StatefulWidget {
  const CheckBoxListDesign({super.key});

  @override
  State<CheckBoxListDesign> createState() => _CheckBoxListDesignState();
}

class _CheckBoxListDesignState extends State<CheckBoxListDesign> {
  bool? isChecked_1 = false;

  bool? isChecked_2 = false;

  bool? isChecked_3 = false;

  bool? isChecked_4 = false;

  bool? isChecked_5 = false;

  bool? isChecked_6 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
        bottom: 20,
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Improve Your Feed",
                  ),
                ),
                const Divider(),
                CheckBoxDesign(
                  onChanged: (value) {
                    setState(() {
                      isChecked_1 = value!;
                    });
                  },
                  value: isChecked_1,
                  title: "Follow 3 Your Feed",
                ),
                const Divider(),
                CheckBoxDesign(
                  onChanged: (value) {
                    setState(() {
                      isChecked_2 = value;
                    });
                  },
                  value: isChecked_2,
                  title: "Follow 3 Your Feed",
                ),
                const Divider(),
                CheckBoxDesign(
                  onChanged: (value) {
                    setState(() {
                      isChecked_3 = value;
                    });
                  },
                  value: isChecked_3,
                  title: "Follow 3 Your Feed",
                ),
                const Divider(),
                CheckBoxDesign(
                  onChanged: (value) {
                    setState(() {
                      isChecked_4 = value;
                    });
                  },
                  value: isChecked_4,
                  title: "Follow 3 Your Feed",
                ),
                const Divider(),
                CheckBoxDesign(
                  onChanged: (value) {
                    setState(() {
                      isChecked_5 = value;
                    });
                  },
                  value: isChecked_5,
                  title: "Follow 3 Your Feed",
                ),
              ],
            ),
          ),
          Container(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Image.asset(
              "assets/images/photo.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
