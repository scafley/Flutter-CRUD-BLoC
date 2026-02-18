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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadProductsEvent value)?  loadProducts,TResult Function( LoadProductByIdEvent value)?  loadProductById,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts(_that);case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadProductsEvent value)  loadProducts,required TResult Function( LoadProductByIdEvent value)  loadProductById,}){
final _that = this;
switch (_that) {
case LoadProductsEvent():
return loadProducts(_that);case LoadProductByIdEvent():
return loadProductById(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadProductsEvent value)?  loadProducts,TResult? Function( LoadProductByIdEvent value)?  loadProductById,}){
final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts(_that);case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadProducts,TResult Function( int id)?  loadProductById,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts();case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadProducts,required TResult Function( int id)  loadProductById,}) {final _that = this;
switch (_that) {
case LoadProductsEvent():
return loadProducts();case LoadProductByIdEvent():
return loadProductById(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadProducts,TResult? Function( int id)?  loadProductById,}) {final _that = this;
switch (_that) {
case LoadProductsEvent() when loadProducts != null:
return loadProducts();case LoadProductByIdEvent() when loadProductById != null:
return loadProductById(_that.id);case _:
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductInitial value)?  initial,TResult Function( ProductLoading value)?  loading,TResult Function( ProductsLoaded value)?  productsLoaded,TResult Function( ProductLoaded value)?  productLoaded,TResult Function( ProductError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial(_that);case ProductLoading() when loading != null:
return loading(_that);case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that);case ProductLoaded() when productLoaded != null:
return productLoaded(_that);case ProductError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductInitial value)  initial,required TResult Function( ProductLoading value)  loading,required TResult Function( ProductsLoaded value)  productsLoaded,required TResult Function( ProductLoaded value)  productLoaded,required TResult Function( ProductError value)  error,}){
final _that = this;
switch (_that) {
case ProductInitial():
return initial(_that);case ProductLoading():
return loading(_that);case ProductsLoaded():
return productsLoaded(_that);case ProductLoaded():
return productLoaded(_that);case ProductError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductInitial value)?  initial,TResult? Function( ProductLoading value)?  loading,TResult? Function( ProductsLoaded value)?  productsLoaded,TResult? Function( ProductLoaded value)?  productLoaded,TResult? Function( ProductError value)?  error,}){
final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial(_that);case ProductLoading() when loading != null:
return loading(_that);case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that);case ProductLoaded() when productLoaded != null:
return productLoaded(_that);case ProductError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Product> products)?  productsLoaded,TResult Function( Product product)?  productLoaded,TResult Function( String err)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial();case ProductLoading() when loading != null:
return loading();case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that.products);case ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case ProductError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Product> products)  productsLoaded,required TResult Function( Product product)  productLoaded,required TResult Function( String err)  error,}) {final _that = this;
switch (_that) {
case ProductInitial():
return initial();case ProductLoading():
return loading();case ProductsLoaded():
return productsLoaded(_that.products);case ProductLoaded():
return productLoaded(_that.product);case ProductError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Product> products)?  productsLoaded,TResult? Function( Product product)?  productLoaded,TResult? Function( String err)?  error,}) {final _that = this;
switch (_that) {
case ProductInitial() when initial != null:
return initial();case ProductLoading() when loading != null:
return loading();case ProductsLoaded() when productsLoaded != null:
return productsLoaded(_that.products);case ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case ProductError() when error != null:
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


class ProductsLoaded with DiagnosticableTreeMixin implements ProductState {
  const ProductsLoaded(final  List<Product> products): _products = products;
  

 final  List<Product> _products;
 List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadedCopyWith<ProductsLoaded> get copyWith => _$ProductsLoadedCopyWithImpl<ProductsLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductState.productsLoaded'))
    ..add(DiagnosticsProperty('products', products));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoaded&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductState.productsLoaded(products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductsLoadedCopyWith(ProductsLoaded value, $Res Function(ProductsLoaded) _then) = _$ProductsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Product> products
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
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(ProductsLoaded(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,
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
