// Copyright 2020 Google LLC. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'spec_detail.dart';

class SpecListWidget extends StatelessWidget {
  List<String> files;
  SpecListWidget() {
    files = List<String>();
    files.add("assets/wordnik_v4.pb");
    files.add("assets/randommer_v1.pb");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API Specs'),
        ),
        body: Scrollbar(
            child: ListView.builder(
          itemCount: files.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                files[index],
                style: TextStyle(
                    fontFamily: "Inconsolata", fontWeight: FontWeight.bold),
              ),
              onTap: () async {
                final filename = files[index];
                final bytes = await rootBundle.load(filename);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SpecDetailWidget(filename, bytes);
                    },
                  ),
                );
              },
            );
          },
        )));
  }
}

class BlankWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('This screen was intentionally left blank.')),
        body: Container());
  }
}
