import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quotesapp/widgets/detailspage.dart';

class finalcard extends StatefulWidget {
  @override
  _finalcardState createState() => _finalcardState();
}

class _finalcardState extends State<finalcard> {
  final String url = "https://type.fit/api/quotes";
  List data;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    this.getjsondata();
  }

  getjsondata() async {
    var convertdatatojson;
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

      return convertdatatojson;
  }

  @override
  Widget build(BuildContext context) {
    return Container(

        child: (!loading)
            ?
        ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20),

                ),

                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: ListTile(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(data: data[index],)));},
                      leading: CircleAvatar(child: Text("D"),backgroundColor: Colors.red,),
                    selected: true,
                    title: Text(
                    data[index]["text"],
                    style: TextStyle(
                    color: Colors.black, fontSize: 20),
                    )
                    ,
                    ),
                  ),
                ),
              );
            })
            : Center(child: CircularProgressIndicator()));
  }
}
