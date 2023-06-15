import 'package:flutter/material.dart';
import 'package:flutter_profileme/components/map.dart';
import 'package:flutter_profileme/components/profile_buttons.dart';
import 'package:flutter_profileme/components/profile_count_info.dart';
import 'package:flutter_profileme/components/profile_drawer.dart';
import 'package:flutter_profileme/components/profile_header.dart';
import 'package:flutter_profileme/components/profile_tap.dart';
import 'package:flutter_profileme/theme.dart';
import 'GoogleMap';

void main() {
  runApp(MyApp());
}


const LatLng currentLocation = LatLng(25.1193, 55.3773);


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),

    );
  }
}


class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 15),
                GoogleMap(initialCameraPosition: const CameraPosition(target: currentLocation,
                zoom: 14,
                ),
              ),
                SizedBox(height: 15),
                ProfileButtons(),
                SizedBox(height: 20),
                ProfileHeader(),
                SizedBox(height: 20),
                ProfileCountInfo(),
                SizedBox(height: 20),

               ]),
            ),
          ];
        },
          body: ProfileTab(),
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("지도"),
      centerTitle: true,
    );
  }
}

