import 'package:flutter/material.dart';

class AssetSelector extends StatelessWidget {
  final String selectedAsset;
  final ValueChanged<String> onChanged;

  const AssetSelector({
    super.key,
    required this.selectedAsset,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showAssetSelectionDialog(context);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.arrow_drop_down),
          const SizedBox(width: 8),
          Text(
            selectedAsset,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  void _showAssetSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Asset'),
          content: SizedBox(
            width: double.minPositive,
            child: ListView(
              shrinkWrap: true,
              children: [
                _buildAssetTile(context, 'EUR/USD'),
                _buildAssetTile(context, 'BTC/USD'),
                _buildAssetTile(context, 'ETH/USD'),
                _buildAssetTile(context, 'GOLD'),
                _buildAssetTile(context, 'SILVER'),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAssetTile(BuildContext context, String asset) {
    return ListTile(
      title: Text(asset),
      onTap: () {
        onChanged(asset);
        Navigator.of(context).pop();
      },
    );
  }
}
