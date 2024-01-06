import 'package:flutter/material.dart';
import 'package:pharmecy/widgets/asda_card.dart';
import 'package:pharmecy/widgets/kroger_card.dart';
import 'package:pharmecy/widgets/rite_card.dart';
import 'package:pharmecy/widgets/walmart_card.dart';

class RecentsScreen extends StatefulWidget {
  const RecentsScreen({super.key});

  @override
  State<RecentsScreen> createState() => _RecentsScreenState();
}

class _RecentsScreenState extends State<RecentsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          RiteCard(),
          SizedBox(
            height: 20,
          ),
          WalmartCard(),
          SizedBox(
            height: 20,
          ),
          KrogerCard(),
          SizedBox(
            height: 20,
          ),
          AsdaCard(),
        ],
      ),
    );
  }
}
