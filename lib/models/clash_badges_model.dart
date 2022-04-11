class ClashRoyaleBadgesModel {
  String? name;
  String? iconSwf;
  String? iconExportName;
  String? category;
  int? id;

  ClashRoyaleBadgesModel(
      {this.name, this.iconSwf, this.iconExportName, this.category, this.id});

  ClashRoyaleBadgesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    iconSwf = json['icon_swf'];
    iconExportName = json['icon_export_name'];
    category = json['category'];
    id = json['id'];
  }
}
