import 'package:flutter/material.dart';
import 'package:videogame_info/api.dart';
import 'package:videogame_info/models/deatalles_game.dart';
import 'package:videogame_info/widgets/game_details_list.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF3C007A),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      home: const Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.red,
                Colors.red,
              ],
              stops: [0.0, 0.35, 1.0],
            ),
          ),
          /*child: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                  future: apiLoadDetailsGames(),
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<List<DetallesGame>> snapshot,
                  ) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final detailsGamesList = snapshot.data!;
                    return ListView.builder(
                      itemCount: detailsGamesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return UserListItem(game: detailsGamesList[index]);
                      },
                    );
                  },
                ),
              ),
            ],
          ),*/
        ),
      ),
    );
  }
}
