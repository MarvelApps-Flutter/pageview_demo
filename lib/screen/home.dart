import 'package:flutter/material.dart';
import 'package:pageview_module/model/bottom_navigation_bar_item.dart';
import 'package:pageview_module/widget/pageview_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<BottomNavigationBarItemModel> _bottomNavigationBarItemList = [
    BottomNavigationBarItemModel(icon: Icons.home, isSelected: false),
    BottomNavigationBarItemModel(icon: Icons.explore, isSelected: false),
    BottomNavigationBarItemModel(icon: Icons.ac_unit, isSelected: false),
    BottomNavigationBarItemModel(icon: Icons.person, isSelected: false)
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _bottomNavigationBarItemList.length; i++) {
      if (i == selectedIndex) _bottomNavigationBarItemList[i].isSelected = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1C1D28),
        body: PageViewWidget(
          index: selectedIndex,
          callback: (index) {
            for (var e in _bottomNavigationBarItemList) {
              e.isSelected = false;
            }
            setState(() {
              _bottomNavigationBarItemList[index].isSelected = true;
            });
          },
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Container _bottomNavigationBar(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 60,
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            return InkWell(
              onTap: () {
                for (var e in _bottomNavigationBarItemList) {
                  e.isSelected = false;
                }
                setState(() {
                  _bottomNavigationBarItemList[index].isSelected = true;
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _bottomNavigationBarItemList[index].icon,
                    color: _bottomNavigationBarItemList[index].isSelected
                        ? Colors.white
                        : Colors.grey.shade400,
                    size: _bottomNavigationBarItemList[index].isSelected
                        ? 30
                        : null,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: _bottomNavigationBarItemList[index].isSelected
                        ? const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white)
                        : const BoxDecoration(),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello Afshin',
                      style: TextStyle(
                          fontFamily: 'NeueHaasDisplay',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'Book your favourite movie',
                      style: TextStyle(
                          fontFamily: 'NeueHaasDisplay',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      'https://dm.henkel-dam.com/is/image/henkel/men_perfect_com_thumbnails_home_pack_400x400-wcms-international?scl=1&fmt=jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: const Color(0xFF292A37),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Search',
                      style: TextStyle(
                          fontFamily: 'NeueHaasDisplay',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Trending Movie',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'NeueHaasDisplay',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.53,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.network(
                'https://wallpapercave.com/wp/wp8872700.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
