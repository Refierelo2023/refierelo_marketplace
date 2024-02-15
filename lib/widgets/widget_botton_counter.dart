import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;

  const CounterButton({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.33;
    double containerheight = MediaQuery.of(context).size.width * 0.093;

    return Container(
      width: containerWidth,
      height: containerheight,
      margin: const EdgeInsets.only(left: 7),
      // padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFf4f4f4),
      ),      
      child: Row(     
        mainAxisAlignment: MainAxisAlignment.center,   
        children: [
          IconButton(            
            icon: const Icon(Icons.remove),
            iconSize: MediaQuery.of(context).size.width * 0.039,
            color: const Color(0xff000000),
            onPressed: () {
              onChanged(value - 1);
            },
          ),
          const Spacer(),
          Text(
            '$value',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.038,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          IconButton(            
            icon: const Icon(Icons.add),
            iconSize: MediaQuery.of(context).size.width * 0.039,
            color: const Color(0xff000000),
            onPressed: () {
              onChanged(value + 1);
            },
          ),
        ],
      ),
    );
  }
}
