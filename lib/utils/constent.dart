import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quora_clone/screens/webview_screen.dart';
import 'package:quora_clone/mobile/mobile_home_screen.dart';

const double kAppBarHeight = 60;

List<Widget> screenList = [
  const HomeScreeen(),
  Platform.isAndroid
      ? WebViewExample(
          url:
              "https://www.quora.com/What-is-the-easiest-way-to-get-followers-on-Quora")
      : const Scaffold(),
  Platform.isAndroid
      ? WebViewExample(
          url: "https://www.quora.com/How-do-I-write-an-answer-on-Quora")
      : const Scaffold(),
  Platform.isAndroid
      ? WebViewExample(
          url: "",
        )
      : const Scaffold(),
  Container()
];
dynamic activeCyanColor = Colors.red;
String? profile =
    "https://lh3.googleusercontent.com/a-/ACNPEu_-6au3iiyVP4ts3LCKD9C-X-85rZcvtppuN6RxJw=s96-c";

List listData = [
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665828684221-64099759dbad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Aditya Kumar",
    "like": "",
    "comment": "",
    "likeValue": "",
    "deslike": false
  },
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665851008163-f0c867eee14c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Upasana Sharma",
    "like": "",
    "comment": "",
    "likeValue": ""
  },
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665781665870-3364a8b5626f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Kanchan Sharma",
    "like": "",
    "comment": "",
    "likeValue": ""
  },
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665781665870-3364a8b5626f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Kanchan Sharma",
    "like": "",
    "comment": "",
    "likeValue": ""
  },
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665781665870-3364a8b5626f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Kanchan Sharma",
    "like": "",
    "comment": "",
    "likeValue": ""
  },
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665781665870-3364a8b5626f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Kanchan Sharma",
    "like": "",
    "comment": "",
    "likeValue": ""
  },
  {
    "profileImage":
        "https://images.unsplash.com/photo-1665781665870-3364a8b5626f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    'title':
        "Executive Programme in Project Management equips participants with a modern ",
    "subtitle":
        "Subtitles refer to a text translation of audio into a different language and are for people who can hear the audio, but may not be able to understand the dialogue. Captions are text in the language of the audio and are designed for anyone unable to hear the audio, they often also contain important sounds that would be unavailable for anyone unable to hear the audio. Closed Captions (CC) can be toggled on and off according to the preference of the viewer. Open Captions are 'burnt' into the video and will therefore always be visible.",
    "time": "1:20 hr",
    "name": "Kanchan Sharma",
    "like": "",
    "comment": "",
    "likeValue": ""
  },
];
