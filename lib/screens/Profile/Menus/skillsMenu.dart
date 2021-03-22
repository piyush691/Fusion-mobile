import 'package:flutter/material.dart';
import 'dart:ui';

//List of Skill/Technology
final List<Map<String, String>> listOfColumns = [
  {"skill": "Flutter", "rating": "100"},
  {"skill": "Django", "rating": "60"},
  {"skill": "Node.js", "rating": "19"},
  {"skill": "Java", "rating": "70"},
];

class skillsMenu extends StatelessWidget {

  const skillsMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      padding: EdgeInsets.all((5.0)),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            // Skills and Technologies Container
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Container(
                  //Label + Edit Button
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0)),
                      color: Colors.grey),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Expanded(child: Text('Skills & Technologies',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(7.0),
                  child: Column(
                    children: [
                      Container(
                        // Skill/Technology Container
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        // Rate Container
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: [
                            DataTable(
                              columnSpacing: 10.0,
                              columns: [
                                DataColumn(label: Text(
                                    'Skill/Technology',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                                )),
                                DataColumn(label: Text(
                                    'Rating Out of 100',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                )),
                              ],
                              rows:
                              listOfColumns // Loops through dataColumnText, each iteration assigning the value to element
                                  .map(
                                ((element) => DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                        Container(
                                            width: 200, //SET width
                                            child: Text(element["skill"]!))), //Extracting from Map element the value
                                    DataCell(Container(
                                        width: 30, //SET width
                                        child: Text(element["rating"]!,textAlign: TextAlign.right))),
                                  ],
                                )),
                              )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            // Skills and Technologies Container
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Container(
                  //Label + Edit Button
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0)),
                      color: Colors.grey),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Expanded(child: Text('Add More Skills & Technologies',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      ElevatedButton(
                          child: Text('Add'),
                          onPressed: () => {
                                //Edit Function
                              },
                          style: ElevatedButton.styleFrom(primary: Colors.red)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(7.0),
                  child: Column(
                    children: [
                      Container(
                        // Skill/Technology Container
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              //Label + Edit Button
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0)),
                                  color: Colors.grey),
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text('Skill/Technology')),
                                  // ElevatedButton(
                                  //     child: Text('Edit'),
                                  //     onPressed: ()=>{
                                  //       //Edit Function
                                  //     },
                                  //     style: ElevatedButton.styleFrom(
                                  //         primary: Colors.red)),
                                ],
                              ),
                            ),
                            Container(
                              // Body of Menu
                              padding: EdgeInsets.all(7.0),
                              color: Colors.white24,
                              child: Container(
                                decoration: BoxDecoration(
                                    //border: Border.all(color: Colors.black),
                                    color: Colors.grey.shade300),
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
                                child: TextFormField(
                                  enabled: true,
                                  initialValue: 'Add new',
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        // Rate Container
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              //Label + Edit Button
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0)),
                                  color: Colors.grey),
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text('Rate')),
                                  // ElevatedButton(
                                  //     child: Text('Edit'),
                                  //     onPressed: ()=>{
                                  //       //Edit Rate
                                  //     },
                                  //     style: ElevatedButton.styleFrom(
                                  //         primary: Colors.red)),
                                ],
                              ),
                            ),
                            Container(
                              // Body of Menu
                              padding: EdgeInsets.all(7.0),
                              color: Colors.white24,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.grey.shade300),
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
                                child: TextFormField(
                                  enabled: true,
                                  initialValue: 'Out of 100',
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
