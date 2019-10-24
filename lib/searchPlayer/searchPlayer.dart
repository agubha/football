import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/searchApiResponse.dart';

class SearchPlayer extends StatefulWidget {
  SearchPlayer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchPlayer> {
  TextEditingController _searchController = TextEditingController();
  PlayerSearch _playerSearch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _searchController,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                        child: Text("Search"),
                        onPressed: () async {
                          _playerSearch =
                              await getPlayers(_searchController.text);
                          setState(() {});
//                          return setState(() async {
//
//                          });
                        }),
                  )
                ],
              ),
              Expanded(
                child: _playerSearch == null
                    ? Container()
                    : ListView.builder(
                        itemCount: _playerSearch.items.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              //TODO PuSH  TO PlAYER DETAIL AND PASS MODEL
//                              _playerSearch.items
                              //Navigator push
                            },
                            child: Card(
                              elevation: 8.0,
                              margin: EdgeInsets.all(4.0),
                              child: Row(
                                children: <Widget>[
                                  Image.network(
                                    _playerSearch.items[index].headshot.imgUrl,
                                    height: 80.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(_playerSearch
                                                  .items[index].firstName),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(" "),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(_playerSearch
                                                  .items[index].lastName),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "Age: ${_playerSearch.items[index].age}"),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "Weight: ${_playerSearch.items[index].weight}"),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "Height: ${_playerSearch.items[index].height}"),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                    "Score: ${_playerSearch.items[index].position}"),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.network(
                                                _playerSearch.items[index].club
                                                    .imageUrls.dark.large,
                                                height: 20,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.network(
                                                _playerSearch.items[index]
                                                    .nation.imageUrls.large,
                                                height: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
              )
            ],
          ),
        ));
  }

  Future<PlayerSearch> getPlayers(String text) async {
    String _endpoint = text;
    Response response = await dioBASE().get(_endpoint);
    try {
      return PlayerSearch.fromJson(response.data);
    } catch (e) {
      print(e);
      return Future.error(e.toString());
    }
  }

  dioBASE([String token = ""]) {
    String _endpoint =
        "https://www.easports.com/fifa/ultimate-team/api/fut/item?name=";
    Options option = new Options(
      headers: token == null ? null : {"Authorization": token},
      baseUrl: _endpoint,
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );
    Dio dio = Dio(option);
    return dio;
  }
}
