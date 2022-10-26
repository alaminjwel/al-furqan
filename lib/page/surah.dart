import 'package:flutter/material.dart';

class Surah extends StatelessWidget {
  final int surahID;
  const Surah({Key? key, required this.surahID}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surah Name $surahID"),
      ),
      body: Center(
        child: AyatList(surahID: surahID),
      ),
    );
  }
}

class AyatList extends StatefulWidget {
  final int surahID;
  const AyatList({Key? key,  required this.surahID}) : super(key: key);
  @override
  State<AyatList> createState() => _AyatListState();
}

class _AyatListState extends State<AyatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: 50,
        itemBuilder: (context, int index) {
          var ayatID = index+1;
          return ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("$ayatID"),
            ),
            title: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("ٱلۡحَمۡدُ لِلَّهِ ٱلَّذِي خَلَقَ ٱلسَّمَٰوَٰتِ وَٱلۡأَرۡضَ وَجَعَلَ ٱلظُّلُمَٰتِ وَٱلنُّورَۖ ثُمَّ ٱلَّذِينَ كَفَرُواْ بِرَبِّهِمۡ يَعۡدِلُون",style: TextStyle(fontFamily: 'Noore Hidayat Regular')),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text("যারা অদৃশ্য বিষয়গুলিতে বিশ্বাস স্থাপন করে এবং সালাত প্রতিষ্ঠা করে এবং আমি তাদেরকে যে উপজীবিকা প্রদান করেছি তা হতে দান করে থাকে ।"),
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(Icons.more_vert),
            ),
            onTap: () {
            },
          );
        }
    );
  }
}