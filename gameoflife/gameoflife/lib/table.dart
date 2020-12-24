import 'package:flutter/material.dart';

class TableExample extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
            border: TableBorder.all(
                color: Colors.black26, width: 2, style: BorderStyle.none),
            children: [
              TableRow(children: [
                TableCell(child: Center(child: Text('Title'))),
                TableCell(
                  child: Center(child: Text('Title')),
                ),
                TableCell(child: Center(child: Text('Title'))),
                TableCell(child: Center(child: Text('Title'))),
              ]),
              TableRow(children: [
                TableCell(child: Center(child: Text('Title'))),
                TableCell(
                  child: Center(child: Text('Title')),
                ),
                TableCell(child: Center(child: Text('Title'))),
                TableCell(child: Center(child: Text('Title'))),
              ]),
              TableRow(children: [
                TableCell(child: Center(child: Text('Title'))),
                TableCell(
                  child: Center(child: Text('Title')),
                ),
                TableCell(child: Center(child: Text('Title'))),
                TableCell(child: Center(child: Text('Title'))),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
