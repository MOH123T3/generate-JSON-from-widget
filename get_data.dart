// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class JsonPage extends StatefulWidget {
  const JsonPage({super.key});

  @override
  State<JsonPage> createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  Map widgetData = {
    "args": {
      "appBar": {
        "args": {
          "title": {
            "args": {"text": "Dynamic Widget"},
            "type": "text"
          }
        },
        "type": "app_bar"
      },
      "body": {
        "child": {
          "args": {"text": "This is a very important message for you"},
          "type": "text"
        },
        "type": "center"
      }
    },
    "type": "scaffold"
  };
  @override
  Widget build(BuildContext context) {
    return JsonWidgetData.fromDynamic(widgetData)!.build(context: context);
  }
}
