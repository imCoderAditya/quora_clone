import 'package:flutter/material.dart';

import '../utils/constent.dart';

class CardListView extends StatefulWidget {
  const CardListView({super.key});

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  bool deslike = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        itemCount: listData.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 1),
            child: SizedBox(
              child: Wrap(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage(listData[index]["profileImage"]),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            "${listData[index]["name"]} .\t\t",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "Follow",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                RichText(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: listData[index]["time"],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: ".update",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz_rounded,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                listData.remove(index);
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.clear_outlined,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 7),
                        child: Text(
                          listData[index]['title'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 7),
                        child: Text(
                          listData[index]['subtitle'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Center(
                        child: Image.network(
                          listData[index]["profileImage"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 33,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 229, 229, 229),
                                    Color.fromARGB(255, 204, 202, 202),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.upload,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Container(
                                    width: 0.5,
                                    height: 20,
                                    color: Colors.grey,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        deslike = !deslike;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.download,
                                      color: deslike ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings_backup_restore_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 6,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
