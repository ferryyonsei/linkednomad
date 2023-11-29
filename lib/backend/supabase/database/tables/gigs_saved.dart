import '../database.dart';

class GigsSavedTable extends SupabaseTable<GigsSavedRow> {
  @override
  String get tableName => 'gigs_saved';

  @override
  GigsSavedRow createRow(Map<String, dynamic> data) => GigsSavedRow(data);
}

class GigsSavedRow extends SupabaseDataRow {
  GigsSavedRow(super.data);

  @override
  SupabaseTable get table => GigsSavedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gigId => getField<int>('gig_id');
  set gigId(int? value) => setField<int>('gig_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
