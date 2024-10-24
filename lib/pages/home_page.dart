import 'package:flutter/material.dart';
import '../widgets/scrollable_games_widget.dart';
import '../models/data.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _deviceWidth;
  var _selectedGame;

  @override
  void initState() {
    super.initState();
    _selectedGame = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featureGameWidget(),
          _gradientboxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _featureGameWidget() {
    return SizedBox(
        height: _deviceHeight * 0.50,
        width: _deviceWidth,
        child: PageView(
          onPageChanged: (_index) {
            setState(() {
              _selectedGame = _index;
            });
          },
          scrollDirection: Axis.horizontal,
          children: featuredGames.map((_game) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_game.coverImage.url),
                  onError: (error, stackTrace) {
                    print('Failed to load image: $error');
                  },
                ),
              ),
            );
          }).toList(),
        ));
  }

  Widget _gradientboxWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: _deviceHeight * 0.80,
          width: _deviceWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color.fromRGBO(35, 45, 59, 1.0), Colors.transparent],
                stops: [0.65, 1.0]),
          ),
        ));
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          // horizontal: _deviceWidth * 0.05, vertical: _deviceHeight * 0.05),
          horizontal: _deviceWidth * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _topBarWidget(),
          SizedBox(height: _deviceHeight * 0.15),
          _featureGameInfoWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
            child: ScrollableGamesWidget(
                _deviceHeight * 0.24, _deviceWidth, true, games),
          )
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
        height: _deviceHeight * 0.13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: _deviceWidth * 0.03,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 30,
                )
              ],
            )
          ],
        ));
  }

  Widget _featureGameInfoWidget() {
    return SizedBox(
      height: _deviceHeight * 0.12,
      width: _deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            featuredGames[_selectedGame].title,
            maxLines: 2,
            style: TextStyle(
                color: Colors.white,
                fontSize: _deviceHeight * 0.040,
                fontWeight: FontWeight.bold),
          ),
          // SizedBox(height: _deviceHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: featuredGames.map((_game) {
              bool _isActive =
                  _game.title == featuredGames[_selectedGame].title;
              double _circleRadius = _deviceHeight * 0.012;
              return Container(
                margin: EdgeInsets.only(right: _deviceWidth * 0.015),
                height: _circleRadius / 2,
                width: _circleRadius / 2,
                decoration: BoxDecoration(
                    color: _isActive ? Colors.white : Colors.grey,
                    borderRadius: BorderRadius.circular(100)),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
