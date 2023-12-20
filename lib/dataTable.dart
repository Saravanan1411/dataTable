import 'package:flutter/material.dart';

import 'model.dart';


class DataTableDemo extends StatefulWidget {
  const DataTableDemo({super.key});

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          color: Colors.redAccent
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DataTable(
                columns: columnKeys.map((data){
                  return DataColumn(label: Text(data));}).toList(),
                rows: dataList.map((data) {
                  return DataRow(
                    cells: [
                      DataCell(Text(data.Name.toString())),
                      DataCell(Text(data.Age.toString())),
                      DataCell(Text(data.City.toString())),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
