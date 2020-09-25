import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:playground/services/base_service.dart';

class Todos extends StatefulWidget {
  Todos({Key key}) : super(key: key);

  @override
  _TodosState createState() => _TodosState();
}

class SurburbTile extends StatelessWidget {
 final dynamic surburb;
 const SurburbTile({@required this.surburb});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.input),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(surburb['name']),
          Text(surburb['ward_name']),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}

class _TodosState extends State<Todos> {
  List _todos = [];
  bool _isLoading = true;
  BaseService _bs = BaseService();


  @override
  void initState() {
    super.initState();

    _bs.getTodos().then((value) {
      
      var result = jsonDecode(value);

      if(result['success']) {
        _todos = result['data'];
      }

      setState(() {
        _isLoading = false;
      });

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todos')),
      body: _isLoading ? Center(
        child: CircularProgressIndicator(),
      ) : ListView(
        children: _todos.map((e) => SurburbTile( surburb: e,)).toList()
      )
    );
  }
}