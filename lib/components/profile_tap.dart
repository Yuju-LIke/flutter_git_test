import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {


  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }




  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
      Tab(icon: Icon(Icons.directions_car)),
      Tab(icon: Icon(Icons.arrow_back_ios)),
      ],
    );
  }


  Widget _buildTabBarView() {
    return TabBarView(
        controller: _tabController,
        children: [
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
              itemBuilder: (context, index) {
                return Image.network("https://picsum.photos/id/${index + 60}/300/300",
                scale: 0.2);
              },
          ),
          Container(color: Colors.pink),
    ],
    );
  }

}
