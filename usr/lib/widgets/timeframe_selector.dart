import 'package:flutter/material.dart';

class TimeframeSelector extends StatelessWidget {
  final String selectedTimeframe;
  final ValueChanged<String> onChanged;

  const TimeframeSelector({
    super.key,
    required this.selectedTimeframe,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: const Color(0xFF1F2630),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTimeframeButton('1m'),
          _buildTimeframeButton('5m'),
          _buildTimeframeButton('15m'),
          _buildTimeframeButton('30m'),
          _buildTimeframeButton('1h'),
          _buildTimeframeButton('4h'),
        ],
      ),
    );
  }

  Widget _buildTimeframeButton(String timeframe) {
    final isSelected = timeframe == selectedTimeframe;
    return GestureDetector(
      onTap: () => onChanged(timeframe),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          timeframe,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
