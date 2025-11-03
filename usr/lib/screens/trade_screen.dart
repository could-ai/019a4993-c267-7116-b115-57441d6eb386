import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/asset_selector.dart';
import 'package:couldai_user_app/widgets/timeframe_selector.dart';
import 'package:couldai_user_app/widgets/trade_buttons.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  String _selectedAsset = 'EUR/USD';
  String _selectedTimeframe = '1m';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AssetSelector(
          selectedAsset: _selectedAsset,
          onChanged: (asset) {
            setState(() {
              _selectedAsset = asset;
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          TimeframeSelector(
            selectedTimeframe: _selectedTimeframe,
            onChanged: (timeframe) {
              setState(() {
                _selectedTimeframe = timeframe;
              });
            },
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: const Center(
                child: Text(
                  'Chart will be displayed here',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const TradeButtons(),
        ],
      ),
    );
  }
}
