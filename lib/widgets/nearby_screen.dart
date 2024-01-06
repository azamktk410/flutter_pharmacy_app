import 'package:flutter/material.dart';
import 'package:pharmecy/widgets/asda_card.dart';
import 'package:pharmecy/widgets/kroger_card.dart';
import 'package:pharmecy/widgets/rite_card.dart';
import 'package:pharmecy/widgets/walmart_card.dart';

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  State<NearbyScreen> createState() => _NearbyScreenState();
}

class _NearbyScreenState extends State<NearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          WalmartCard(),
          SizedBox(
            height: 10,
          ),
          KrogerCard(),
          SizedBox(
            height: 10,
          ),
          AsdaCard(),
          SizedBox(
            height: 10,
          ),
          RiteCard()
        ],
      ),
    );
  }
}
