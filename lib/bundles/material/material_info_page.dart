import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inventory_management/bundles/material/search_material.dart';

class MaterialInfoPage extends StatefulWidget {
  @override
  MaterialInfoPageState createState() {
    return new MaterialInfoPageState();
  }
}

class MaterialInfoPageState extends State<MaterialInfoPage> {
  TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController.fromValue(TextEditingValue.empty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 10,
            ),
            child: Container(
              child: InkWell(
                onTap: () {
                  showSearch(
                    delegate: SearchMaterial(),
                    context: context,
                  );
                },
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.barcode),
              onPressed: () async {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Icon(
              Icons.score,
              size: 60.0,
            ),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
            MaterialInfoTile(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.more_horiz,
          ),
          onPressed: () {},
        ));
  }
}

class MaterialInfoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('123123'),
          ),
          Expanded(
            child: Text('123123'),
          )
        ],
      ),
    );
  }
}
