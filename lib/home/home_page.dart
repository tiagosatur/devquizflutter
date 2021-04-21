import 'package:devquizflutter/home/widgets/appbar/appbar_widget.dart';
import 'package:devquizflutter/home/widgets/level_button/level_button_widget.dart';
import 'package:devquizflutter/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                LevelButtonWidget(
                  label: 'Fácil'
                ),
                LevelButtonWidget(
                  label: 'Médio'
                ),
                LevelButtonWidget(
                  label: 'Difícil'
                ),
                LevelButtonWidget(
                  label: 'Perito'
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: StaggeredGridView.count(
                crossAxisSpacing: 13,
                mainAxisSpacing: 13,
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
                staggeredTiles: [
                  StaggeredTile.fit(1),
                  StaggeredTile.fit(1),
                  StaggeredTile.fit(1),
                  StaggeredTile.fit(1),
                ],
              )
              
            )
            
          ],
        ),
      )
    );
  }
}