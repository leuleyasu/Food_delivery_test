class ProductModel {
final String? error;
final String? errorMessage;
final int? courierStatus;
final int? superMarketStatus;
final int? groceryStatus;
final int? restaurantCount;
final List<Banners>? banners;
final List<Cuisines>? cuisines;
final int? totalPage;
final List<ListRestaurants>? listRestaurants;
final List<ListRestaurants>? deals;
final List<Dishes>? dishes;
const ProductModel({this.error , this.errorMessage , this.courierStatus , this.superMarketStatus , this.groceryStatus , this.restaurantCount , this.banners , this.cuisines , this.totalPage , this.listRestaurants , this.deals , this.dishes });
ProductModel copyWith({String? error, String? errorMessage, int? courierStatus, int? superMarketStatus, int? groceryStatus, int? restaurantCount, List<Banners>? banners, List<Cuisines>? cuisines, int? totalPage, List<ListRestaurants>? listRestaurants, List<ListRestaurants>? deals, List<Dishes>? dishes}){
return ProductModel(
            error:error ?? this.error,
errorMessage:errorMessage ?? this.errorMessage,
courierStatus:courierStatus ?? this.courierStatus,
superMarketStatus:superMarketStatus ?? this.superMarketStatus,
groceryStatus:groceryStatus ?? this.groceryStatus,
restaurantCount:restaurantCount ?? this.restaurantCount,
banners:banners ?? this.banners,
cuisines:cuisines ?? this.cuisines,
totalPage:totalPage ?? this.totalPage,
listRestaurants:listRestaurants ?? this.listRestaurants,
deals:deals ?? this.deals,
dishes:dishes ?? this.dishes
        );
        }

Map<String,Object?> toJson(){
    return {
            'error': error,
'errorMessage': errorMessage,
'courierStatus': courierStatus,
'superMarketStatus': superMarketStatus,
'groceryStatus': groceryStatus,
'restaurantCount': restaurantCount,
'banners': banners?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'cuisines': cuisines?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'totalPage': totalPage,
'listRestaurants': listRestaurants?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'deals': deals?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'dishes': dishes?.map<Map<String,dynamic>>((data)=> data.toJson()).toList()
    };
}

static ProductModel fromJson(Map<String , Object?> json){
    return ProductModel(
            error:json['error'] == null ? null : json['error'] as String,
errorMessage:json['errorMessage'] == null ? null : json['errorMessage'] as String,
courierStatus:json['courierStatus'] == null ? null : json['courierStatus'] as int,
superMarketStatus:json['superMarketStatus'] == null ? null : json['superMarketStatus'] as int,
groceryStatus:json['groceryStatus'] == null ? null : json['groceryStatus'] as int,
restaurantCount:json['restaurantCount'] == null ? null : json['restaurantCount'] as int,
banners:json['banners'] == null ? null : (json['banners'] as List).map<Banners>((data)=> Banners.fromJson(data  as Map<String,Object?>)).toList(),
cuisines:json['cuisines'] == null ? null : (json['cuisines'] as List).map<Cuisines>((data)=> Cuisines.fromJson(data  as Map<String,Object?>)).toList(),
totalPage:json['totalPage'] == null ? null : json['totalPage'] as int,
listRestaurants:json['listRestaurants'] == null ? null : (json['listRestaurants'] as List).map<ListRestaurants>((data)=> ListRestaurants.fromJson(data  as Map<String,Object?>)).toList(),
deals:json['deals'] == null ? null : (json['deals'] as List).map<ListRestaurants>((data)=> ListRestaurants.fromJson(data  as Map<String,Object?>)).toList(),
dishes:json['dishes'] == null ? null : (json['dishes'] as List).map<Dishes>((data)=> Dishes.fromJson(data  as Map<String,Object?>)).toList()
    );
}

@override
String toString(){
    return '''ProductModel(
                error:$error,
errorMessage:$errorMessage,
courierStatus:$courierStatus,
superMarketStatus:$superMarketStatus,
groceryStatus:$groceryStatus,
restaurantCount:$restaurantCount,
banners:${banners.toString()},
cuisines:${cuisines.toString()},
totalPage:$totalPage,
listRestaurants:${listRestaurants.toString()},
deals:${deals.toString()},
dishes:${dishes.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is ProductModel &&
        other.runtimeType == runtimeType &&
        other.error == error &&
other.errorMessage == errorMessage &&
other.courierStatus == courierStatus &&
other.superMarketStatus == superMarketStatus &&
other.groceryStatus == groceryStatus &&
other.restaurantCount == restaurantCount &&
other.banners == banners &&
other.cuisines == cuisines &&
other.totalPage == totalPage &&
other.listRestaurants == listRestaurants &&
other.deals == deals &&
other.dishes == dishes;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                error,
errorMessage,
courierStatus,
superMarketStatus,
groceryStatus,
restaurantCount,
banners,
cuisines,
totalPage,
listRestaurants,
deals,
dishes
    );
}

}


class Dishes {
final int? id;
final String? name;
final int? price;
final String? tag;
final int? quantity;
final int? isVeg;
final int? status;
final int? slashedPrice;
final int? slashedStatus;
final String? image;
final String? outlet;
final String? area;
final int? outletId;
final int? displayPrice;
const Dishes({this.id , this.name , this.price , this.tag , this.quantity , this.isVeg , this.status , this.slashedPrice , this.slashedStatus , this.image , this.outlet , this.area , this.outletId , this.displayPrice });
Dishes copyWith({int? id, String? name, int? price, String? tag, int? quantity, int? isVeg, int? status, int? slashedPrice, int? slashedStatus, String? image, String? outlet, String? area, int? outletId, int? displayPrice}){
return Dishes(
            id:id ?? this.id,
name:name ?? this.name,
price:price ?? this.price,
tag:tag ?? this.tag,
quantity:quantity ?? this.quantity,
isVeg:isVeg ?? this.isVeg,
status:status ?? this.status,
slashedPrice:slashedPrice ?? this.slashedPrice,
slashedStatus:slashedStatus ?? this.slashedStatus,
image:image ?? this.image,
outlet:outlet ?? this.outlet,
area:area ?? this.area,
outletId:outletId ?? this.outletId,
displayPrice:displayPrice ?? this.displayPrice
        );
        }

Map<String,Object?> toJson(){
    return {
            'id': id,
'name': name,
'price': price,
'tag': tag,
'quantity': quantity,
'isVeg': isVeg,
'status': status,
'slashedPrice': slashedPrice,
'slashedStatus': slashedStatus,
'image': image,
'outlet': outlet,
'area': area,
'outletId': outletId,
'displayPrice': displayPrice
    };
}

static Dishes fromJson(Map<String , Object?> json){
    return Dishes(
            id:json['id'] == null ? null : json['id'] as int,
name:json['name'] == null ? null : json['name'] as String,
price:json['price'] == null ? null : json['price'] as int,
tag:json['tag'] == null ? null : json['tag'] as String,
quantity:json['quantity'] == null ? null : json['quantity'] as int,
isVeg:json['isVeg'] == null ? null : json['isVeg'] as int,
status:json['status'] == null ? null : json['status'] as int,
slashedPrice:json['slashedPrice'] == null ? null : json['slashedPrice'] as int,
slashedStatus:json['slashedStatus'] == null ? null : json['slashedStatus'] as int,
image:json['image'] == null ? null : json['image'] as String,
outlet:json['outlet'] == null ? null : json['outlet'] as String,
area:json['area'] == null ? null : json['area'] as String,
outletId:json['outletId'] == null ? null : json['outletId'] as int,
displayPrice:json['displayPrice'] == null ? null : json['displayPrice'] as int
    );
}

@override
String toString(){
    return '''Dishes(
                id:$id,
name:$name,
price:$price,
tag:$tag,
quantity:$quantity,
isVeg:$isVeg,
status:$status,
slashedPrice:$slashedPrice,
slashedStatus:$slashedStatus,
image:$image,
outlet:$outlet,
area:$area,
outletId:$outletId,
displayPrice:$displayPrice
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Dishes &&
        other.runtimeType == runtimeType &&
        other.id == id &&
other.name == name &&
other.price == price &&
other.tag == tag &&
other.quantity == quantity &&
other.isVeg == isVeg &&
other.status == status &&
other.slashedPrice == slashedPrice &&
other.slashedStatus == slashedStatus &&
other.image == image &&
other.outlet == outlet &&
other.area == area &&
other.outletId == outletId &&
other.displayPrice == displayPrice;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id,
name,
price,
tag,
quantity,
isVeg,
status,
slashedPrice,
slashedStatus,
image,
outlet,
area,
outletId,
displayPrice
    );
}

}


class ListRestaurants {
final int? restaurantId;
final String? restaurantName;
final String? restaurantImage;
final int? isPureVeg;
final String? isOpen;
final int? costForTwo;
final String? displayCostForTwo;
final dynamic isExculsive;
final String? unit;
final String? location;
final String? couponEnabledForRestaurant;
final String? cuisines;
final String? averageReview;
final int? time;
final String? displayTime;
final String? Area;
final List<Outlet>? outlet;
const ListRestaurants({this.restaurantId , this.restaurantName , this.restaurantImage , this.isPureVeg , this.isOpen , this.costForTwo , this.displayCostForTwo , this.isExculsive , this.unit , this.location , this.couponEnabledForRestaurant , this.cuisines , this.averageReview , this.time , this.displayTime , this.Area , this.outlet });
ListRestaurants copyWith({int? restaurantId, String? restaurantName, String? restaurantImage, int? isPureVeg, String? isOpen, int? costForTwo, String? displayCostForTwo, dynamic? isExculsive, String? unit, String? location, String? couponEnabledForRestaurant, String? cuisines, String? averageReview, int? time, String? displayTime, String? Area, List<Outlet>? outlet}){
return ListRestaurants(
            restaurantId:restaurantId ?? this.restaurantId,
restaurantName:restaurantName ?? this.restaurantName,
restaurantImage:restaurantImage ?? this.restaurantImage,
isPureVeg:isPureVeg ?? this.isPureVeg,
isOpen:isOpen ?? this.isOpen,
costForTwo:costForTwo ?? this.costForTwo,
displayCostForTwo:displayCostForTwo ?? this.displayCostForTwo,
isExculsive:isExculsive ?? this.isExculsive,
unit:unit ?? this.unit,
location:location ?? this.location,
couponEnabledForRestaurant:couponEnabledForRestaurant ?? this.couponEnabledForRestaurant,
cuisines:cuisines ?? this.cuisines,
averageReview:averageReview ?? this.averageReview,
time:time ?? this.time,
displayTime:displayTime ?? this.displayTime,
Area:Area ?? this.Area,
outlet:outlet ?? this.outlet
        );
        }

Map<String,Object?> toJson(){
    return {
            'restaurantId': restaurantId,
'restaurantName': restaurantName,
'restaurantImage': restaurantImage,
'isPureVeg': isPureVeg,
'isOpen': isOpen,
'costForTwo': costForTwo,
'displayCostForTwo': displayCostForTwo,
'isExculsive': isExculsive,
'unit': unit,
'location': location,
'couponEnabledForRestaurant': couponEnabledForRestaurant,
'cuisines': cuisines,
'averageReview': averageReview,
'time': time,
'displayTime': displayTime,
'Area': Area,
'outlet': outlet?.map<Map<String,dynamic>>((data)=> data.toJson()).toList()
    };
}

static ListRestaurants fromJson(Map<String , Object?> json){
    return ListRestaurants(
            restaurantId:json['restaurantId'] == null ? null : json['restaurantId'] as int,
restaurantName:json['restaurantName'] == null ? null : json['restaurantName'] as String,
restaurantImage:json['restaurantImage'] == null ? null : json['restaurantImage'] as String,
isPureVeg:json['isPureVeg'] == null ? null : json['isPureVeg'] as int,
isOpen:json['isOpen'] == null ? null : json['isOpen'] as String,
costForTwo:json['costForTwo'] == null ? null : json['costForTwo'] as int,
displayCostForTwo:json['displayCostForTwo'] == null ? null : json['displayCostForTwo'] as String,
isExculsive:json['isExculsive'] as dynamic,
unit:json['unit'] == null ? null : json['unit'] as String,
location:json['location'] == null ? null : json['location'] as String,
couponEnabledForRestaurant:json['couponEnabledForRestaurant'] == null ? null : json['couponEnabledForRestaurant'] as String,
cuisines:json['cuisines'] == null ? null : json['cuisines'] as String,
averageReview:json['averageReview'] == null ? null : json['averageReview'] as String,
time:json['time'] == null ? null : json['time'] as int,
displayTime:json['displayTime'] == null ? null : json['displayTime'] as String,
Area:json['Area'] == null ? null : json['Area'] as String,
outlet:json['outlet'] == null ? null : (json['outlet'] as List).map<Outlet>((data)=> Outlet.fromJson(data  as Map<String,Object?>)).toList()
    );
}

@override
String toString(){
    return '''ListRestaurants(
                restaurantId:$restaurantId,
restaurantName:$restaurantName,
restaurantImage:$restaurantImage,
isPureVeg:$isPureVeg,
isOpen:$isOpen,
costForTwo:$costForTwo,
displayCostForTwo:$displayCostForTwo,
isExculsive:$isExculsive,
unit:$unit,
location:$location,
couponEnabledForRestaurant:$couponEnabledForRestaurant,
cuisines:$cuisines,
averageReview:$averageReview,
time:$time,
displayTime:$displayTime,
Area:$Area,
outlet:${outlet.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is ListRestaurants &&
        other.runtimeType == runtimeType &&
        other.restaurantId == restaurantId &&
other.restaurantName == restaurantName &&
other.restaurantImage == restaurantImage &&
other.isPureVeg == isPureVeg &&
other.isOpen == isOpen &&
other.costForTwo == costForTwo &&
other.displayCostForTwo == displayCostForTwo &&
other.isExculsive == isExculsive &&
other.unit == unit &&
other.location == location &&
other.couponEnabledForRestaurant == couponEnabledForRestaurant &&
other.cuisines == cuisines &&
other.averageReview == averageReview &&
other.time == time &&
other.displayTime == displayTime &&
other.Area == Area &&
other.outlet == outlet;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                restaurantId,
restaurantName,
restaurantImage,
isPureVeg,
isOpen,
costForTwo,
displayCostForTwo,
isExculsive,
unit,
location,
couponEnabledForRestaurant,
cuisines,
averageReview,
time,
displayTime,
Area,
outlet
    );
}

}


class Outlet {
final int? outletId;
final int? restaurantId;
final String? outletName;
final int? isServicable;
final List<dynamic>? offers;
final String? averageReview;
final int? time;
final String? displayTime;
final String? cuisines;
final int? costForTwo;
final String? displayCostForTwo;
final String? totalAmount;
final String? balanceAmount;
final int? status;
final String? image;
final String? openingToTime;
final String? openingFromTime;
final String? outletDescription;
final int? isPureVeg;
final String? area;
final String? type;
final String? couponEnabledForRestaurant;
final String? isOpen;
final String? openingTime;
const Outlet({this.outletId , this.restaurantId , this.outletName , this.isServicable , this.offers , this.averageReview , this.time , this.displayTime , this.cuisines , this.costForTwo , this.displayCostForTwo , this.totalAmount , this.balanceAmount , this.status , this.image , this.openingToTime , this.openingFromTime , this.outletDescription , this.isPureVeg , this.area , this.type , this.couponEnabledForRestaurant , this.isOpen , this.openingTime });
Outlet copyWith({int? outletId, int? restaurantId, String? outletName, int? isServicable, List<dynamic>? offers, String? averageReview, int? time, String? displayTime, String? cuisines, int? costForTwo, String? displayCostForTwo, String? totalAmount, String? balanceAmount, int? status, String? image, String? openingToTime, String? openingFromTime, String? outletDescription, int? isPureVeg, String? area, String? type, String? couponEnabledForRestaurant, String? isOpen, String? openingTime}){
return Outlet(
            outletId:outletId ?? this.outletId,
restaurantId:restaurantId ?? this.restaurantId,
outletName:outletName ?? this.outletName,
isServicable:isServicable ?? this.isServicable,
offers:offers ?? this.offers,
averageReview:averageReview ?? this.averageReview,
time:time ?? this.time,
displayTime:displayTime ?? this.displayTime,
cuisines:cuisines ?? this.cuisines,
costForTwo:costForTwo ?? this.costForTwo,
displayCostForTwo:displayCostForTwo ?? this.displayCostForTwo,
totalAmount:totalAmount ?? this.totalAmount,
balanceAmount:balanceAmount ?? this.balanceAmount,
status:status ?? this.status,
image:image ?? this.image,
openingToTime:openingToTime ?? this.openingToTime,
openingFromTime:openingFromTime ?? this.openingFromTime,
outletDescription:outletDescription ?? this.outletDescription,
isPureVeg:isPureVeg ?? this.isPureVeg,
area:area ?? this.area,
type:type ?? this.type,
couponEnabledForRestaurant:couponEnabledForRestaurant ?? this.couponEnabledForRestaurant,
isOpen:isOpen ?? this.isOpen,
openingTime:openingTime ?? this.openingTime
        );
        }

Map<String,Object?> toJson(){
    return {
            'outletId': outletId,
'restaurantId': restaurantId,
'outletName': outletName,
'isServicable': isServicable,
'offers': offers,
'averageReview': averageReview,
'time': time,
'displayTime': displayTime,
'cuisines': cuisines,
'costForTwo': costForTwo,
'displayCostForTwo': displayCostForTwo,
'totalAmount': totalAmount,
'balanceAmount': balanceAmount,
'status': status,
'image': image,
'openingToTime': openingToTime,
'openingFromTime': openingFromTime,
'outletDescription': outletDescription,
'isPureVeg': isPureVeg,
'area': area,
'type': type,
'couponEnabledForRestaurant': couponEnabledForRestaurant,
'isOpen': isOpen,
'openingTime': openingTime
    };
}

static Outlet fromJson(Map<String , Object?> json){
    return Outlet(
            outletId:json['outletId'] == null ? null : json['outletId'] as int,
restaurantId:json['restaurantId'] == null ? null : json['restaurantId'] as int,
outletName:json['outletName'] == null ? null : json['outletName'] as String,
isServicable:json['isServicable'] == null ? null : json['isServicable'] as int,
offers:json['offers'] == null ? null : json['offers'] as List<dynamic>,
averageReview:json['averageReview'] == null ? null : json['averageReview'] as String,
time:json['time'] == null ? null : json['time'] as int,
displayTime:json['displayTime'] == null ? null : json['displayTime'] as String,
cuisines:json['cuisines'] == null ? null : json['cuisines'] as String,
costForTwo:json['costForTwo'] == null ? null : json['costForTwo'] as int,
displayCostForTwo:json['displayCostForTwo'] == null ? null : json['displayCostForTwo'] as String,
totalAmount:json['totalAmount'] == null ? null : json['totalAmount'] as String,
balanceAmount:json['balanceAmount'] == null ? null : json['balanceAmount'] as String,
status:json['status'] == null ? null : json['status'] as int,
image:json['image'] == null ? null : json['image'] as String,
openingToTime:json['openingToTime'] == null ? null : json['openingToTime'] as String,
openingFromTime:json['openingFromTime'] == null ? null : json['openingFromTime'] as String,
outletDescription:json['outletDescription'] == null ? null : json['outletDescription'] as String,
isPureVeg:json['isPureVeg'] == null ? null : json['isPureVeg'] as int,
area:json['area'] == null ? null : json['area'] as String,
type:json['type'] == null ? null : json['type'] as String,
couponEnabledForRestaurant:json['couponEnabledForRestaurant'] == null ? null : json['couponEnabledForRestaurant'] as String,
isOpen:json['isOpen'] == null ? null : json['isOpen'] as String,
openingTime:json['openingTime'] == null ? null : json['openingTime'] as String
    );
}

@override
String toString(){
    return '''Outlet(
                outletId:$outletId,
restaurantId:$restaurantId,
outletName:$outletName,
isServicable:$isServicable,
offers:$offers,
averageReview:$averageReview,
time:$time,
displayTime:$displayTime,
cuisines:$cuisines,
costForTwo:$costForTwo,
displayCostForTwo:$displayCostForTwo,
totalAmount:$totalAmount,
balanceAmount:$balanceAmount,
status:$status,
image:$image,
openingToTime:$openingToTime,
openingFromTime:$openingFromTime,
outletDescription:$outletDescription,
isPureVeg:$isPureVeg,
area:$area,
type:$type,
couponEnabledForRestaurant:$couponEnabledForRestaurant,
isOpen:$isOpen,
openingTime:$openingTime
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Outlet &&
        other.runtimeType == runtimeType &&
        other.outletId == outletId &&
other.restaurantId == restaurantId &&
other.outletName == outletName &&
other.isServicable == isServicable &&
other.offers == offers &&
other.averageReview == averageReview &&
other.time == time &&
other.displayTime == displayTime &&
other.cuisines == cuisines &&
other.costForTwo == costForTwo &&
other.displayCostForTwo == displayCostForTwo &&
other.totalAmount == totalAmount &&
other.balanceAmount == balanceAmount &&
other.status == status &&
other.image == image &&
other.openingToTime == openingToTime &&
other.openingFromTime == openingFromTime &&
other.outletDescription == outletDescription &&
other.isPureVeg == isPureVeg &&
other.area == area &&
other.type == type &&
other.couponEnabledForRestaurant == couponEnabledForRestaurant &&
other.isOpen == isOpen &&
other.openingTime == openingTime;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                outletId,
restaurantId,
outletName,
isServicable,
offers,
averageReview,
time,
displayTime,
cuisines,
costForTwo,
displayCostForTwo,
totalAmount,
balanceAmount,
status,
image,
openingToTime,
openingFromTime,
outletDescription,
isPureVeg
    );
}

}


class Cuisines {
final int? id;
final String? image;
final String? name;
const Cuisines({this.id , this.image , this.name });
Cuisines copyWith({int? id, String? image, String? name}){
return Cuisines(
            id:id ?? this.id,
image:image ?? this.image,
name:name ?? this.name
        );
        }

Map<String,Object?> toJson(){
    return {
            'id': id,
'image': image,
'name': name
    };
}

static Cuisines fromJson(Map<String , Object?> json){
    return Cuisines(
            id:json['id'] == null ? null : json['id'] as int,
image:json['image'] == null ? null : json['image'] as String,
name:json['name'] == null ? null : json['name'] as String
    );
}

@override
String toString(){
    return '''Cuisines(
                id:$id,
image:$image,
name:$name
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Cuisines &&
        other.runtimeType == runtimeType &&
        other.id == id &&
other.image == image &&
other.name == name;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id,
image,
name
    );
}

}


class Banners {
final int? bannerId;
final String? bannerImage;
final dynamic dishId;
final int? outletId;
final List<Outlets>? outlets;
const Banners({this.bannerId , this.bannerImage , this.dishId , this.outletId , this.outlets });
Banners copyWith({int? bannerId, String? bannerImage, dynamic? dishId, int? outletId, List<Outlets>? outlets}){
return Banners(
            bannerId:bannerId ?? this.bannerId,
bannerImage:bannerImage ?? this.bannerImage,
dishId:dishId ?? this.dishId,
outletId:outletId ?? this.outletId,
outlets:outlets ?? this.outlets
        );
        }

Map<String,Object?> toJson(){
    return {
            'bannerId': bannerId,
'bannerImage': bannerImage,
'dishId': dishId,
'outletId': outletId,
'outlets': outlets?.map<Map<String,dynamic>>((data)=> data.toJson()).toList()
    };
}

static Banners fromJson(Map<String , Object?> json){
    return Banners(
            bannerId:json['bannerId'] == null ? null : json['bannerId'] as int,
bannerImage:json['bannerImage'] == null ? null : json['bannerImage'] as String,
dishId:json['dishId'] as dynamic,
outletId:json['outletId'] == null ? null : json['outletId'] as int,
outlets:json['outlets'] == null ? null : (json['outlets'] as List).map<Outlets>((data)=> Outlets.fromJson(data  as Map<String,Object?>)).toList()
    );
}

@override
String toString(){
    return '''Banners(
                bannerId:$bannerId,
bannerImage:$bannerImage,
dishId:$dishId,
outletId:$outletId,
outlets:${outlets.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Banners &&
        other.runtimeType == runtimeType &&
        other.bannerId == bannerId &&
other.bannerImage == bannerImage &&
other.dishId == dishId &&
other.outletId == outletId &&
other.outlets == outlets;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                bannerId,
bannerImage,
dishId,
outletId,
outlets
    );
}

}


class Outlets {
final int? outletId;
final int? restaurantId;
final String? outletName;
final int? isServicable;
final List<dynamic>? offers;
final String? averageReview;
final int? time;
final String? displayTime;
final String? cuisines;
final int? costForTwo;
final String? displayCostForTwo;
final String? totalAmount;
final String? balanceAmount;
final int? status;
final String? image;
final String? openingToTime;
final String? openingFromTime;
final String? outletDescription;
final int? isPureVeg;
final String? area;
final String? type;
const Outlets({this.outletId , this.restaurantId , this.outletName , this.isServicable , this.offers , this.averageReview , this.time , this.displayTime , this.cuisines , this.costForTwo , this.displayCostForTwo , this.totalAmount , this.balanceAmount , this.status , this.image , this.openingToTime , this.openingFromTime , this.outletDescription , this.isPureVeg , this.area , this.type });
Outlets copyWith({int? outletId, int? restaurantId, String? outletName, int? isServicable, List<dynamic>? offers, String? averageReview, int? time, String? displayTime, String? cuisines, int? costForTwo, String? displayCostForTwo, String? totalAmount, String? balanceAmount, int? status, String? image, String? openingToTime, String? openingFromTime, String? outletDescription, int? isPureVeg, String? area, String? type}){
return Outlets(
            outletId:outletId ?? this.outletId,
restaurantId:restaurantId ?? this.restaurantId,
outletName:outletName ?? this.outletName,
isServicable:isServicable ?? this.isServicable,
offers:offers ?? this.offers,
averageReview:averageReview ?? this.averageReview,
time:time ?? this.time,
displayTime:displayTime ?? this.displayTime,
cuisines:cuisines ?? this.cuisines,
costForTwo:costForTwo ?? this.costForTwo,
displayCostForTwo:displayCostForTwo ?? this.displayCostForTwo,
totalAmount:totalAmount ?? this.totalAmount,
balanceAmount:balanceAmount ?? this.balanceAmount,
status:status ?? this.status,
image:image ?? this.image,
openingToTime:openingToTime ?? this.openingToTime,
openingFromTime:openingFromTime ?? this.openingFromTime,
outletDescription:outletDescription ?? this.outletDescription,
isPureVeg:isPureVeg ?? this.isPureVeg,
area:area ?? this.area,
type:type ?? this.type
        );
        }

Map<String,Object?> toJson(){
    return {
            'outletId': outletId,
'restaurantId': restaurantId,
'outletName': outletName,
'isServicable': isServicable,
'offers': offers,
'averageReview': averageReview,
'time': time,
'displayTime': displayTime,
'cuisines': cuisines,
'costForTwo': costForTwo,
'displayCostForTwo': displayCostForTwo,
'totalAmount': totalAmount,
'balanceAmount': balanceAmount,
'status': status,
'image': image,
'openingToTime': openingToTime,
'openingFromTime': openingFromTime,
'outletDescription': outletDescription,
'isPureVeg': isPureVeg,
'area': area,
'type': type
    };
}

static Outlets fromJson(Map<String , Object?> json){
    return Outlets(
            outletId:json['outletId'] == null ? null : json['outletId'] as int,
restaurantId:json['restaurantId'] == null ? null : json['restaurantId'] as int,
outletName:json['outletName'] == null ? null : json['outletName'] as String,
isServicable:json['isServicable'] == null ? null : json['isServicable'] as int,
offers:json['offers'] == null ? null : json['offers'] as List<dynamic>,
averageReview:json['averageReview'] == null ? null : json['averageReview'] as String,
time:json['time'] == null ? null : json['time'] as int,
displayTime:json['displayTime'] == null ? null : json['displayTime'] as String,
cuisines:json['cuisines'] == null ? null : json['cuisines'] as String,
costForTwo:json['costForTwo'] == null ? null : json['costForTwo'] as int,
displayCostForTwo:json['displayCostForTwo'] == null ? null : json['displayCostForTwo'] as String,
totalAmount:json['totalAmount'] == null ? null : json['totalAmount'] as String,
balanceAmount:json['balanceAmount'] == null ? null : json['balanceAmount'] as String,
status:json['status'] == null ? null : json['status'] as int,
image:json['image'] == null ? null : json['image'] as String,
openingToTime:json['openingToTime'] == null ? null : json['openingToTime'] as String,
openingFromTime:json['openingFromTime'] == null ? null : json['openingFromTime'] as String,
outletDescription:json['outletDescription'] == null ? null : json['outletDescription'] as String,
isPureVeg:json['isPureVeg'] == null ? null : json['isPureVeg'] as int,
area:json['area'] == null ? null : json['area'] as String,
type:json['type'] == null ? null : json['type'] as String
    );
}

@override
String toString(){
    return '''Outlets(
                outletId:$outletId,
restaurantId:$restaurantId,
outletName:$outletName,
isServicable:$isServicable,
offers:$offers,
averageReview:$averageReview,
time:$time,
displayTime:$displayTime,
cuisines:$cuisines,
costForTwo:$costForTwo,
displayCostForTwo:$displayCostForTwo,
totalAmount:$totalAmount,
balanceAmount:$balanceAmount,
status:$status,
image:$image,
openingToTime:$openingToTime,
openingFromTime:$openingFromTime,
outletDescription:$outletDescription,
isPureVeg:$isPureVeg,
area:$area,
type:$type
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Outlets &&
        other.runtimeType == runtimeType &&
        other.outletId == outletId &&
other.restaurantId == restaurantId &&
other.outletName == outletName &&
other.isServicable == isServicable &&
other.offers == offers &&
other.averageReview == averageReview &&
other.time == time &&
other.displayTime == displayTime &&
other.cuisines == cuisines &&
other.costForTwo == costForTwo &&
other.displayCostForTwo == displayCostForTwo &&
other.totalAmount == totalAmount &&
other.balanceAmount == balanceAmount &&
other.status == status &&
other.image == image &&
other.openingToTime == openingToTime &&
other.openingFromTime == openingFromTime &&
other.outletDescription == outletDescription &&
other.isPureVeg == isPureVeg &&
other.area == area &&
other.type == type;
}

@override
int get hashCode {
    return Object.hash(
                runtimeType,
                outletId,
restaurantId,
outletName,
isServicable,
offers,
averageReview,
time,
displayTime,
cuisines,
costForTwo,
displayCostForTwo,
totalAmount,
balanceAmount,
status,
image,
openingToTime,
openingFromTime,
outletDescription,
isPureVeg
    );
}

}
