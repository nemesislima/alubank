import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      decoration: const BoxDecoration (
        gradient: LinearGradient (
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 83.0, 16.0, 16.0),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                // Text(
                //   '\$1000.00',
                //   style: TextStyle (
                //     fontSize: 28,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                Text.rich (
                  TextSpan (
                    text: '\$',
                    // style: TextStyle (
                    //   fontSize: 16,
                    // ), 
                    children: <TextSpan> [
                      TextSpan (
                        text: '1000.00',
                        // style: TextStyle (
                        //   fontSize: 28,
                        //   fontWeight: FontWeight.bold, 
                        // )
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ], 
                  ),
                ),
                const Text(
                  'Balanço disponível',
                  // style: TextStyle (
                  //   fontSize: 16,
                  // ),
                )
              ],
            ),
            const Icon (
              Icons.account_circle,
              size: 42,
            ),
          ]
          ),
      ),
    );
  }
}