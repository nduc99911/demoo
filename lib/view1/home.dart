import 'package:demo/view3/customsider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);
  late List<SalesData> data;
  List<SalesData> chartData(){
    final List<SalesData> charData=[
      SalesData('num1', 55, 55, 33, 44),
      SalesData('num2', 55, 55, 33, 44),
      SalesData('num3', 55, 55, 33, 44),
      SalesData('num4', 55, 55, 33, 44),
      SalesData('num5', 55, 55, 33, 44),
    ];
    return charData;
  }
  @override
  void initState() {
    // TODO: implement initState
    data=chartData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Table(
                border: TableBorder.all(), // Allows to add a border decoration around your table
                children:  [
                  TableRow(children :[
                    Container(
                      height: 50,
                        color: Colors.green[200],
                        child: const Center(
                          child: Text('MUA'),
                        )
                    ),
                    Container(
                      height: 50,
                        color: Colors.green[200],
                        child: const Center(
                          child: Text('BÁN'),
                        ),

                    ),

                  ]),
                  TableRow(children :[
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('KL'),
                            Text('Giá'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('KL'),
                            Text('Giá'),
                          ],
                        ),
                      ),
                    ),
                  ]),

                ]
            ),
            Table(
                border: TableBorder.all(), // Allows to add a border decoration around your table
                children:  [
                  TableRow(children :[
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children:  [
                            Text('-10K'),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('120.5K'),
                              ),
                            ),
                            SliderVerticalWidget(rotate: 2,color: Colors.yellow[200],colorTitle: Colors.orange,value: 55.60,),
                            SizedBox(width: 5,),
                            SliderVerticalWidget(rotate: 0,color: Colors.green[200],colorTitle: Colors.green,value: 60,),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('120.5K'),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('-10K'),
                          ],
                        ),
                      ),
                    ),
                  ]),

                ]
            ),
            Table(
                border: TableBorder.all(), // Allows to add a border decoration around your table
                children:  [
                  TableRow(children :[
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children:  [
                            Text('-10K'),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('120.5K'),
                              ),
                            ),
                            SliderVerticalWidget(rotate: 2,color: Colors.yellow[200],colorTitle: Colors.orange,value: 55.60,),
                            SizedBox(width: 5,),
                            SliderVerticalWidget(rotate: 0,color: Colors.green[200],colorTitle: Colors.green,value: 60,),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('120.5K'),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('-10K'),
                          ],
                        ),
                      ),
                    ),
                  ]),

                ]
            ),
          ],
        ),
      ),
    );
  }
}

Widget chartWidget(
{
  List<SalesData> ? data,
  String ? total
}
    ){
  return  Row(
    children: [
      Text(total??''),
      Container(
          height: 70,
          width: 120,
          child: SfCartesianChart(
              plotAreaBorderWidth: 0,
              primaryXAxis: NumericAxis(
                  isVisible: false
              ),
              primaryYAxis: NumericAxis(
                  isVisible: false
              ),
              series: <ChartSeries>[
                // Renders bar chart
                BarSeries<SalesData, num>(
                    dataSource: data??[],
                    xValueMapper: (SalesData sales, _) => sales.num1,
                    yValueMapper: (SalesData sales, _) => sales.num2
                ),

              ]
          )
      ),
    ],
  );
}
class SalesData {
  SalesData(this.title,this.num1,this.num2,this.num3,this.num4);
  final String title;
  final num num1;
  final double num2;
  final num num3;
  final num num4;
}
