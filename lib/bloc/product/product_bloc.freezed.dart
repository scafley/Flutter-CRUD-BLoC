// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadProductsEvent value)?  loadProducts,TResult Function( LoadProductByIdEvent value)?  loadProductById,TResult Function( LoadMoreProductsEvent value)?  loadMoreProducts,TResult Function( AddProductEvent value)?  addProduct,TResult Function( UpdateProductEvent value)?  updateProduct,TResult Function( DeleteProductEvent value)?  deleteProduct,TResult Function( ResetProductsEvent value)?  reset,TResult Function( SearchProductsEvent value)?  searchProducts,TResult Function( LoadCategoriesEvent value)?  loadCategories,TResult Function( FilterByCategoryEvent value)?  filterByCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts(_that);case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that);case AddProductEvent() when addProduct != null:
return addProduct(_that);case UpdateProductEvent() when updateProduct != null:
return updateProduct(_that);case DeleteProductEvent() when deleteProduct != null:
return deleteProduct(_that);case ResetProductsEvent() when reset != null:
return reset(_that);case SearchProductsEvent() when searchProducts != null:
return searchProducts(_that);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories(_that);case FilterByCategoryEvent() when filterByCategory != null:
return filterByCategory(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadProductsEvent value)  loadProducts,required TResult Function( LoadProductByIdEvent value)  loadProductById,required TResult Function( LoadMoreProductsEvent value)  loadMoreProducts,required TResult Function( AddProductEvent value)  addProduct,required TResult Function( UpdateProductEvent value)  updateProduct,required TResult Function( DeleteProductEvent value)  deleteProduct,required TResult Function( ResetProductsEvent value)  reset,required TResult Function( SearchProductsEvent value)  searchProducts,required TResult Function( LoadCategoriesEvent value)  loadCategories,required TResult Function( FilterByCategoryEvent value)  filterByCategory,}){
final _that = this;
switch (_that) {
case LoadProductsEvent():
return loadProducts(_that);case LoadProductByIdEvent():
return loadProductById(_that);case LoadMoreProductsEvent():
return loadMoreProducts(_that);case AddProductEvent():
return addProduct(_that);case UpdateProductEvent():
return updateProduct(_that);case DeleteProductEvent():
return deleteProduct(_that);case ResetProductsEvent():
return reset(_that);case SearchProductsEvent():
return searchProducts(_that);case LoadCategoriesEvent():
return loadCategories(_that);case FilterByCategoryEvent():
return filterByCategory(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadProductsEvent value)?  loadProducts,TResult? Function( LoadProductByIdEvent value)?  loadProductById,TResult? Function( LoadMoreProductsEvent value)?  loadMoreProducts,TResult? Function( AddProductEvent value)?  addProduct,TResult? Function( UpdateProductEvent value)?  updateProduct,TResult? Function( DeleteProductEvent value)?  deleteProduct,TResult? Function( ResetProductsEvent value)?  reset,TResult? Function( SearchProductsEvent value)?  searchProducts,TResult? Function( LoadCategoriesEvent value)?  loadCategories,TResult? Function( FilterByCategoryEvent value)?  filterByCategory,}){
final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts(_that);case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that);case AddProductEvent() when addProduct != null:
return addProduct(_that);case UpdateProductEvent() when updateProduct != null:
return updateProduct(_that);case DeleteProductEvent() when deleteProduct != null:
return deleteProduct(_that);case ResetProductsEvent() when reset != null:
return reset(_that);case SearchProductsEvent() when searchProducts != null:
return searchProducts(_that);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories(_that);case FilterByCategoryEvent() when filterByCategory != null:
return filterByCategory(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadProducts,TResult Function( int id)?  loadProductById,TResult Function()?  loadMoreProducts,TResult Function( Product product)?  addProduct,TResult Function( Product product)?  updateProduct,TResult Function( int id)?  deleteProduct,TResult Function()?  reset,TResult Function( String query)?  searchProducts,TResult Function()?  loadCategories,TResult Function( String category)?  filterByCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts();case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that.id);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts();case AddProductEvent() when addProduct != null:
return addProduct(_that.product);case UpdateProductEvent() when updateProduct != null:
return updateProduct(_that.product);case DeleteProductEvent() when deleteProduct != null:
return deleteProduct(_that.id);case ResetProductsEvent() when reset != null:
return reset();case SearchProductsEvent() when searchProducts != null:
return searchProducts(_that.query);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories();case FilterByCategoryEvent() when filterByCategory != null:
return filterByCategory(_that.category);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadProducts,required TResult Function( int id)  loadProductById,required TResult Function()  loadMoreProducts,required TResult Function( Product product)  addProduct,required TResult Function( Product product)  updateProduct,required TResult Function( int id)  deleteProduct,required TResult Function()  reset,required TResult Function( String query)  searchProducts,required TResult Function()  loadCategories,required TResult Function( String category)  filterByCategory,}) {final _that = this;
switch (_that) {
case LoadProductsEvent():
return loadProducts();case LoadProductByIdEvent():
return loadProductById(_that.id);case LoadMoreProductsEvent():
return loadMoreProducts();case AddProductEvent():
return addProduct(_that.product);case UpdateProductEvent():
return updateProduct(_that.product);case DeleteProductEvent():
return deleteProduct(_that.id);case ResetProductsEvent():
return reset();case SearchProductsEvent():
return searchProducts(_that.query);case LoadCategoriesEvent():
return loadCategories();case FilterByCategoryEvent():
return filterByCategory(_that.category);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadProducts,TResult? Function( int id)?  loadProductById,TResult? Function()?  loadMoreProducts,TResult? Function( Product product)?  addProduct,TResult? Function( Product product)?  updateProduct,TResult? Function( int id)?  deleteProduct,TResult? Function()?  reset,TResult? Function( String query)?  searchProducts,TResult? Function()?  loadCategories,TResult? Function( String category)?  filterByCategory,}) {final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts();case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that.id);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts();case AddProductEvent() when addProduct != null:
return addProduct(_that.product);case UpdateProductEvent() when updateProduct != null:
return updateProduct(_that.product);case DeleteProductEvent() when deleteProduct != null:
return deleteProduct(_that.id);case ResetProductsEvent() when reset != null:
return reset();case SearchProductsEvent() when searchProducts != null:
return searchProducts(_that.query);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories();case FilterByCategoryEvent() when filterByCategory != null:
return filterByCategory(_that.category);case _:
  return null;

}
}

}

/// @nodoc


class LoadProductsEvent with DiagnosticableTreeMixin implements ProductEvent {
  const LoadProductsEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.loadProducts'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.loadProducts()';
}


}




/// @nodoc


class LoadProductByIdEvent with DiagnosticableTreeMixin implements ProductEvent {
  const LoadProductByIdEvent(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadProductByIdEventCopyWith<LoadProductByIdEvent> get copyWith => _$LoadProductByIdEventCopyWithImpl<LoadProductByIdEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.loadProductById'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProductByIdEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.loadProductById(id: $id)';
}


}

/// @nodoc
abstract mixin class $LoadProductByIdEventCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $LoadProductByIdEventCopyWith(LoadProductByIdEvent value, $Res Function(LoadProductByIdEvent) _then) = _$LoadProductByIdEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LoadProductByIdEventCopyWithImpl<$Res>
    implements $LoadProductByIdEventCopyWith<$Res> {
  _$LoadProductByIdEventCopyWithImpl(this._self, this._then);

  final LoadProductByIdEvent _self;
  final $Res Function(LoadProductByIdEvent) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LoadProductByIdEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadMoreProductsEvent with DiagnosticableTreeMixin implements ProductEvent {
  const LoadMoreProductsEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.loadMoreProducts'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.loadMoreProducts()';
}


}




/// @nodoc


class AddProductEvent with DiagnosticableTreeMixin implements ProductEvent {
  const AddProductEvent(this.product);
  

 final  Product product;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddProductEventCopyWith<AddProductEvent> get copyWith => _$AddProductEventCopyWithImpl<AddProductEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.addProduct'))
    ..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddProductEvent&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.addProduct(product: $product)';
}


}

/// @nodoc
abstract mixin class $AddProductEventCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $AddProductEventCopyWith(AddProductEvent value, $Res Function(AddProductEvent) _then) = _$AddProductEventCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$AddProductEventCopyWithImpl<$Res>
    implements $AddProductEventCopyWith<$Res> {
  _$AddProductEventCopyWithImpl(this._self, this._then);

  final AddProductEvent _self;
  final $Res Function(AddProductEvent) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(AddProductEvent(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class UpdateProductEvent with DiagnosticableTreeMixin implements ProductEvent {
  const UpdateProductEvent(this.product);
  

 final  Product product;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductEventCopyWith<UpdateProductEvent> get copyWith => _$UpdateProductEventCopyWithImpl<UpdateProductEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.updateProduct'))
    ..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductEvent&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.updateProduct(product: $product)';
}


}

/// @nodoc
abstract mixin class $UpdateProductEventCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $UpdateProductEventCopyWith(UpdateProductEvent value, $Res Function(UpdateProductEvent) _then) = _$UpdateProductEventCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$UpdateProductEventCopyWithImpl<$Res>
    implements $UpdateProductEventCopyWith<$Res> {
  _$UpdateProductEventCopyWithImpl(this._self, this._then);

  final UpdateProductEvent _self;
  final $Res Function(UpdateProductEvent) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(UpdateProductEvent(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class DeleteProductEvent with DiagnosticableTreeMixin implements ProductEvent {
  const DeleteProductEvent(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteProductEventCopyWith<DeleteProductEvent> get copyWith => _$DeleteProductEventCopyWithImpl<DeleteProductEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.deleteProduct'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteProductEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.deleteProduct(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteProductEventCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $DeleteProductEventCopyWith(DeleteProductEvent value, $Res Function(DeleteProductEvent) _then) = _$DeleteProductEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteProductEventCopyWithImpl<$Res>
    implements $DeleteProductEventCopyWith<$Res> {
  _$DeleteProductEventCopyWithImpl(this._self, this._then);

  final DeleteProductEvent _self;
  final $Res Function(DeleteProductEvent) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteProductEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ResetProductsEvent with DiagnosticableTreeMixin implements ProductEvent {
  const ResetProductsEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.reset'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.reset()';
}


}




/// @nodoc


class SearchProductsEvent with DiagnosticableTreeMixin implements ProductEvent {
  const SearchProductsEvent(this.query);
  

 final  String query;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchProductsEventCopyWith<SearchProductsEvent> get copyWith => _$SearchProductsEventCopyWithImpl<SearchProductsEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.searchProducts'))
    ..add(DiagnosticsProperty('query', query));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchProductsEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.searchProducts(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchProductsEventCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $SearchProductsEventCopyWith(SearchProductsEvent value, $Res Function(SearchProductsEvent) _then) = _$SearchProductsEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchProductsEventCopyWithImpl<$Res>
    implements $SearchProductsEventCopyWith<$Res> {
  _$SearchProductsEventCopyWithImpl(this._self, this._then);

  final SearchProductsEvent _self;
  final $Res Function(SearchProductsEvent) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchProductsEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadCategoriesEvent with DiagnosticableTreeMixin implements ProductEvent {
  const LoadCategoriesEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.loadCategories'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.loadCategories()';
}


}




/// @nodoc


class FilterByCategoryEvent with DiagnosticableTreeMixin implements ProductEvent {
  const FilterByCategoryEvent(this.category);
  

 final  String category;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterByCategoryEventCopyWith<FilterByCategoryEvent> get copyWith => _$FilterByCategoryEventCopyWithImpl<FilterByCategoryEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEvent.filterByCategory'))
    ..add(DiagnosticsProperty('category', category));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterByCategoryEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEvent.filterByCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $FilterByCategoryEventCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $FilterByCategoryEventCopyWith(FilterByCategoryEvent value, $Res Function(FilterByCategoryEvent) _then) = _$FilterByCategoryEventCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$FilterByCategoryEventCopyWithImpl<$Res>
    implements $FilterByCategoryEventCopyWith<$Res> {
  _$FilterByCategoryEventCopyWithImpl(this._self, this._then);

  final FilterByCategoryEvent _self;
  final $Res Function(FilterByCategoryEvent) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(FilterByCategoryEvent(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProductState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState()';
}


}

/// @nodoc
class $ProductStateCopyWith<$Res>  {
$ProductStateCopyWith(ProductState _, $Res Function(ProductState) __);
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductInitial value)?  initial,TResult Function( ProductLoading value)?  loading,TResult Function( ProductLoadingMore value)?  loadingMore,TResult Function( ProductsLoaded value)?  productsLoaded,TResult Function( ProductLoaded value)?  productLoaded,TResult Function( ProductAdded value)?  productAdded,TResult Function( ProductUpdated value)?  productUpdated,TResult Function( ProductDeleted value)?  productDeleted,TResult Function( ProductError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial(_that);case ProductLoading() when loading != null:
return loading(_that);case ProductLoadingMore() when loadingMore != null:
return loadingMore(_that);case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that);case ProductLoaded() when productLoaded != null:
return productLoaded(_that);case ProductAdded() when productAdded != null:
return productAdded(_that);case ProductUpdated() when productUpdated != null:
return productUpdated(_that);case ProductDeleted() when productDeleted != null:
return productDeleted(_that);case ProductError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductInitial value)  initial,required TResult Function( ProductLoading value)  loading,required TResult Function( ProductLoadingMore value)  loadingMore,required TResult Function( ProductsLoaded value)  productsLoaded,required TResult Function( ProductLoaded value)  productLoaded,required TResult Function( ProductAdded value)  productAdded,required TResult Function( ProductUpdated value)  productUpdated,required TResult Function( ProductDeleted value)  productDeleted,required TResult Function( ProductError value)  error,}){
final _that = this;
switch (_that) {
case ProductInitial():
return initial(_that);case ProductLoading():
return loading(_that);case ProductLoadingMore():
return loadingMore(_that);case ProductsLoaded():
return productsLoaded(_that);case ProductLoaded():
return productLoaded(_that);case ProductAdded():
return productAdded(_that);case ProductUpdated():
return productUpdated(_that);case ProductDeleted():
return productDeleted(_that);case ProductError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductInitial value)?  initial,TResult? Function( ProductLoading value)?  loading,TResult? Function( ProductLoadingMore value)?  loadingMore,TResult? Function( ProductsLoaded value)?  productsLoaded,TResult? Function( ProductLoaded value)?  productLoaded,TResult? Function( ProductAdded value)?  productAdded,TResult? Function( ProductUpdated value)?  productUpdated,TResult? Function( ProductDeleted value)?  productDeleted,TResult? Function( ProductError value)?  error,}){
final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial(_that);case ProductLoading() when loading != null:
return loading(_that);case ProductLoadingMore() when loadingMore != null:
return loadingMore(_that);case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that);case ProductLoaded() when productLoaded != null:
return productLoaded(_that);case ProductAdded() when productAdded != null:
return productAdded(_that);case ProductUpdated() when productUpdated != null:
return productUpdated(_that);case ProductDeleted() when productDeleted != null:
return productDeleted(_that);case ProductError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loadingMore,TResult Function( List<Product> products,  bool hasMore)?  productsLoaded,TResult Function( Product product)?  productLoaded,TResult Function( Product product)?  productAdded,TResult Function( Product product)?  productUpdated,TResult Function( int id)?  productDeleted,TResult Function( String err)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial();case ProductLoading() when loading != null:
return loading();case ProductLoadingMore() when loadingMore != null:
return loadingMore();case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that.products,_that.hasMore);case ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case ProductAdded() when productAdded != null:
return productAdded(_that.product);case ProductUpdated() when productUpdated != null:
return productUpdated(_that.product);case ProductDeleted() when productDeleted != null:
return productDeleted(_that.id);case ProductError() when error != null:
return error(_that.err);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loadingMore,required TResult Function( List<Product> products,  bool hasMore)  productsLoaded,required TResult Function( Product product)  productLoaded,required TResult Function( Product product)  productAdded,required TResult Function( Product product)  productUpdated,required TResult Function( int id)  productDeleted,required TResult Function( String err)  error,}) {final _that = this;
switch (_that) {
case ProductInitial():
return initial();case ProductLoading():
return loading();case ProductLoadingMore():
return loadingMore();case ProductsLoaded():
return productsLoaded(_that.products,_that.hasMore);case ProductLoaded():
return productLoaded(_that.product);case ProductAdded():
return productAdded(_that.product);case ProductUpdated():
return productUpdated(_that.product);case ProductDeleted():
return productDeleted(_that.id);case ProductError():
return error(_that.err);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loadingMore,TResult? Function( List<Product> products,  bool hasMore)?  productsLoaded,TResult? Function( Product product)?  productLoaded,TResult? Function( Product product)?  productAdded,TResult? Function( Product product)?  productUpdated,TResult? Function( int id)?  productDeleted,TResult? Function( String err)?  error,}) {final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial();case ProductLoading() when loading != null:
return loading();case ProductLoadingMore() when loadingMore != null:
return loadingMore();case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that.products,_that.hasMore);case ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case ProductAdded() when productAdded != null:
return productAdded(_that.product);case ProductUpdated() when productUpdated != null:
return productUpdated(_that.product);case ProductDeleted() when productDeleted != null:
return productDeleted(_that.id);case ProductError() when error != null:
return error(_that.err);case _:
  return null;

}
}

}

/// @nodoc


class ProductInitial with DiagnosticableTreeMixin implements ProductState {
  const ProductInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.initial()';
}


}




/// @nodoc


class ProductLoading with DiagnosticableTreeMixin implements ProductState {
  const ProductLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.loading()';
}


}




/// @nodoc


class ProductLoadingMore with DiagnosticableTreeMixin implements ProductState {
  const ProductLoadingMore();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.loadingMore'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLoadingMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.loadingMore()';
}


}




/// @nodoc


class ProductsLoaded with DiagnosticableTreeMixin implements ProductState {
  const ProductsLoaded(final  List<Product> products, {this.hasMore = true}): _products = products;
  

 final  List<Product> _products;
 List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@JsonKey() final  bool hasMore;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadedCopyWith<ProductsLoaded> get copyWith => _$ProductsLoadedCopyWithImpl<ProductsLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.productsLoaded'))
    ..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('hasMore', hasMore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoaded&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),hasMore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.productsLoaded(products: $products, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductsLoadedCopyWith(ProductsLoaded value, $Res Function(ProductsLoaded) _then) = _$ProductsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Product> products, bool hasMore
});




}
/// @nodoc
class _$ProductsLoadedCopyWithImpl<$Res>
    implements $ProductsLoadedCopyWith<$Res> {
  _$ProductsLoadedCopyWithImpl(this._self, this._then);

  final ProductsLoaded _self;
  final $Res Function(ProductsLoaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? hasMore = null,}) {
  return _then(ProductsLoaded(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ProductLoaded with DiagnosticableTreeMixin implements ProductState {
  const ProductLoaded(this.product);
  

 final  Product product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLoadedCopyWith<ProductLoaded> get copyWith => _$ProductLoadedCopyWithImpl<ProductLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.productLoaded'))
    ..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLoaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.productLoaded(product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductLoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductLoadedCopyWith(ProductLoaded value, $Res Function(ProductLoaded) _then) = _$ProductLoadedCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductLoadedCopyWithImpl<$Res>
    implements $ProductLoadedCopyWith<$Res> {
  _$ProductLoadedCopyWithImpl(this._self, this._then);

  final ProductLoaded _self;
  final $Res Function(ProductLoaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ProductLoaded(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class ProductAdded with DiagnosticableTreeMixin implements ProductState {
  const ProductAdded(this.product);
  

 final  Product product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAddedCopyWith<ProductAdded> get copyWith => _$ProductAddedCopyWithImpl<ProductAdded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.productAdded'))
    ..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAdded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.productAdded(product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductAddedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductAddedCopyWith(ProductAdded value, $Res Function(ProductAdded) _then) = _$ProductAddedCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductAddedCopyWithImpl<$Res>
    implements $ProductAddedCopyWith<$Res> {
  _$ProductAddedCopyWithImpl(this._self, this._then);

  final ProductAdded _self;
  final $Res Function(ProductAdded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ProductAdded(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class ProductUpdated with DiagnosticableTreeMixin implements ProductState {
  const ProductUpdated(this.product);
  

 final  Product product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductUpdatedCopyWith<ProductUpdated> get copyWith => _$ProductUpdatedCopyWithImpl<ProductUpdated>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.productUpdated'))
    ..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductUpdated&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.productUpdated(product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductUpdatedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductUpdatedCopyWith(ProductUpdated value, $Res Function(ProductUpdated) _then) = _$ProductUpdatedCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductUpdatedCopyWithImpl<$Res>
    implements $ProductUpdatedCopyWith<$Res> {
  _$ProductUpdatedCopyWithImpl(this._self, this._then);

  final ProductUpdated _self;
  final $Res Function(ProductUpdated) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ProductUpdated(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class ProductDeleted with DiagnosticableTreeMixin implements ProductState {
  const ProductDeleted(this.id);
  

 final  int id;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDeletedCopyWith<ProductDeleted> get copyWith => _$ProductDeletedCopyWithImpl<ProductDeleted>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.productDeleted'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDeleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.productDeleted(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProductDeletedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductDeletedCopyWith(ProductDeleted value, $Res Function(ProductDeleted) _then) = _$ProductDeletedCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ProductDeletedCopyWithImpl<$Res>
    implements $ProductDeletedCopyWith<$Res> {
  _$ProductDeletedCopyWithImpl(this._self, this._then);

  final ProductDeleted _self;
  final $Res Function(ProductDeleted) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ProductDeleted(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ProductError with DiagnosticableTreeMixin implements ProductState {
  const ProductError(this.err);
  

 final  String err;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductErrorCopyWith<ProductError> get copyWith => _$ProductErrorCopyWithImpl<ProductError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.error'))
    ..add(DiagnosticsProperty('err', err));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductError&&(identical(other.err, err) || other.err == err));
}


@override
int get hashCode => Object.hash(runtimeType,err);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.error(err: $err)';
}


}

/// @nodoc
abstract mixin class $ProductErrorCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductErrorCopyWith(ProductError value, $Res Function(ProductError) _then) = _$ProductErrorCopyWithImpl;
@useResult
$Res call({
 String err
});




}
/// @nodoc
class _$ProductErrorCopyWithImpl<$Res>
    implements $ProductErrorCopyWith<$Res> {
  _$ProductErrorCopyWithImpl(this._self, this._then);

  final ProductError _self;
  final $Res Function(ProductError) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? err = null,}) {
  return _then(ProductError(
null == err ? _self.err : err // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
