import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScrollviewPaginationPage extends StatefulWidget {
  const ScrollviewPaginationPage({super.key});

  @override
  State<ScrollviewPaginationPage> createState() => _ScrollviewPaginationPageState();
}

class _ScrollviewPaginationPageState extends State<ScrollviewPaginationPage>  {

  final _url = 'https://jsonplaceholder.typicode.com/albums';
  int _page = 1;
  final int _limit = 20;
  bool _hasNextPage = true;
  bool _isFirstLoadRunning = false;
  bool _isLoadMoreRunning = false;
  List _albumList = [];
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    initLoad();
    _controller = ScrollController()..addListener(_nextLoad);
  }


  void initLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });
    try {
      final res = await http.get(Uri.parse("$_url?_page=$_page&_limit=$_limit"));
      setState(() {
        _albumList = jsonDecode(res.body);
      });

    } catch(e) {
      print(e.toString());
    }

    setState(() {
      _isFirstLoadRunning = false;
    });
  }

  void _nextLoad() async {
    print("nextLoad");
    if(_hasNextPage && !_isFirstLoadRunning && !_isLoadMoreRunning
        && _controller.position.extentAfter < 100) {
      setState(() {
        _isLoadMoreRunning = true;
      });
      _page += 1;
      try {
        final res = await http.get(Uri.parse("$_url?_page=$_page&_limit=$_limit"));
        final List fetchedAlbums = json.decode(res.body);
        if(fetchedAlbums.isNotEmpty) {
          setState(() {
            _albumList.addAll(fetchedAlbums);
          });
        } else {
          setState(() {
            _hasNextPage = false;
          });
        }
      } catch(e) {
        print(e.toString());
      }

      setState(() {
        _isLoadMoreRunning = false;
      });

    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(_nextLoad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scroll Pagination"),
        ),
        body: _isFirstLoadRunning
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : Column(
          children: [
            Expanded(
                child: ListView.builder(
                    controller: _controller,
                    itemCount: _albumList.length,
                    itemBuilder: (context, index) => Card(
                      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: ListTile(
                        title: Text(_albumList[index]["id"].toString()),
                        subtitle: Text(_albumList[index]["title"]),
                      ),
                    )
                )
            ),
            if (_isLoadMoreRunning == true)
              Container(
                  padding: const EdgeInsets.all(30),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  )
              ),
            if (_hasNextPage == false)
              Container(
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Text(
                        "No more data to be fetched",
                        style: TextStyle(
                            color: Colors.white
                        )
                    ),
                  )
              )
          ],
        )
    );
  }
}