import 'package:amie_jobApplication/Services/NavigationService.dart';
import 'package:amie_jobApplication/Views/DetailScreen/DetailScreen.dart';
import 'package:amie_jobApplication/Views/DetailScreen/DetailScreenModel.dart';
import 'package:amie_jobApplication/Views/WhyScreen/WhyScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:amie_jobApplication/Views/HomeScreen/HomeScreenModel.dart';

import '../../locator.dart';

class HomeScreen extends StatelessWidget {
  final NavigationService _navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenModel>.reactive(
        viewModelBuilder: () => HomeScreenModel(),
        onModelReady: (model) => model.getEpisodes(),
        builder: (context, model, children) => !model.busy
            ? Scaffold(
                body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    new SliverAppBar(
                      title: new Text(
                        "Amie Job Application",
                        style: TextStyle(color: Colors.black),
                      ),
                      pinned: false,
                      floating: true,
                      forceElevated: innerBoxIsScrolled,
                      backgroundColor: Colors.white,
                      bottom: CustomAppBar(
                        height: 50,
                      ),
                    ),
                  ];
                },
                body: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    padding: EdgeInsets.only(
                        top: 20, bottom: 50, left: 20, right: 20),
                    itemCount: model.pictures.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: GestureDetector(
                            //i usually create a router for navigation but since the app is priliminary i would like to keep things simple here.
                            // onTap: () {
                            //   _navigationService.navigateTo()
                            // },
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        model: model.pictures[index],
                                      )),
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: model.pictures[index].downloadUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(1, index.isEven ? 1.2 : 1.8)),
              ))
            : CircularProgressIndicator());
  }
}

class CustomAppBar extends PreferredSize {
  final double height;
  CustomAppBar({
    this.height,
  });
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Icons.work,
          color: Colors.black87,
        ),
        label: Text("Why i Want to work with Amie",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => WhyHireMeScreen()),
        ),
      ),
    );
  }
}
