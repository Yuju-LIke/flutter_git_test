import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildNumber(),
        _buildKind(),
        _buildVaildate(),
      ],
    );
  }

  Widget _buildNumber() {
    return InkWell(
      onTap: () {
        print("인원수");
      },
      child: Container(
        alignment: Alignment.center,
        width: 90,
        height: 32,
        child: Text(
          "인원수",
          style: TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  Widget _buildKind() {
    return InkWell(
      onTap: () {
        print("종류");
      },
      child: Container(
        alignment: Alignment.center,
        width: 90,
        height: 32,
        child: Text(
          "종류",
          style: TextStyle
            (fontSize: 13,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(),
        ),
      ),
    );
  }


  Widget _buildVaildate() {
    return InkWell(
      onTap: () {
        print("종류");
      },
      child: Container(
        alignment: Alignment.center,
        width: 90,
        height: 32,
        child: Text(
          "종류",
          style: TextStyle
            (fontSize: 13,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(),
        ),
      ),
    );
  }


}





