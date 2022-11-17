import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PlutoColumn> columns = [
    PlutoColumn(title: "First", field: "first1", type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Second", field: "second1", type: PlutoColumnType.currency(symbol: "\$")),
    PlutoColumn(title: "Third", field: "third1", type: PlutoColumnType.date()),
    PlutoColumn(
        title: "Fourth", field: "fourth1", type: PlutoColumnType.number()),
    PlutoColumn(title: "Fifth", field: "fifth1", type: PlutoColumnType.time())
  ];

  List<PlutoRow> rows = [
    PlutoRow(cells: {'first1': PlutoCell(value: "Hello"),
                    "second1": PlutoCell(value: 5.68),
                    "third1": PlutoCell(value: DateTime.now()),
                    "fourth1": PlutoCell(value: 1234),
                    "fifth1": PlutoCell(value: DateTime.now())
                    }),
    PlutoRow(cells: {'first1': PlutoCell(value: "Hello Liond"),
                    "second1": PlutoCell(value: 14.25),
                    "third1": PlutoCell(value: DateTime.now()),
                    "fourth1": PlutoCell(value: 4321),
                    "fifth1": PlutoCell(value: DateTime.now())
                    }),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PlutoGrid(
      columns: columns,
      rows: rows,
    ));
  }
}
