import 'package:flutter/material.dart';
import 'package:flutter_start/provider/album.dart';
import 'package:provider/provider.dart';

import '../model/model.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumView();
}

class _AlbumView extends  State<AlbumView> {
  late List<Album> albumList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AlbumProvider>(
      create: ((context) => AlbumProvider()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
        body: Consumer<AlbumProvider>(
          builder: (context, provider, child) {
            albumList = provider.getAlbumList();
            return ListView.builder(
                itemCount: albumList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Text("${albumList[index].id} : ${albumList[index].title}"),
                  );
                }
            );
          },
        ),
      ),
    );
  }
}
