import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body:SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Top(
                selectedDate: selectedDate,
                onPressed: onHeartPush,
              ),
              _Bottom()
            ],
          ),
        ),
      ),
    );
  }

 void onHeartPush(){
  showCupertinoDialog(
  context: context,
  barrierDismissible: true,
  builder: (BuildContext context){
  return Align(
  alignment: Alignment.center,
  child: Container(
  color: Colors.white,
  height: 300,
  child: CupertinoDatePicker(
    mode: CupertinoDatePickerMode.date,
    initialDateTime: selectedDate,
    maximumDate: DateTime.now(),
    onDateTimeChanged: (DateTime date){
    setState(() {
      selectedDate = date;
    });
  },
  dateOrder: DatePickerDateOrder.ymd,
  ),
  ),
  );
  },
  );
}

}
// 내부에서만 쓴다고 표기 _
class _Top extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback? onPressed;
  const _Top({
    required this.selectedDate,
    required this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();
    return  Expanded(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "너랑 나랑",
              style: textTheme.displayLarge,
            ),
            Text(
              "우리 처음 만난 날",
              style: textTheme.displayMedium,
            ),
            Text(
              "${selectedDate.year}.${selectedDate.month}.${selectedDate.day}",
              style: textTheme.bodyMedium,
            ),
            IconButton(
              iconSize: 70,
              color: Colors.red,
              onPressed: onPressed,
              icon: Icon(Icons.favorite),
            ),
            Text(
              "D+${now.difference(selectedDate).inDays + 1}",
              style: textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Container(
        child:Image.asset(
            'asset/img/backimg.png'
        ),
      ),
    );
  }
}
