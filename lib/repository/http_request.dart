import 'dart:convert';

import 'package:clash_status/models/player_info_model.dart';
import 'package:http/http.dart' as http;
class ClashRoyaleGetStatus{
  Future<ClashRoyaleModel>fetchStatusClash(String playerTag) async{
    final token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjY1NGM2MGQ1LTg5MTgtNDdmMy1iMGU1LWE3ZDExMTQ0ZWI2YSIsImlhdCI6MTY0NzE0NTEzOCwic3ViIjoiZGV2ZWxvcGVyL2FjNzIzNGY2LTYxNjEtZmUyNC0yNGQxLWFhODFjYzBmNWMwZSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyI0NS43OS4yMTguNzkiXSwidHlwZSI6ImNsaWVudCJ9XX0.s7idguChXN4TmN7uSywFRZ-yfmjfZow2zNXnyETrft3a_rLXrDxuQSwRwJI1em31IuhBt-csBL2QdO--z0TSgg';
    final url = Uri.parse('https://proxy.royaleapi.dev/v1/players/%23$playerTag');

    var response = await http.get(url, headers: {
      "Authorization": "Bearer $token",
    });
    final json =  jsonDecode(response.body);
    ClashRoyaleModel jsonFinal = ClashRoyaleModel.fromJson(json);
    return jsonFinal;
  }
}