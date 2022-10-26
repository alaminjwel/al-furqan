import 'package:flutter/material.dart';
import '../layout/appbar.dart';
import 'surah.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder(title: title),
      body: const Center(
        child: SurahList(),
      ),
    );
  }
}

class SurahList extends StatefulWidget {
  const SurahList({Key? key}) : super(key: key);
  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  @override
  Widget build(BuildContext context) {
    int surahID;
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: 114,
        itemBuilder: (context, int index) {
          surahID = index+1;
          return ListTile(
            leading: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("$surahID"),
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("Surah Title"),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Surah Group, Ayat #"),
            ),
            trailing: const Text(
              "ٱلۡحَمۡدُ لِلَّهِ",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Surah(surahID: surahID),
              ),
              );
            },
          );
        }
    );
  }
}