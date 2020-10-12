import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhyHireMeScreen extends StatelessWidget {
  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'srineesh.salur@gmail.com',
      queryParameters: {'subject': 'Yes, We would like to hire you'});
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Why do i want to work on Amie? ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. I want to work on a product that i would actually pay for ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2.I've been developing apps for 4-years now using mainly ReactJs and Flutter and have developed apps for over 10 companies but i for a fact know that i wont be paying them personally",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Dont get me wrong i am not against paying for software infact i have been paying for the services below but so far in my career i haven't developed something that i would actually pay for",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Services i pay for \n 1. Notion \n 2. Gumroad(for business) \n 3. HealthifyMe(for fitness)  \n 4. Uplabs  ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Services i want to pay for but are free \n 1. Figma ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Services i will be paying in future \n 1. Webflow \n 2. Bubble \n 3. Caard ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Team: The design behind the project, the pre-sales, the waitlist, the coeffee machine at the office, the philoshy for design and development of the product made me not blow my chances before you become too big because the team would actually look at the app that i developed. So, even though the chances are slim i considered what the worse could happen so Applied for the company again ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What Can i offer for the companies growth ? ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                "If you want a man with \n . Focus \n . Commitment \n . Sheer Fucking Will ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You've got yourself a person. \n I have 4-years of app development experience and have been fortunate enough to work for early stage startups",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "The fascination for developing apps came for iPhone and swift was the first programming language i ever learned and made my first unreleased app using swift",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "It's been over 3-years since i developed using swift but i think from the experience i have picking up swift shouldn't take long",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "So here's my request if there is any chance for a drumroll \"Internship\" for working on Amie Please consider my application. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "All it takes a single click for hiring a guy on the other side of the world who is willing to passionately work on your product ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Image.asset(
                "assets/images/down.png",
                alignment: Alignment.center,
                height: 130,
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50.00,
                  width: 335.00,
                  decoration: BoxDecoration(
                    color: Color(0xff30baa1),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.00, 0.00),
                        color: Color(0xffd1d6e4).withOpacity(0.20),
                        blurRadius: 40,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.00),
                  ),
                  child: FlatButton.icon(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.black54,
                      ),
                      label: Text("Write me a email",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        launch(_emailLaunchUri.toString());
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nevertheless Congratulations on the Product and i only have best wishes for the product regardless of the Job and wish the team nothing but best wishes",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Thank you for taking the time to read through.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                height: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
