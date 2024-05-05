import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';

class CountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Counter'),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BlocBuilder<CounterBloc, int>(
                  builder: (context, count) {
                    return Text(
                      "$count",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    );
                  },
                ),
                SizedBox(width: 16), // Adjust spacing between count and button
                ElevatedButton(
                  onPressed: () =>
                      BlocProvider.of<CounterBloc>(context).add(CounterEvent.increment),
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
