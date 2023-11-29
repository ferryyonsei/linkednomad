import '../database.dart';

class GigsTable extends SupabaseTable<GigsRow> {
  @override
  String get tableName => 'gigs';

  @override
  GigsRow createRow(Map<String, dynamic> data) => GigsRow(data);
}

class GigsRow extends SupabaseDataRow {
  GigsRow(super.data);

  @override
  SupabaseTable get table => GigsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
