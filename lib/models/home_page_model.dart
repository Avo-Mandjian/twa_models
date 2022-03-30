// import 'dart:convert';


// class HomePageModel {
//   final List<SlideShowModel> slideshowREMOVETHIS;
//   final List<BannersModel> banner;
//   final List<Collections_section_1> collections_section_1;
//   final List<CollectionsModel> collections_section_2;
//   final Section section;
//   HomePageModel({
//     this.slideshowREMOVETHIS = const [],
//     this.banner = const [],
//     this.collections_section_1 = const [],
//     this.collections_section_2 = const [],
//     required this.section,
//   });

//   HomePageModel copyWith({
//     List<SlideShowModel>? slideshowREMOVETHIS,
//     List<BannersModel>? banner,
//     List<Collections_section_1>? collections_section_1,
//     List<CollectionsModel>? collections_section_2,
//     Section? section,
//   }) {
//     return HomePageModel(
//       slideshowREMOVETHIS: slideshowREMOVETHIS ?? this.slideshowREMOVETHIS,
//       banner: banner ?? this.banner,
//       collections_section_1:
//           collections_section_1 ?? this.collections_section_1,
//       collections_section_2:
//           collections_section_2 ?? this.collections_section_2,
//       section: section ?? this.section,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'slideshowREMOVETHIS': slideshowREMOVETHIS.map((x) => x.toMap()).toList(),
//       'banner': banner.map((x) => x.toMap()).toList(),
//       'collections_section_1':
//           collections_section_1.map((x) => x.toMap()).toList(),
//       'collections_section_2':
//           collections_section_2.map((x) => x.toMap()).toList(),
//       'section': section.toMap(),
//     };
//   }

//   factory HomePageModel.fromMap(Map<String, dynamic> map) {
//     return HomePageModel(
//       slideshowREMOVETHIS: List<SlideShowModel>.from(
//           map['slideshow']?.map((x) => SlideShowModel.fromMap(x))),
//       banner: List<BannersModel>.from(
//           map['banner']?.map((x) => BannersModel.fromMap(x))),
//       collections_section_1: List<Collections_section_1>.from(
//           map['collections_section_1']
//               ?.map((x) => Collections_section_1.fromMap(x))),
//       collections_section_2: List<CollectionsModel>.from(
//           map['collections_section_2']
//               ?.map((x) => CollectionsModel.fromMap(x))),
//       section: Section.fromMap(map['section']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory HomePageModel.fromJson(String source) =>
//       HomePageModel.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'HomePageModel(slideshowREMOVETHIS: $slideshowREMOVETHIS, banner: $banner, collections_section_1: $collections_section_1, collections_section_2: $collections_section_2, section: $section)';
//   }
// }

// class Cms_attributes {
//   final String created_at;
//   final String updated_at;
//   final int version;
//   Cms_attributes({
//     this.created_at = '',
//     this.updated_at = '',
//     this.version = 0,
//   });

//   Cms_attributes copyWith({
//     String? created_at,
//     String? updated_at,
//     int? version,
//   }) {
//     return Cms_attributes(
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       version: version ?? this.version,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'version': version,
//     };
//   }

//   factory Cms_attributes.fromMap(Map<String, dynamic> map) {
//     return Cms_attributes(
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       version: map['version']?.toInt() ?? 0,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Cms_attributes.fromJson(String source) =>
//       Cms_attributes.fromMap(json.decode(source));

//   @override
//   String toString() =>
//       'Cms_attributes(created_at: $created_at, updated_at: $updated_at, version: $version)';
// }

// class Slideshow {
//   final String image;
//   final String thumb;
//   final String alt;
//   Slideshow({
//     this.image = '',
//     this.thumb = '',
//     this.alt = '',
//   });

//   Slideshow copyWith({
//     String? image,
//     String? thumb,
//     String? alt,
//   }) {
//     return Slideshow(
//       image: image ?? this.image,
//       thumb: thumb ?? this.thumb,
//       alt: alt ?? this.alt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'image': image,
//       'thumb': thumb,
//       'alt': alt,
//     };
//   }

//   factory Slideshow.fromMap(Map<String, dynamic> map) {
//     return Slideshow(
//       image: map['image'] ?? '',
//       thumb: map['thumb'] ?? '',
//       alt: map['alt'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Slideshow.fromJson(String source) =>
//       Slideshow.fromMap(json.decode(source));

//   @override
//   String toString() => 'Slideshow(image: $image, thumb: $thumb, alt: $alt)';
// }

// class Image {
//   final String image;
//   final String thumb;
//   final String alt;
//   Image({
//     this.image = '',
//     this.thumb = '',
//     this.alt = '',
//   });

//   Image copyWith({
//     String? image,
//     String? thumb,
//     String? alt,
//   }) {
//     return Image(
//       image: image ?? this.image,
//       thumb: thumb ?? this.thumb,
//       alt: alt ?? this.alt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'image': image,
//       'thumb': thumb,
//       'alt': alt,
//     };
//   }

//   factory Image.fromMap(Map<String, dynamic> map) {
//     return Image(
//       image: map['image'] ?? '',
//       thumb: map['thumb'] ?? '',
//       alt: map['alt'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Image.fromJson(String source) => Image.fromMap(json.decode(source));

//   @override
//   String toString() => 'Image(image: $image, thumb: $thumb, alt: $alt)';
// }

// class Image_mobile {
//   final String image;
//   final String thumb;
//   final String alt;
//   Image_mobile({
//     this.image = '',
//     this.thumb = '',
//     this.alt = '',
//   });

//   Image_mobile copyWith({
//     String? image,
//     String? thumb,
//     String? alt,
//   }) {
//     return Image_mobile(
//       image: image ?? this.image,
//       thumb: thumb ?? this.thumb,
//       alt: alt ?? this.alt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'image': image,
//       'thumb': thumb,
//       'alt': alt,
//     };
//   }

//   factory Image_mobile.fromMap(Map<String, dynamic> map) {
//     return Image_mobile(
//       image: map['image'] ?? '',
//       thumb: map['thumb'] ?? '',
//       alt: map['alt'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Image_mobile.fromJson(String source) =>
//       Image_mobile.fromMap(json.decode(source));

//   @override
//   String toString() => 'Image_mobile(image: $image, thumb: $thumb, alt: $alt)';
// }

// class Collections_section_1 {
//   final int id;
//   final String created_at;
//   final String updated_at;
//   final String deleted_at;
//   final int locked;
//   final int cancelled;
//   final int version;
//   final int orders;
//   final String ecom_stores_id;
//   final int display_homepage;
//   final int display;
//   final String label;
//   final String ecom_sections_id;
//   final String extension_image;
//   final String alt_image;
//   final List<String> keywords;
//   final Cms_attributesREMOVETHIS cms_attributesREMOVETHIS;
//   final String label_en;
//   final String label_ar;
//   final String label_fr;
//   final String mode;
//   final String ecom_subcategories_id;
//   final String ecom_products_filters_id;
//   final String seo_attributes;
//   final String description;
//   final String description_en;
//   final String description_ar;
//   final String description_fr;
//   final String slug;
//   final String link;
//   final Product products;
//   final String phone_country_code;
//   final String phone_original;
//   final String image;
//   final String thumb;
//   Collections_section_1({
//     this.id = 0,
//     this.created_at = '',
//     this.updated_at = '',
//     this.deleted_at = '',
//     this.locked = 0,
//     this.cancelled = 0,
//     this.version = 0,
//     this.orders = 0,
//     this.ecom_stores_id = '',
//     this.display_homepage = 0,
//     this.display = 0,
//     this.label = '',
//     this.ecom_sections_id = '',
//     this.extension_image = '',
//     this.alt_image = '',
//     this.keywords = const [],
//     required this.cms_attributesREMOVETHIS,
//     this.label_en = '',
//     this.label_ar = '',
//     this.label_fr = '',
//     this.mode = '',
//     this.ecom_subcategories_id = '',
//     this.ecom_products_filters_id = '',
//     this.seo_attributes = '',
//     this.description = '',
//     this.description_en = '',
//     this.description_ar = '',
//     this.description_fr = '',
//     this.slug = '',
//     this.link = '',
//     required this.products,
//     this.phone_country_code = '',
//     this.phone_original = '',
//     this.image = '',
//     this.thumb = '',
//   });

//   Collections_section_1 copyWith({
//     int? id,
//     String? created_at,
//     String? updated_at,
//     String? deleted_at,
//     int? locked,
//     int? cancelled,
//     int? version,
//     int? orders,
//     String? ecom_stores_id,
//     int? display_homepage,
//     int? display,
//     String? label,
//     String? ecom_sections_id,
//     String? extension_image,
//     String? alt_image,
//     List<String>? keywords,
//     Cms_attributesREMOVETHIS? cms_attributesREMOVETHIS,
//     String? label_en,
//     String? label_ar,
//     String? label_fr,
//     String? mode,
//     String? ecom_subcategories_id,
//     String? ecom_products_filters_id,
//     String? seo_attributes,
//     String? description,
//     String? description_en,
//     String? description_ar,
//     String? description_fr,
//     String? slug,
//     String? link,
//     Product? products,
//     String? phone_country_code,
//     String? phone_original,
//     String? image,
//     String? thumb,
//   }) {
//     return Collections_section_1(
//       id: id ?? this.id,
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       deleted_at: deleted_at ?? this.deleted_at,
//       locked: locked ?? this.locked,
//       cancelled: cancelled ?? this.cancelled,
//       version: version ?? this.version,
//       orders: orders ?? this.orders,
//       ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
//       display_homepage: display_homepage ?? this.display_homepage,
//       display: display ?? this.display,
//       label: label ?? this.label,
//       ecom_sections_id: ecom_sections_id ?? this.ecom_sections_id,
//       extension_image: extension_image ?? this.extension_image,
//       alt_image: alt_image ?? this.alt_image,
//       keywords: keywords ?? this.keywords,
//       cms_attributesREMOVETHIS:
//           cms_attributesREMOVETHIS ?? this.cms_attributesREMOVETHIS,
//       label_en: label_en ?? this.label_en,
//       label_ar: label_ar ?? this.label_ar,
//       label_fr: label_fr ?? this.label_fr,
//       mode: mode ?? this.mode,
//       ecom_subcategories_id:
//           ecom_subcategories_id ?? this.ecom_subcategories_id,
//       ecom_products_filters_id:
//           ecom_products_filters_id ?? this.ecom_products_filters_id,
//       seo_attributes: seo_attributes ?? this.seo_attributes,
//       description: description ?? this.description,
//       description_en: description_en ?? this.description_en,
//       description_ar: description_ar ?? this.description_ar,
//       description_fr: description_fr ?? this.description_fr,
//       slug: slug ?? this.slug,
//       link: link ?? this.link,
//       products: products ?? this.products,
//       phone_country_code: phone_country_code ?? this.phone_country_code,
//       phone_original: phone_original ?? this.phone_original,
//       image: image ?? this.image,
//       thumb: thumb ?? this.thumb,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'deleted_at': deleted_at,
//       'locked': locked,
//       'cancelled': cancelled,
//       'version': version,
//       'orders': orders,
//       'ecom_stores_id': ecom_stores_id,
//       'display_homepage': display_homepage,
//       'display': display,
//       'label': label,
//       'ecom_sections_id': ecom_sections_id,
//       'extension_image': extension_image,
//       'alt_image': alt_image,
//       'keywords': keywords,
//       'cms_attributesREMOVETHIS': cms_attributesREMOVETHIS.toMap(),
//       'label_en': label_en,
//       'label_ar': label_ar,
//       'label_fr': label_fr,
//       'mode': mode,
//       'ecom_subcategories_id': ecom_subcategories_id,
//       'ecom_products_filters_id': ecom_products_filters_id,
//       'seo_attributes': seo_attributes,
//       'description': description,
//       'description_en': description_en,
//       'description_ar': description_ar,
//       'description_fr': description_fr,
//       'slug': slug,
//       'link': link,
//       'products': products.toMap(),
//       'phone_country_code': phone_country_code,
//       'phone_original': phone_original,
//       'image': image,
//       'thumb': thumb,
//     };
//   }

//   factory Collections_section_1.fromMap(Map<String, dynamic> map) {
//     return Collections_section_1(
//       id: map['id']?.toInt() ?? 0,
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       deleted_at: map['deleted_at'] ?? '',
//       locked: map['locked']?.toInt() ?? 0,
//       cancelled: map['cancelled']?.toInt() ?? 0,
//       version: map['version']?.toInt() ?? 0,
//       orders: map['orders']?.toInt() ?? 0,
//       ecom_stores_id: map['ecom_stores_id'] ?? '',
//       display_homepage: map['display_homepage']?.toInt() ?? 0,
//       display: map['display']?.toInt() ?? 0,
//       label: map['label'] ?? '',
//       ecom_sections_id: map['ecom_sections_id'] ?? '',
//       extension_image: map['extension_image'] ?? '',
//       alt_image: map['alt_image'] ?? '',
//       keywords: List<String>.from(map['keywords']),
//       cms_attributesREMOVETHIS:
//           Cms_attributesREMOVETHIS.fromMap(map['cms_attributes']),
//       label_en: map['label_en'] ?? '',
//       label_ar: map['label_ar'] ?? '',
//       label_fr: map['label_fr'] ?? '',
//       mode: map['mode'] ?? '',
//       ecom_subcategories_id: map['ecom_subcategories_id'] ?? '',
//       ecom_products_filters_id: map['ecom_products_filters_id'] ?? '',
//       seo_attributes: map['seo_attributes'] ?? '',
//       description: map['description'] ?? '',
//       description_en: map['description_en'] ?? '',
//       description_ar: map['description_ar'] ?? '',
//       description_fr: map['description_fr'] ?? '',
//       slug: map['slug'] ?? '',
//       link: map['link'] ?? '',
//       products: Product.fromMap(map['products']),
//       phone_country_code: map['phone_country_code'] ?? '',
//       phone_original: map['phone_original'] ?? '',
//       image: map['image'] ?? '',
//       thumb: map['thumb'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Collections_section_1.fromJson(String source) =>
//       Collections_section_1.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Collections_section_1(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, display_homepage: $display_homepage, display: $display, label: $label, ecom_sections_id: $ecom_sections_id, extension_image: $extension_image, alt_image: $alt_image, keywords: $keywords, cms_attributesREMOVETHIS: $cms_attributesREMOVETHIS, label_en: $label_en, label_ar: $label_ar, label_fr: $label_fr, mode: $mode, ecom_subcategories_id: $ecom_subcategories_id, ecom_products_filters_id: $ecom_products_filters_id, seo_attributes: $seo_attributes, description: $description, description_en: $description_en, description_ar: $description_ar, description_fr: $description_fr, slug: $slug, link: $link, products: $products, phone_country_code: $phone_country_code, phone_original: $phone_original, image: $image, thumb: $thumb)';
//   }
// }

// class Cms_attributesREMOVETHIS {
//   final String attributes_description;
//   final String created_at;
//   final String updated_at;
//   final int version;
//   Cms_attributesREMOVETHIS({
//     this.attributes_description = '',
//     this.created_at = '',
//     this.updated_at = '',
//     this.version = 0,
//   });

//   Cms_attributesREMOVETHIS copyWith({
//     String? attributes_description,
//     String? created_at,
//     String? updated_at,
//     int? version,
//   }) {
//     return Cms_attributesREMOVETHIS(
//       attributes_description:
//           attributes_description ?? this.attributes_description,
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       version: version ?? this.version,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'attributes_description': attributes_description,
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'version': version,
//     };
//   }

//   factory Cms_attributesREMOVETHIS.fromMap(Map<String, dynamic> map) {
//     return Cms_attributesREMOVETHIS(
//       attributes_description: map['attributes_description'] ?? '',
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       version: map['version']?.toInt() ?? 0,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Cms_attributesREMOVETHIS.fromJson(String source) =>
//       Cms_attributesREMOVETHIS.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Cms_attributesREMOVETHIS(attributes_description: $attributes_description, created_at: $created_at, updated_at: $updated_at, version: $version)';
//   }
// }

// class Link {
//   final String url;
//   final String label;
//   final bool active;
//   Link({
//     this.url = '',
//     this.label = '',
//     this.active = false,
//   });

//   Link copyWith({
//     String? url,
//     String? label,
//     bool? active,
//   }) {
//     return Link(
//       url: url ?? this.url,
//       label: label ?? this.label,
//       active: active ?? this.active,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'url': url,
//       'label': label,
//       'active': active,
//     };
//   }

//   factory Link.fromMap(Map<String, dynamic> map) {
//     return Link(
//       url: map['url'] ?? '',
//       label: map['label'] ?? '',
//       active: map['active'] ?? false,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Link.fromJson(String source) => Link.fromMap(json.decode(source));

//   @override
//   String toString() => 'Link(url: $url, label: $label, active: $active)';
// }

// class Request {
//   final String ecom_stores_id;
//   final int display_homepage;
//   final String extraFields;
//   final int IncludeProducts;
//   final int get;
//   final String contentLength;
//   final String cookie;
//   final String connection;
//   final String acceptEncoding;
//   final String host;
//   final String postmanToken;
//   final String cacheControl;
//   final String accept;
//   final String userAgent;
//   final String store;
//   final String lang;
//   final String token;
//   final String keywords;
//   Request({
//     this.ecom_stores_id = '',
//     this.display_homepage = 0,
//     this.extraFields = '',
//     this.IncludeProducts = 0,
//     this.get = 0,
//     this.contentLength = '',
//     this.cookie = '',
//     this.connection = '',
//     this.acceptEncoding = '',
//     this.host = '',
//     this.postmanToken = '',
//     this.cacheControl = '',
//     this.accept = '',
//     this.userAgent = '',
//     this.store = '',
//     this.lang = '',
//     this.token = '',
//     this.keywords = '',
//   });

//   Request copyWith({
//     String? ecom_stores_id,
//     int? display_homepage,
//     String? extraFields,
//     int? IncludeProducts,
//     int? get,
//     String? contentLength,
//     String? cookie,
//     String? connection,
//     String? acceptEncoding,
//     String? host,
//     String? postmanToken,
//     String? cacheControl,
//     String? accept,
//     String? userAgent,
//     String? store,
//     String? lang,
//     String? token,
//     String? keywords,
//   }) {
//     return Request(
//       ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
//       display_homepage: display_homepage ?? this.display_homepage,
//       extraFields: extraFields ?? this.extraFields,
//       IncludeProducts: IncludeProducts ?? this.IncludeProducts,
//       get: get ?? this.get,
//       contentLength: contentLength ?? this.contentLength,
//       cookie: cookie ?? this.cookie,
//       connection: connection ?? this.connection,
//       acceptEncoding: acceptEncoding ?? this.acceptEncoding,
//       host: host ?? this.host,
//       postmanToken: postmanToken ?? this.postmanToken,
//       cacheControl: cacheControl ?? this.cacheControl,
//       accept: accept ?? this.accept,
//       userAgent: userAgent ?? this.userAgent,
//       store: store ?? this.store,
//       lang: lang ?? this.lang,
//       token: token ?? this.token,
//       keywords: keywords ?? this.keywords,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'ecom_stores_id': ecom_stores_id,
//       'display_homepage': display_homepage,
//       'extraFields': extraFields,
//       'IncludeProducts': IncludeProducts,
//       'get': get,
//       'content-length': contentLength,
//       'cookie': cookie,
//       'connection': connection,
//       'accept-encoding': acceptEncoding,
//       'host': host,
//       'postman-token': postmanToken,
//       'cache-control': cacheControl,
//       'accept': accept,
//       'user-agent': userAgent,
//       'store': store,
//       'lang': lang,
//       'token': token,
//       'keywords': keywords,
//     };
//   }

//   factory Request.fromMap(Map<String, dynamic> map) {
//     return Request(
//       ecom_stores_id: map['ecom_stores_id'] ?? '',
//       display_homepage: map['display_homepage']?.toInt() ?? 0,
//       extraFields: map['extraFields'] ?? '',
//       IncludeProducts: map['IncludeProducts']?.toInt() ?? 0,
//       get: map['get']?.toInt() ?? 0,
//       contentLength: map['content-length'] ?? '',
//       cookie: map['cookie'] ?? '',
//       connection: map['connection'] ?? '',
//       acceptEncoding: map['accept-encoding'] ?? '',
//       host: map['host'] ?? '',
//       postmanToken: map['postman-token'] ?? '',
//       cacheControl: map['cache-control'] ?? '',
//       accept: map['accept'] ?? '',
//       userAgent: map['user-agent'] ?? '',
//       store: map['store'] ?? '',
//       lang: map['lang'] ?? '',
//       token: map['token'] ?? '',
//       keywords: map['keywords'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Request.fromJson(String source) =>
//       Request.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Request(ecom_stores_id: $ecom_stores_id, display_homepage: $display_homepage, extraFields: $extraFields, IncludeProducts: $IncludeProducts, get: $get, contentLength: $contentLength, cookie: $cookie, connection: $connection, acceptEncoding: $acceptEncoding, host: $host, postmanToken: $postmanToken, cacheControl: $cacheControl, accept: $accept, userAgent: $userAgent, store: $store, lang: $lang, token: $token, keywords: $keywords)';
//   }
// }

// class Collections_section_2 {
//   final int id;
//   final String created_at;
//   final String updated_at;
//   final String deleted_at;
//   final int locked;
//   final int cancelled;
//   final int version;
//   final int orders;
//   final List<String> ecom_stores_id;
//   final int display_homepage;
//   final int display;
//   final String label;
//   final List<String> ecom_sections_id;
//   final String extension_image;
//   final String alt_image;
//   final String keywords;
//   final Cms_attributesREMOVETHIS cms_attributesREMOVETHIS;
//   final String mode;
//   final List<String> ecom_subcategories_id;
//   final String ecom_products_filters_id;
//   final String seo_attributes;
//   final String description;
//   final String slug;
//   final Image image;
//   Collections_section_2({
//     this.id = 0,
//     this.created_at = '',
//     this.updated_at = '',
//     this.deleted_at = '',
//     this.locked = 0,
//     this.cancelled = 0,
//     this.version = 0,
//     this.orders = 0,
//     this.ecom_stores_id = const [],
//     this.display_homepage = 0,
//     this.display = 0,
//     this.label = '',
//     this.ecom_sections_id = const [],
//     this.extension_image = '',
//     this.alt_image = '',
//     this.keywords = '',
//     required this.cms_attributesREMOVETHIS,
//     this.mode = '',
//     this.ecom_subcategories_id = const [],
//     this.ecom_products_filters_id = '',
//     this.seo_attributes = '',
//     this.description = '',
//     this.slug = '',
//     required this.image,
//   });

//   Collections_section_2 copyWith({
//     int? id,
//     String? created_at,
//     String? updated_at,
//     String? deleted_at,
//     int? locked,
//     int? cancelled,
//     int? version,
//     int? orders,
//     List<String>? ecom_stores_id,
//     int? display_homepage,
//     int? display,
//     String? label,
//     List<String>? ecom_sections_id,
//     String? extension_image,
//     String? alt_image,
//     String? keywords,
//     Cms_attributesREMOVETHIS? cms_attributesREMOVETHIS,
//     String? mode,
//     List<String>? ecom_subcategories_id,
//     String? ecom_products_filters_id,
//     String? seo_attributes,
//     String? description,
//     String? slug,
//     Image? image,
//   }) {
//     return Collections_section_2(
//       id: id ?? this.id,
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       deleted_at: deleted_at ?? this.deleted_at,
//       locked: locked ?? this.locked,
//       cancelled: cancelled ?? this.cancelled,
//       version: version ?? this.version,
//       orders: orders ?? this.orders,
//       ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
//       display_homepage: display_homepage ?? this.display_homepage,
//       display: display ?? this.display,
//       label: label ?? this.label,
//       ecom_sections_id: ecom_sections_id ?? this.ecom_sections_id,
//       extension_image: extension_image ?? this.extension_image,
//       alt_image: alt_image ?? this.alt_image,
//       keywords: keywords ?? this.keywords,
//       cms_attributesREMOVETHIS:
//           cms_attributesREMOVETHIS ?? this.cms_attributesREMOVETHIS,
//       mode: mode ?? this.mode,
//       ecom_subcategories_id:
//           ecom_subcategories_id ?? this.ecom_subcategories_id,
//       ecom_products_filters_id:
//           ecom_products_filters_id ?? this.ecom_products_filters_id,
//       seo_attributes: seo_attributes ?? this.seo_attributes,
//       description: description ?? this.description,
//       slug: slug ?? this.slug,
//       image: image ?? this.image,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'deleted_at': deleted_at,
//       'locked': locked,
//       'cancelled': cancelled,
//       'version': version,
//       'orders': orders,
//       'ecom_stores_id': ecom_stores_id,
//       'display_homepage': display_homepage,
//       'display': display,
//       'label': label,
//       'ecom_sections_id': ecom_sections_id,
//       'extension_image': extension_image,
//       'alt_image': alt_image,
//       'keywords': keywords,
//       'cms_attributesREMOVETHIS': cms_attributesREMOVETHIS.toMap(),
//       'mode': mode,
//       'ecom_subcategories_id': ecom_subcategories_id,
//       'ecom_products_filters_id': ecom_products_filters_id,
//       'seo_attributes': seo_attributes,
//       'description': description,
//       'slug': slug,
//       'image': image.toMap(),
//     };
//   }

//   factory Collections_section_2.fromMap(Map<String, dynamic> map) {
//     return Collections_section_2(
//       id: map['id']?.toInt() ?? 0,
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       deleted_at: map['deleted_at'] ?? '',
//       locked: map['locked']?.toInt() ?? 0,
//       cancelled: map['cancelled']?.toInt() ?? 0,
//       version: map['version']?.toInt() ?? 0,
//       orders: map['orders']?.toInt() ?? 0,
//       ecom_stores_id: List<String>.from(map['ecom_stores_id']),
//       display_homepage: map['display_homepage']?.toInt() ?? 0,
//       display: map['display']?.toInt() ?? 0,
//       label: map['label'] ?? '',
//       ecom_sections_id: List<String>.from(map['ecom_sections_id']),
//       extension_image: map['extension_image'] ?? '',
//       alt_image: map['alt_image'] ?? '',
//       keywords: jsonEncode(map['keywords'] ?? []),
//       cms_attributesREMOVETHIS:
//           Cms_attributesREMOVETHIS.fromMap(map['cms_attributes']),
//       mode: map['mode'] ?? '',
//       ecom_subcategories_id:
//           List<String>.from(map['ecom_subcategories_id'] ?? []),
//       ecom_products_filters_id: map['ecom_products_filters_id'] ?? '',
//       seo_attributes: map['seo_attributes'] ?? '',
//       description: map['description'] ?? '',
//       slug: map['slug'] ?? '',
//       image: Image.fromMap(map['image']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Collections_section_2.fromJson(String source) =>
//       Collections_section_2.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Collections_section_2(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, ecom_stores_id: $ecom_stores_id, display_homepage: $display_homepage, display: $display, label: $label, ecom_sections_id: $ecom_sections_id, extension_image: $extension_image, alt_image: $alt_image, keywords: $keywords, cms_attributesREMOVETHIS: $cms_attributesREMOVETHIS, mode: $mode, ecom_subcategories_id: $ecom_subcategories_id, ecom_products_filters_id: $ecom_products_filters_id, seo_attributes: $seo_attributes, description: $description, slug: $slug, image: $image)';
//   }
// }

// class Section {
//   final int id;
//   final String created_at;
//   final String updated_at;
//   final String deleted_at;
//   final int locked;
//   final int cancelled;
//   final int version;
//   final int orders;
//   final String label;
//   final int published;
//   final String keywords;
//   final Cms_attributes cms_attributes;
//   final String seo_attributes;
//   Section({
//     this.id = 0,
//     this.created_at = '',
//     this.updated_at = '',
//     this.deleted_at = '',
//     this.locked = 0,
//     this.cancelled = 0,
//     this.version = 0,
//     this.orders = 0,
//     this.label = '',
//     this.published = 0,
//     this.keywords = '',
//     required this.cms_attributes,
//     this.seo_attributes = '',
//   });

//   Section copyWith({
//     int? id,
//     String? created_at,
//     String? updated_at,
//     String? deleted_at,
//     int? locked,
//     int? cancelled,
//     int? version,
//     int? orders,
//     String? label,
//     int? published,
//     String? keywords,
//     Cms_attributes? cms_attributes,
//     String? seo_attributes,
//   }) {
//     return Section(
//       id: id ?? this.id,
//       created_at: created_at ?? this.created_at,
//       updated_at: updated_at ?? this.updated_at,
//       deleted_at: deleted_at ?? this.deleted_at,
//       locked: locked ?? this.locked,
//       cancelled: cancelled ?? this.cancelled,
//       version: version ?? this.version,
//       orders: orders ?? this.orders,
//       label: label ?? this.label,
//       published: published ?? this.published,
//       keywords: keywords ?? this.keywords,
//       cms_attributes: cms_attributes ?? this.cms_attributes,
//       seo_attributes: seo_attributes ?? this.seo_attributes,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'created_at': created_at,
//       'updated_at': updated_at,
//       'deleted_at': deleted_at,
//       'locked': locked,
//       'cancelled': cancelled,
//       'version': version,
//       'orders': orders,
//       'label': label,
//       'published': published,
//       'keywords': keywords,
//       'cms_attributes': cms_attributes.toMap(),
//       'seo_attributes': seo_attributes,
//     };
//   }

//   factory Section.fromMap(Map<String, dynamic> map) {
//     return Section(
//       id: map['id']?.toInt() ?? 0,
//       created_at: map['created_at'] ?? '',
//       updated_at: map['updated_at'] ?? '',
//       deleted_at: map['deleted_at'] ?? '',
//       locked: map['locked']?.toInt() ?? 0,
//       cancelled: map['cancelled']?.toInt() ?? 0,
//       version: map['version']?.toInt() ?? 0,
//       orders: map['orders']?.toInt() ?? 0,
//       label: map['label'] ?? '',
//       published: map['published']?.toInt() ?? 0,
//       keywords: map['keywords'] ?? '',
//       cms_attributes: Cms_attributes.fromMap(map['cms_attributes']),
//       seo_attributes: map['seo_attributes'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Section.fromJson(String source) =>
//       Section.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Section(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, label: $label, published: $published, keywords: $keywords, cms_attributes: $cms_attributes, seo_attributes: $seo_attributes)';
//   }
// }
