import 'dart:math';

import 'package:custom_widget_flutter_padc/utils/constants.dart';
import 'package:custom_widget_flutter_padc/utils/images.dart';
import 'package:flutter/material.dart';

class CustomLayout extends StatefulWidget {
  const CustomLayout({super.key});

  @override
  State<CustomLayout> createState() => _CustomLayoutState();
}

class _CustomLayoutState extends State<CustomLayout> {
  Formations formations = Formations.FOUR_FORU_TWO;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const FootballPitchBackgroundView(),
          FormationView(
            formations: formations,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            formations =
                Formations.values[Random().nextInt(Formations.values.length)];
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class FormationView extends StatelessWidget {
  final Formations formations;
  const FormationView({super.key, required this.formations});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _generateFormationView(formations),
    );
  }

  Widget _generateFormationView(Formations formations) {
    switch (formations) {
      case Formations.FOUR_FORU_TWO:
        return const FormationViewFourFourTwo();
      case Formations.FOUR_TWO_THREE_ONE:
        return const FormationViewFourTwoThreeOne();
      case Formations.FOUR_THREE_THREE:
        return const FormationViewFourThreeThree();
      case Formations.THREE_FOUR_THREE:
        return const FormationViewThreeFourThree();
    }
  }
}

///formation three four three
class FormationViewThreeFourThree extends StatelessWidget {
  const FormationViewThreeFourThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          const PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

///formation four four two
class FormationViewFourFourTwo extends StatelessWidget {
  const FormationViewFourFourTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          const PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

///formation four two three one
class FormationViewFourTwoThreeOne extends StatelessWidget {
  const FormationViewFourTwoThreeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          const PlayerView(
            isGoalKeeper: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

///formation four three three
class FormationViewFourThreeThree extends StatelessWidget {
  const FormationViewFourThreeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => const PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          const PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

class PlayerView extends StatelessWidget {
  final bool isGoalKeeper;
  const PlayerView({super.key, this.isGoalKeeper = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isGoalKeeper ? Colors.yellow : Colors.blue),
        ),
      ),
    );
  }
}

class FootballPitchBackgroundView extends StatelessWidget {
  const FootballPitchBackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        kFootballPitchImage,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
