import '../database.dart';

class GigsSavedViewTable extends SupabaseTable<GigsSavedViewRow> {
  @override
  String get tableName => 'gigs_saved_view';

  @override
  GigsSavedViewRow createRow(Map<String, dynamic> data) =>
      GigsSavedViewRow(data);
}

class GigsSavedViewRow extends SupabaseDataRow {
  GigsSavedViewRow(super.data);

  @override
  SupabaseTable get table => GigsSavedViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
