import '../database.dart';

class GigCategoriesTable extends SupabaseTable<GigCategoriesRow> {
  @override
  String get tableName => 'gig_categories';

  @override
  GigCategoriesRow createRow(Map<String, dynamic> data) =>
      GigCategoriesRow(data);
}

class GigCategoriesRow extends SupabaseDataRow {
  GigCategoriesRow(super.data);

  @override
  SupabaseTable get table => GigCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gigId => getField<int>('gig_id');
  set gigId(int? value) => setField<int>('gig_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);
}
