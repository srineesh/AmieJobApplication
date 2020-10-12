import 'package:flutter/material.dart';

import 'package:amie_jobApplication/Models/pictureModel.dart';

class DetailScreen extends StatelessWidget {
  PictureModel model;
  DetailScreen({
    Key key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.pop(context)),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Image.network(model.downloadUrl),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                model.author,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Text(
                    model.height.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Width: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Text(
                    model.width.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I kept the Favorites and Download functionality to the last but i recieved an email Telling me that they are only looking for kotlin or swift developers and decided not to make it just yet but if you are interested please feel free to mail me and i will build the demonstration functionality",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}
