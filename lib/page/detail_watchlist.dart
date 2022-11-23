import 'package:counter_7/main.dart';
import 'package:counter_7/page/navbar.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/mywatchlistPage.dart';

class WatchlistDetail extends StatefulWidget {
  final Watchlist item;
  const WatchlistDetail({Key? key, required this.item}) : super(key: key);

  @override
  _WatchlistDetailState createState() => _WatchlistDetailState();
}

class _WatchlistDetailState extends State<WatchlistDetail> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist Detail'),
        ),
        drawer: const Navbar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(14, 20, 15, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.item.title,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        const Text('Release Date:'),
                        Text(widget.item.releaseDate)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        const Text('Release Date:'),
                        Text('${widget.item.rating}/5')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text('Release Date:'),
                        Text(widget.item.releaseDate)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        const Text('Watch it yet?'),
                        Text('${widget.item.watched}')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        const Text('Review'),
                        Text(widget.item.review)
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50)),
                    child: const Text('Back'),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
