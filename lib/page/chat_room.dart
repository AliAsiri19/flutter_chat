import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  List<Map<String, String>> litems = List<Map<String, String>>();
  final myController = TextEditingController();
  bool tester = true;
  final currentID = "1";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double topheight = kToolbarHeight + statusBarHeight;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - topheight;
    final reversedlitems = litems.reversed.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat room"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.orange,
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    height: height * 0.85,
                    child: Container(
                        color: Colors.white,
                        child: ListView.builder(
                            itemCount: reversedlitems.length,
                            reverse: true,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Align(
                                alignment:
                                    currentID == reversedlitems[index]["id"]
                                        ? Alignment.centerRight
                                        : Alignment.centerLeft,
                                child: SizedBox(
                                  width: 250,
                                  child: Card(
                                      child: Container(
                                          padding: EdgeInsets.all(12),
                                          child: Text(
                                              reversedlitems[index]["text"])),
                                      color: currentID ==
                                              reversedlitems[index]["id"]
                                          ? Colors.green
                                          : Colors.orange),
                                ),
                              );
                            }))),
                Container(
                    height: height * 0.15,
                    child: Container(
                        padding: EdgeInsets.only(right: 8),
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                                flex: 8,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Container(
                                    height: 50,
                                    child: TextField(
                                        controller: myController,
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(),
                                          ),
                                          //fillColor: Colors.green
                                        )),
                                  ),
                                )),
                            Flexible(
                              flex: 1,
                              child: FloatingActionButton(
                                backgroundColor: Colors.orange,
                                elevation: 0,
                                child: Icon(Icons.send),
                                onPressed: () {
                                  if (tester) {
                                    litems.add(
                                        {"id": "1", "text": myController.text});
                                  } else {
                                    litems.add(
                                        {"id": "2", "text": myController.text});
                                  }
                                  tester = !tester;
                                  myController.text = "";
                                  setState(() {});
                                },
                              ),
                            )
                          ],
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
