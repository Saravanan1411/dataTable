class DataModel{
  String? Name;
  String? Age;
  String? City;

  DataModel(this.Name,this.Age,this.City);
}

List<String> columnKeys = data.first.keys.toList();

List<DataModel> dataList = data.map((e) => DataModel(e['Name'].toString(),e['Age'].toString(),e['City'].toString())).toList();


var data=[
  {'Name': 'John Doe', 'Age': 25, 'City': 'New York'},
  {'Name': 'Jane Smith', 'Age': 30, 'City': 'San Francisco'},
  {'Name': 'Bob Johnson', 'Age': 22, 'City': 'Chicago'},
];


