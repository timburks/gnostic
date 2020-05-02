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
import 'generated/OpenAPIv2.pb.dart' as openapiv2;
import 'generated/OpenAPIv3.pb.dart' as openapiv3;
import 'package:protobuf/protobuf.dart';
import 'package:flutter/services.dart';

class SpecDetailWidget extends StatelessWidget {
  final String name;
  final ByteData bytes;
  List<Entry> data;
  SpecDetailWidget(this.name, this.bytes) {
    data = handleAsOpenAPIv2(bytes);
    if (data == null) {
      data = handleAsOpenAPIv3(bytes);
    }
    if (data == null) {
      data = List<Entry>();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.label, this.value, [this.children = const <Entry>[]]);
  final String label;
  final String value;
  final List<Entry> children;
}

Row entryRow(Entry e) {
  return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Expanded(
        child: Container(
            child: Text(
      e.label,
      style: TextStyle(fontFamily: "Inconsolata", fontWeight: FontWeight.bold),
    ))),
    Expanded(child: Container(child: Text(e.value))),
  ]);
}

// Displays one Entry.
// If the entry has children then it's displayed with an ExpansionTile.
class EntryItem extends StatelessWidget {
  final Entry entry;

  const EntryItem(this.entry);

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: entryRow(root));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: entryRow(root),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

List<Entry> handleAsOpenAPIv2(ByteData bytes) {
  try {
    openapiv2.Document doc =
        new openapiv2.Document.fromBuffer(bytes.buffer.asInt8List());
    return outlineOpenAPIv2Document(doc);
  } on InvalidProtocolBufferException {
    return null;
  } catch (error) {
    print(error);
    return null;
  }
}

Entry v2Info(openapiv2.Info info) {
  Entry entry = Entry('Info', '', List<Entry>());
  entry.children.add(Entry('title', info.title));
  entry.children.add(Entry('description', info.description));
  return entry;
}

Entry v2Paths(openapiv2.Paths paths) {
  Entry entry = Entry('Paths', '', List<Entry>());
  paths.path.forEach((pair) {
    entry.children.add(v2Path(pair));
  });
  return entry;
}

Entry v2Path(openapiv2.NamedPathItem pair) {
  Entry entry = Entry(pair.name, '', List<Entry>());
  openapiv2.PathItem pathItem = pair.value;
  if (pathItem.hasGet()) {
    entry.children.add(v2Operation("GET", pathItem.get));
  }
  if (pathItem.hasPost()) {
    entry.children.add(v2Operation("POST", pathItem.post));
  }
  if (pathItem.hasPut()) {
    entry.children.add(v2Operation("PUT", pathItem.put));
  }
  if (pathItem.hasDelete()) {
    entry.children.add(v2Operation("DELETE", pathItem.delete));
  }
  return entry;
}

Entry v2Operation(String method, openapiv2.Operation operation) {
  final entry = Entry(method, "", List<Entry>());
  entry.children.add(Entry("operation id", operation.operationId));
  entry.children.add(Entry("summary", operation.summary));
  entry.children.add(v2Parameters(operation.parameters));
  entry.children.add(Entry("responses", ""));
  entry.children.add(Entry("tags", ""));
  return entry;
}

Entry v2Parameters(List<openapiv2.ParametersItem> parameters) {
  final entry = Entry("Parameters", "", List<Entry>());
  parameters.forEach((parameter) {
    entry.children.add(v2Parameter(parameter));
  });
  return entry;
}

Entry v2Parameter(openapiv2.ParametersItem parametersItem) {
  String name = "$parametersItem";

  if (parametersItem.hasParameter()) {
    final parameter = parametersItem.parameter;
    if (parameter.hasBodyParameter()) {
      final bodyParameter = parameter.bodyParameter;
      if (bodyParameter.hasName()) {
        name = bodyParameter.name;
      }
    } else if (parameter.hasNonBodyParameter()) {
      final nonBodyParameter = parameter.nonBodyParameter;
      if (nonBodyParameter.hasQueryParameterSubSchema()) {
        final queryParameterSubSchema =
            nonBodyParameter.queryParameterSubSchema;
        if (queryParameterSubSchema.hasName()) {
          name = queryParameterSubSchema.name;
        }
      }
      if (nonBodyParameter.hasHeaderParameterSubSchema()) {
        final headerParameterSubSchema =
            nonBodyParameter.headerParameterSubSchema;
        if (headerParameterSubSchema.hasName()) {
          name = headerParameterSubSchema.name;
        }
      }
      if (nonBodyParameter.hasPathParameterSubSchema()) {
        final pathParameterSubSchema = nonBodyParameter.pathParameterSubSchema;
        if (pathParameterSubSchema.hasName()) {
          name = pathParameterSubSchema.name;
        }
      }
    }
  }

  final entry = Entry(name, "$parametersItem", List<Entry>());

  return entry;
}

Entry v2Definitions(openapiv2.Definitions definitions) {
  Entry entry = Entry('Definitions', '', List<Entry>());
  definitions.additionalProperties.forEach((pair) {
    entry.children.add(Entry(pair.name, ''));
  });
  return entry;
}

List<Entry> outlineOpenAPIv2Document(openapiv2.Document doc) {
  List<Entry> outline = List<Entry>();
  outline.add(v2Info(doc.info));
  outline.add(v2Paths(doc.paths));
  outline.add(v2Definitions(doc.definitions));
  return outline;
}

List<Entry> handleAsOpenAPIv3(ByteData bytes) {
  try {
    openapiv3.Document doc =
        new openapiv3.Document.fromBuffer(bytes.buffer.asInt8List());
    return outlineOpenAPIv3Document(doc);
  } on InvalidProtocolBufferException {
    return null;
  } catch (error) {
    print(error);
    return null;
  }
}

Entry v3Info(openapiv3.Info info) {
  Entry entry = Entry('Info', '', List<Entry>());
  entry.children.add(Entry('title', info.title));
  if (info.hasDescription()) {
    entry.children.add(Entry('description', info.description));
  }
  return entry;
}

Entry v3Paths(openapiv3.Paths paths) {
  Entry entry = Entry('Paths', '', List<Entry>());
  paths.path.forEach((pair) {
    entry.children.add(Entry(pair.name, ''));
  });
  return entry;
}

Entry v3Schemas(openapiv3.SchemasOrReferences schemas) {
  Entry entry = Entry('Schemas', '', List<Entry>());
  schemas.additionalProperties.forEach((pair) {
    entry.children.add(Entry(pair.name, ''));
  });
  return entry;
}

List<Entry> outlineOpenAPIv3Document(openapiv3.Document doc) {
  List<Entry> outline = List<Entry>();
  outline.add(v3Info(doc.info));
  outline.add(v3Paths(doc.paths));
  outline.add(v3Schemas(doc.components.schemas));
  return outline;
}
