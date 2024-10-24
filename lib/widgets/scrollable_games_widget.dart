import 'package:flutter/material.dart';
import '../pages/detail_page.dart';
import '../models/data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool _showTitle;

  final List<Game> _gameData;

  ScrollableGamesWidget(
      this._height, this._width, this._showTitle, this._gameData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: _height,
        width: _width,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: _gameData.map((_game) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(game: _game);
                }));
              },
              child: Container(
                height: _height,
                width: _width * 0.40,
                padding: EdgeInsets.only(right: _width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: _height * 0.80,
                      width: _width * 0.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(_game.coverImage.url))),
                    ),
                    Text(
                      _game.title,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.08),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}
