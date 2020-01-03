import 'package:flutter/material.dart';
import 'package:flutter_crash_course_app/models/location.dart';

class LocationListWidget extends StatelessWidget {

  final List<Location> _locationList;

  LocationListWidget(this._locationList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Locations"),
        ),
        body: ListView.builder(
          itemCount: _locationList.length,
            itemBuilder: (context,index){
              return ListTile(
                leading: _itemThumbnail(_locationList[index].url),
                title: _itemTitle(_locationList[index].name),
              );
            }
        )
    );
  }

  Widget _itemThumbnail(String url){
    return Container(
        constraints: BoxConstraints.tightFor(width: 100),
        child: Image.network(url, fit: BoxFit.fitWidth));
  }

  Widget _itemTitle(String name){
    Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16, color: Colors.black)),
    );
  }

}
