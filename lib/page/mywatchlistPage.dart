import 'package:counter_7/main.dart';
import 'package:counter_7/page/detail_watchlist.dart';
import 'package:counter_7/page/navbar.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';

class Mywatchlist extends StatefulWidget {
  const Mywatchlist({Key? key}) : super(key: key);

  @override
  _MywatchlistState createState() => _MywatchlistState();
}

class _MywatchlistState extends State<Mywatchlist> {
  Future<List<Watchlist>> fetchwatchlist() async {
    var url =
        Uri.parse('https://tugas-2-pbp-glan.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    var data = jsonDecode(utf8.decode(response.bodyBytes));

    List<Watchlist> listWatchlist = [];
    for (var d in data) {
      if (d != null) {
        listWatchlist.add(Watchlist.fromJson(d));
      }
    }
    return listWatchlist;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const Navbar(),
      body: FutureBuilder(
          future: fetchwatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return !snapshot.hasData
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'You doesnt have any watch list yet :(',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.deepPurple.shade200,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WatchlistDetail(
                                item: snapshot.data[index],
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data![index].title}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.only(bottom: 12),
                    );
            }
          }));
}
