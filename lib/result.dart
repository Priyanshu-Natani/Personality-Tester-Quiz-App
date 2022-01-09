import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final VoidCallback reset;
  Result(this.totalScore, this.reset);

  String get finalResult {
    if (totalScore < 10) {
      return 'Personality  : Positive';
    } else if (totalScore < 15) {
      return 'Personality  : Practical ';
    } else {
      return 'Personality  : Negative';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Text(finalResult,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  )),
            ),
            ElevatedButton(onPressed: reset, child: Text('Reset Quiz'))
          ],
        ),
      ),
    );

    // Column(

    //   children: [
    //     Card(
    //       margin: EdgeInsets.all(20),
    //       child: Container(
    //         margin: EdgeInsets.all(20),
    //           child: Text(
    //         'Result',
    //         style: TextStyle(fontSize: 32),
    //       )),
    //       elevation: 10,
    //     ),
    //     Card(
    //       elevation: 10,
    //       child: Container(
    //         padding: EdgeInsets.all(20),
    //         child: Center(
    //           child: Text(finalResult ,
    //               style: TextStyle(fontSize: 32)),
    //         ),
    //       ),
    //     )
    //   ,
    //   ElevatedButton(onPressed:reset, child: Text('Reset Quiz'))],
    // );
  }
}
