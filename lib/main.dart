import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(StudyApp()); // 비동기로 실행(이벤트 루프에 등록된다.)
  sleep(Duration(seconds: 3));
  print("main 종료");
}

// 저장 시 애뮬레이터에 바로 반영되는 것은 hot reload 때문이며 build 메서드 안쪽 코드에서 작용한다.
class StudyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Android: MaterialApp();  [안드로이드 앱을 만들기위한 클래스]
    // ios: CupertinoApp();     [ios 앱을 만들기위한 클래스]
    return MaterialApp(
      home: SafeArea(
        child: Scaffold( // 앱 기본구조를 가지고 있는 클래스
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Flutter"),
            leading: Icon(Icons.menu),
          ),
          body: Text("안녕하세요"),
          floatingActionButton: FloatingActionButton(
            child: Text("+"),
            onPressed: () {
              print("클릭됌");
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  label: "메인",
                  icon: Icon(
                    Icons.access_alarm_rounded,
                  )
              ),
              BottomNavigationBarItem(
                  label: "스케줄",
                  icon: Icon(
                    Icons.access_alarm_rounded,
                  )
              )
            ],
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}


