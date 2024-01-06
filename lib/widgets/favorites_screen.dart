import 'package:flutter/material.dart';
import 'package:pharmecy/widgets/asda_card.dart';
import 'package:pharmecy/widgets/kroger_card.dart';
import 'package:pharmecy/widgets/rite_card.dart';
import 'package:pharmecy/widgets/walmart_card.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          KrogerCard(),
          SizedBox(
            height: 20,
          ),
          WalmartCard(),
          SizedBox(
            height: 20,
          ),
          AsdaCard(),
          SizedBox(
            height: 20,
          ),
          RiteCard()
        ],
      ),
    );
  }
}
