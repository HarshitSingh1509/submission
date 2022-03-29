import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

class APPUI extends StatefulWidget {
  const APPUI({Key? key}) : super(key: key);

  @override
  State<APPUI> createState() => _APPUIState();
}

class _APPUIState extends State<APPUI> {
  Text _myText = Text("ABC");
  List imageurl = [
    "https://shotkit.com/wp-content/uploads/2021/01/selfie-poses.jpg",
    "https://images.unsplash.com/photo-1607081692245-419edffb5462?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2VsZmllfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://image.shutterstock.com/image-photo/portrait-cool-cheerful-girl-having-260nw-1096147727.jpg",
    "https://image.shutterstock.com/image-photo/portrait-cool-cheerful-girl-having-260nw-1096147727.jpg",
    "https://images.unsplash.com/photo-1607081692245-419edffb5462?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2VsZmllfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://shotkit.com/wp-content/uploads/2021/01/selfie-poses.jpg",
    "https://shotkit.com/wp-content/uploads/2021/01/selfie-poses.jpg",
    "https://images.unsplash.com/photo-1607081692245-419edffb5462?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2VsZmllfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://image.shutterstock.com/image-photo/portrait-cool-cheerful-girl-having-260nw-1096147727.jpg",
    "https://image.shutterstock.com/image-photo/portrait-cool-cheerful-girl-having-260nw-1096147727.jpg",
    "https://images.unsplash.com/photo-1607081692245-419edffb5462?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2VsZmllfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://shotkit.com/wp-content/uploads/2021/01/selfie-poses.jpg",
  ];
  List heading = ["Ingid"];
  List maintext = [];
  List profileimg = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Feed",
          style: TextStyle(color: Colors.black),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.dribbble.com/users/60166/screenshots/15010083/sunset_sunrise_1_4x.jpg")),
        ),
        actions: [
          Icon(
            Icons.add,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.email_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: Container(
                            child: Center(
                                child: Text(
                              "#Food",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink),
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: Container(
                            child: Center(
                                child: Text(
                              "#Food",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            //height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 150,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MasonryGridView.count(
                  itemCount: imageurl.length,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(imageurl[index]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: SizedBox(
                                        width: 130,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: '',
                                                style:
                                                    DefaultTextStyle.of(context)
                                                        .style,
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: "Ingrid Berman ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Hey!!! This is my selfie')
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "23 min ago",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.pink,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
