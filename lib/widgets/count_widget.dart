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
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400),
        toolbarHeight: 75,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                ElevatedButton(
                    onPressed: () =>
                    BlocProvider.of<CounterBloc>(context).add(CounterEvent.decrement),
                    child: Text("-"),
                ),
                SizedBox(width: 16),
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
