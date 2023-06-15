import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],

    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/yujume.jpeg"),

      ),
    );
  }


  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "전유주",
          style: TextStyle(fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
            "별명:쥐방우리",
          style: TextStyle(fontSize: 20,
          ),
        ),
        Text(
            "N잡러/공인중개사",
          style: TextStyle(fontSize: 20,
          ),
        ),
      ],
    );
  }

}
