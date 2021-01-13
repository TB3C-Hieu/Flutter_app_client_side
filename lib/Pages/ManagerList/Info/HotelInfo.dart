import 'package:flutter/material.dart';


class HotelInfoPage extends StatelessWidget {
  //final image = AssetImage('assets/images/test.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            /*SizedBox(
              height: 250,
              width: double.infinity,
              child: image
                fit: BoxFit.cover,
              ),
            ),*/
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Khách sạn A",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      // Container(
                      //   height: 80,
                      //   width: 80,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       image: DecorationImage(
                      //           image: NetworkImage(image), fit: BoxFit.cover)),
                      //   margin: EdgeInsets.only(left: 16.0),
                      // ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("Thông tin khách sạn"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text('Địa chỉ'),
                            subtitle: TextField(
                                decoration: InputDecoration(
                                    hintText: "46 Buoi Thi Xuan",
                                ),
                              )
                          ),
                        ListTile(
                          title: Text("Giá"),
                          subtitle: TextField(
                            decoration: InputDecoration(
                              hintText: "46 Buoi Thi Xuan",
                            ),
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 1,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              actions: <Widget>[
              IconButton(
                icon: Icon(
              Icons.delete,
            ),
              onPressed: () => {
      },
    ),
                IconButton(
                  icon: Icon(
                    Icons.save,
                  ),
                  onPressed: () => {
                  },
                ),
    ],
    ),
      ],
        ),
    ),
    );
  }
}