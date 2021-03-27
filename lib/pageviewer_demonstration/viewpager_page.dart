import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPageViewerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Viewpager Demonstration",
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        primaryColorLight: Colors.greenAccent,
        primaryColorDark: Colors.green,
        accentColor: Colors.green,
      ),
      home: _MyViewPagerAppPage(title: "Viewpager Demonstration",),
    );
  }

}


class _MyViewPagerAppPage extends StatefulWidget {
  _MyViewPagerAppPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return MyViewPagerAppPageState();
  }
}

class MyViewPagerAppPageState  extends State<_MyViewPagerAppPage>{

  int _pageIndex = 1;
  PageController viewPagerController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page $_pageIndex",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.white70,
              child: PageView(
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                physics: BouncingScrollPhysics(),
                controller: viewPagerController,
                onPageChanged: (number) {
                  setState(() {
                    _pageIndex = number + 1;
                  });
                },
                children: [
                  Container(
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                          )
                        ),
                      ),
                    ),
                  ),

                  Container(
                    child: Container(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 100,
                              color: Colors.white,
                            )
                        ),
                      ),
                    ),
                  ),

                  Container(
                    child: Container(
                      color: Colors.lightGreen,
                      child: Center(
                        child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 100,
                              color: Colors.white,
                            )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.cyan,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Card(
                  color: Colors.deepPurple,
                  elevation: 3.0,
                  child: InkWell(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
                      child: Text(
                        "Button 1",
                          style: TextStyle(
                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.deepOrange,
                  elevation: 3.0,
                  child: InkWell(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
                      child: Text(
                        "Button 2",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }



}
