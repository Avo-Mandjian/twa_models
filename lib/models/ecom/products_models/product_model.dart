import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../utilities/currencies/currency_model.dart';

// if out of stock, see if preorder_available = 1, then check if type is "notify user" or "preorder", if "notify user" add btn nofy... mtl website, if "preoder" DO OTHER THINGS
class Product {
  final int current_page;
  final List<DataProduct> data;
  final String first_page_url;
  final int from;
  final int last_page;
  final String last_page_url;
  final List<LinkProduct> links;
  final String next_page_url;
  final String path;
  final int per_page;
  final String prev_page_url;
  final int to;
  final int total;
  final Request request;
  final String filters;
  final String priceRangeFilter;
  Product({
    this.current_page = 0,
    this.data = const [],
    this.first_page_url = '',
    this.from = 0,
    this.last_page = 0,
    this.last_page_url = '',
    this.links = const [],
    this.next_page_url = '',
    this.path = '',
    this.per_page = 0,
    this.prev_page_url = '',
    this.to = 0,
    this.total = 0,
    required this.request,
    this.filters = '',
    this.priceRangeFilter = '',
  });

  Product copyWith({
    int? current_page,
    List<DataProduct>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    List<LinkProduct>? links,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
    Request? request,
    String? filters,
    String? priceRangeFilter,
  }) {
    return Product(
      current_page: current_page ?? this.current_page,
      data: data ?? this.data,
      first_page_url: first_page_url ?? this.first_page_url,
      from: from ?? this.from,
      last_page: last_page ?? this.last_page,
      last_page_url: last_page_url ?? this.last_page_url,
      links: links ?? this.links,
      next_page_url: next_page_url ?? this.next_page_url,
      path: path ?? this.path,
      per_page: per_page ?? this.per_page,
      prev_page_url: prev_page_url ?? this.prev_page_url,
      filters: filters ?? this.filters,
      to: to ?? this.to,
      total: total ?? this.total,
      request: request ?? this.request,
      priceRangeFilter: priceRangeFilter ?? this.priceRangeFilter,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'current_page': current_page,
      'data': data.map((DataProduct x) => x.toMap()).toList(),
      'priceRangeFilter': priceRangeFilter,
      'first_page_url': first_page_url,
      'from': from,
      'last_page': last_page,
      'last_page_url': last_page_url,
      'links': links.map((LinkProduct x) => x.toMap()).toList(),
      'next_page_url': next_page_url,
      'path': path,
      'per_page': per_page,
      'prev_page_url': prev_page_url,
      'filters': filters,
      'to': to,
      'total': total,
      'request': request.toMap(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      current_page: map['current_page']?.toInt() ?? 0,
      data: List<DataProduct>.from(
        map['data']?.map((x) => DataProduct.fromMap(x)) ?? [],
      ),
      first_page_url: map['first_page_url'] ?? '',
      from: map['from']?.toInt() ?? 0,
      last_page: map['last_page']?.toInt() ?? 0,
      last_page_url: map['last_page_url'] ?? '',
      links: List<LinkProduct>.from(
          map['links']?.map((x) => LinkProduct.fromMap(x)) ?? []),
      next_page_url: map['next_page_url'] ?? '',
      path: map['path'] ?? '',
      per_page: map['per_page']?.toInt() ?? 0,
      prev_page_url: map['prev_page_url'] ?? '',
      filters: map['filters'] != null
          ? map['filters'].runtimeType != bool
              ? map['filters'].runtimeType != String
                  ? jsonEncode(map['filters']['data'] ?? '')
                  : ''
              : ''
          : '',
      priceRangeFilter: map['filters'] != null
          ? map['filters'].runtimeType != bool
              ? map['filters'].runtimeType != String
                  ? jsonEncode(map['filters']['price'] ?? '')
                  : ''
              : ''
          : '',
      to: map['to']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      request: Request.fromMap(map['request']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, links: $links, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.current_page == current_page &&
        listEquals(other.data, data) &&
        other.first_page_url == first_page_url &&
        other.from == from &&
        other.last_page == last_page &&
        other.last_page_url == last_page_url &&
        listEquals(other.links, links) &&
        other.next_page_url == next_page_url &&
        other.path == path &&
        other.per_page == per_page &&
        other.prev_page_url == prev_page_url &&
        other.filters == filters &&
        other.priceRangeFilter == priceRangeFilter &&
        other.to == to &&
        other.total == total &&
        other.request == request;
  }

  @override
  int get hashCode {
    return current_page.hashCode ^
        data.hashCode ^
        first_page_url.hashCode ^
        from.hashCode ^
        last_page.hashCode ^
        last_page_url.hashCode ^
        links.hashCode ^
        next_page_url.hashCode ^
        path.hashCode ^
        per_page.hashCode ^
        prev_page_url.hashCode ^
        filters.hashCode ^
        priceRangeFilter.hashCode ^
        to.hashCode ^
        total.hashCode ^
        request.hashCode;
  }
}

class DataProduct {
  final int id;
  final List<DataProduct> recommended_ecom_products_id;
  final List<EcomProductsTags> ecom_products_tags;
  final List<LoadAdjuster> load_adjuster;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final int display;
  final int display_badge;
  final String label;
  final String sku;
  final int stock_quantity;
  final int ecom_stores_id;
  final List<String> keywords;
  final String extension_image;
  final String alt_image;
  final List<Gallery> gallery;
  final double price_ttc;
  // final String price_shelf;
  final int discount;
  final String cost;
  final String cost_currency;
  final int weight;
  final int length;
  final int width;
  final int depth;
  final String variation_primary_label;
  final String ecom_products_variation_primary_id;
  final String variation_secondary_label;
  final String tab_1_title;
  final int tab_1_display;
  final String tab_1_content;
  final String tab_2_title;
  final int tab_2_display;
  final String tab_2_content;
  final String tab_3_title;
  final int tab_3_display;
  final String tab_3_content;
  final String tab_4_title;
  final int tab_4_display;
  final String tab_4_content;
  final String sold_count;
  final String clicked_count;
  final String image_group;
  final String cms_attributes;
  final String small_description;
  final String ecom_products_variation_secondary_id;
  final String family_group_id;
  final Recommendations recommendations;
  final ProductNotification productNotification;
  final String ecom_products_filters_id;
  final int ecom_subcategories_id;
  final String small_description_en;
  final String small_description_ar;
  final String tab_1_title_en;
  final String tab_1_title_ar;
  final String tab_1_content_en;
  final String tab_1_content_ar;
  final String tab_2_title_en;
  final String tab_2_title_ar;
  final String tab_2_content_en;
  final String tab_2_content_ar;
  final String tab_3_title_en;
  final String tab_3_title_ar;
  final String tab_3_content_en;
  final String tab_3_content_ar;
  final String tab_4_title_en;
  final String tab_4_title_ar;
  final String tab_4_content_en;
  final String tab_4_content_ar;
  final String label_en;
  final String label_ar;
  final String small_description_fr;
  final String tab_1_title_fr;
  final String tab_1_content_fr;
  final String tab_2_title_fr;
  final String tab_2_content_fr;
  final String tab_3_title_fr;
  final String tab_3_content_fr;
  final String tab_4_title_fr;
  final String tab_4_content_fr;
  final String label_fr;
  final String seo_attributes;
  final int no_listing;
  final int preorder_available;
  final double price;
  final String unit_price_formatted;
  final String unit_price_beforediscount_formatted;
  final String thumb;
  final String image;
  final List<CustomizationDataProduct> customization;
  final String variation_primary;
  final String variation_secondary;
  DataProduct({
    this.id = 0,
    this.ecom_products_tags = const [],
    this.load_adjuster = const [],
    this.recommended_ecom_products_id = const [],
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.display = 0,
    this.display_badge = 0,
    this.label = '',
    this.sku = '',
    this.stock_quantity = 0,
    this.ecom_stores_id = 0,
    this.keywords = const [],
    this.extension_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.alt_image =
        'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.gallery = const [],
    this.price_ttc = 0.0,
    // this.price_shelf = '',
    this.discount = 0,
    this.cost = '',
    this.cost_currency = '',
    this.weight = 0,
    this.length = 0,
    this.width = 0,
    this.depth = 0,
    this.variation_primary_label = '',
    this.ecom_products_variation_primary_id = '',
    this.variation_secondary_label = '',
    this.tab_1_title = '',
    this.tab_1_display = 0,
    this.tab_1_content = '',
    this.tab_2_title = '',
    this.tab_2_display = 0,
    this.tab_2_content = '',
    this.tab_3_title = '',
    this.tab_3_display = 0,
    this.tab_3_content = '',
    this.tab_4_title = '',
    this.tab_4_display = 0,
    this.tab_4_content = '',
    this.sold_count = '',
    this.clicked_count = '',
    this.image_group = '',
    this.cms_attributes = '',
    this.small_description = '',
    this.ecom_products_variation_secondary_id = '',
    this.family_group_id = '',
    required this.recommendations,
    required this.productNotification,
    this.ecom_products_filters_id = '',
    this.ecom_subcategories_id = 0,
    this.small_description_en = '',
    this.small_description_ar = '',
    this.tab_1_title_en = '',
    this.tab_1_title_ar = '',
    this.tab_1_content_en = '',
    this.tab_1_content_ar = '',
    this.tab_2_title_en = '',
    this.tab_2_title_ar = '',
    this.tab_2_content_en = '',
    this.tab_2_content_ar = '',
    this.tab_3_title_en = '',
    this.tab_3_title_ar = '',
    this.tab_3_content_en = '',
    this.tab_3_content_ar = '',
    this.tab_4_title_en = '',
    this.tab_4_title_ar = '',
    this.tab_4_content_en = '',
    this.tab_4_content_ar = '',
    this.label_en = '',
    this.label_ar = '',
    this.small_description_fr = '',
    this.tab_1_title_fr = '',
    this.tab_1_content_fr = '',
    this.tab_2_title_fr = '',
    this.tab_2_content_fr = '',
    this.tab_3_title_fr = '',
    this.tab_3_content_fr = '',
    this.tab_4_title_fr = '',
    this.tab_4_content_fr = '',
    this.label_fr = '',
    this.seo_attributes = '',
    this.no_listing = 0,
    this.preorder_available = 0,
    this.price = 0.0,
    this.unit_price_formatted = '',
    this.unit_price_beforediscount_formatted = '',
    this.thumb = '',
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.customization = const [],
    this.variation_primary = '',
    this.variation_secondary = '',
  });

  DataProduct copyWith({
    int? id,
    List<DataProduct>? recommended_ecom_products_id,
    List<EcomProductsTags>? ecom_products_tags,
    List<LoadAdjuster>? load_adjuster,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    int? display,
    int? display_badge,
    String? label,
    String? sku,
    int? stock_quantity,
    int? ecom_stores_id,
    List<String>? keywords,
    String? extension_image,
    String? alt_image,
    List<Gallery>? gallery,
    double? price_ttc,
    // String? price_shelf,
    int? discount,
    String? cost,
    String? cost_currency,
    int? weight,
    int? length,
    int? width,
    int? depth,
    String? variation_primary_label,
    String? ecom_products_variation_primary_id,
    String? variation_secondary_label,
    String? tab_1_title,
    int? tab_1_display,
    String? tab_1_content,
    String? tab_2_title,
    int? tab_2_display,
    String? tab_2_content,
    String? tab_3_title,
    int? tab_3_display,
    String? tab_3_content,
    String? tab_4_title,
    int? tab_4_display,
    String? tab_4_content,
    String? sold_count,
    String? clicked_count,
    String? image_group,
    String? cms_attributes,
    String? small_description,
    String? ecom_products_variation_secondary_id,
    String? family_group_id,
    Recommendations? recommendations,
    ProductNotification? productNotification,
    String? ecom_products_filters_id,
    int? ecom_subcategories_id,
    String? small_description_en,
    String? small_description_ar,
    String? tab_1_title_en,
    String? tab_1_title_ar,
    String? tab_1_content_en,
    String? tab_1_content_ar,
    String? tab_2_title_en,
    String? tab_2_title_ar,
    String? tab_2_content_en,
    String? tab_2_content_ar,
    String? tab_3_title_en,
    String? tab_3_title_ar,
    String? tab_3_content_en,
    String? tab_3_content_ar,
    String? tab_4_title_en,
    String? tab_4_title_ar,
    String? tab_4_content_en,
    String? tab_4_content_ar,
    String? label_en,
    String? label_ar,
    String? small_description_fr,
    String? tab_1_title_fr,
    String? tab_1_content_fr,
    String? tab_2_title_fr,
    String? tab_2_content_fr,
    String? tab_3_title_fr,
    String? tab_3_content_fr,
    String? tab_4_title_fr,
    String? tab_4_content_fr,
    String? label_fr,
    String? seo_attributes,
    int? no_listing,
    int? preorder_available,
    double? price,
    String? unit_price_formatted,
    String? unit_price_beforediscount_formatted,
    String? thumb,
    String? image,
    List<CustomizationDataProduct>? customization,
    String? variation_primary,
    String? variation_secondary,
  }) {
    return DataProduct(
      ecom_products_tags: ecom_products_tags ?? this.ecom_products_tags,
      load_adjuster: load_adjuster ?? this.load_adjuster,
      id: id ?? this.id,
      recommended_ecom_products_id:
          recommended_ecom_products_id ?? this.recommended_ecom_products_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      display: display ?? this.display,
      display_badge: display_badge ?? this.display_badge,
      label: label ?? this.label,
      sku: sku ?? this.sku,
      stock_quantity: stock_quantity ?? this.stock_quantity,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      keywords: keywords ?? this.keywords,
      extension_image: extension_image ?? this.extension_image,
      alt_image: alt_image ?? this.alt_image,
      gallery: gallery ?? this.gallery,
      price_ttc: price_ttc ?? this.price_ttc,
      // price_shelf: price_shelf ?? this.price_shelf,
      discount: discount ?? this.discount,
      cost: cost ?? this.cost,
      cost_currency: cost_currency ?? this.cost_currency,
      weight: weight ?? this.weight,
      length: length ?? this.length,
      width: width ?? this.width,
      depth: depth ?? this.depth,
      variation_primary_label:
          variation_primary_label ?? this.variation_primary_label,
      ecom_products_variation_primary_id: ecom_products_variation_primary_id ??
          this.ecom_products_variation_primary_id,
      variation_secondary_label:
          variation_secondary_label ?? this.variation_secondary_label,
      tab_1_title: tab_1_title ?? this.tab_1_title,
      tab_1_display: tab_1_display ?? this.tab_1_display,
      tab_1_content: tab_1_content ?? this.tab_1_content,
      tab_2_title: tab_2_title ?? this.tab_2_title,
      tab_2_display: tab_2_display ?? this.tab_2_display,
      tab_2_content: tab_2_content ?? this.tab_2_content,
      tab_3_title: tab_3_title ?? this.tab_3_title,
      tab_3_display: tab_3_display ?? this.tab_3_display,
      tab_3_content: tab_3_content ?? this.tab_3_content,
      tab_4_title: tab_4_title ?? this.tab_4_title,
      tab_4_display: tab_4_display ?? this.tab_4_display,
      tab_4_content: tab_4_content ?? this.tab_4_content,
      sold_count: sold_count ?? this.sold_count,
      clicked_count: clicked_count ?? this.clicked_count,
      image_group: image_group ?? this.image_group,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      small_description: small_description ?? this.small_description,
      ecom_products_variation_secondary_id:
          ecom_products_variation_secondary_id ??
              this.ecom_products_variation_secondary_id,
      family_group_id: family_group_id ?? this.family_group_id,
      recommendations: recommendations ?? this.recommendations,
      productNotification: productNotification ?? this.productNotification,
      ecom_products_filters_id:
          ecom_products_filters_id ?? this.ecom_products_filters_id,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      small_description_en: small_description_en ?? this.small_description_en,
      small_description_ar: small_description_ar ?? this.small_description_ar,
      tab_1_title_en: tab_1_title_en ?? this.tab_1_title_en,
      tab_1_title_ar: tab_1_title_ar ?? this.tab_1_title_ar,
      tab_1_content_en: tab_1_content_en ?? this.tab_1_content_en,
      tab_1_content_ar: tab_1_content_ar ?? this.tab_1_content_ar,
      tab_2_title_en: tab_2_title_en ?? this.tab_2_title_en,
      tab_2_title_ar: tab_2_title_ar ?? this.tab_2_title_ar,
      tab_2_content_en: tab_2_content_en ?? this.tab_2_content_en,
      tab_2_content_ar: tab_2_content_ar ?? this.tab_2_content_ar,
      tab_3_title_en: tab_3_title_en ?? this.tab_3_title_en,
      tab_3_title_ar: tab_3_title_ar ?? this.tab_3_title_ar,
      tab_3_content_en: tab_3_content_en ?? this.tab_3_content_en,
      tab_3_content_ar: tab_3_content_ar ?? this.tab_3_content_ar,
      tab_4_title_en: tab_4_title_en ?? this.tab_4_title_en,
      tab_4_title_ar: tab_4_title_ar ?? this.tab_4_title_ar,
      tab_4_content_en: tab_4_content_en ?? this.tab_4_content_en,
      tab_4_content_ar: tab_4_content_ar ?? this.tab_4_content_ar,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      small_description_fr: small_description_fr ?? this.small_description_fr,
      tab_1_title_fr: tab_1_title_fr ?? this.tab_1_title_fr,
      tab_1_content_fr: tab_1_content_fr ?? this.tab_1_content_fr,
      tab_2_title_fr: tab_2_title_fr ?? this.tab_2_title_fr,
      tab_2_content_fr: tab_2_content_fr ?? this.tab_2_content_fr,
      tab_3_title_fr: tab_3_title_fr ?? this.tab_3_title_fr,
      tab_3_content_fr: tab_3_content_fr ?? this.tab_3_content_fr,
      tab_4_title_fr: tab_4_title_fr ?? this.tab_4_title_fr,
      tab_4_content_fr: tab_4_content_fr ?? this.tab_4_content_fr,
      label_fr: label_fr ?? this.label_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      no_listing: no_listing ?? this.no_listing,
      preorder_available: preorder_available ?? this.preorder_available,
      price: price ?? this.price,
      unit_price_formatted: unit_price_formatted ?? this.unit_price_formatted,
      unit_price_beforediscount_formatted:
          unit_price_beforediscount_formatted ??
              this.unit_price_beforediscount_formatted,
      thumb: thumb ?? this.thumb,
      image: image ?? this.image,
      customization: customization ?? this.customization,
      variation_primary: variation_primary ?? this.variation_primary,
      variation_secondary: variation_secondary ?? this.variation_secondary,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'recommended_ecom_products_id': recommended_ecom_products_id
          .map((DataProduct x) => x.toMap())
          .toList(),
      'ecom_products_tags':
          ecom_products_tags.map((EcomProductsTags x) => x.toMap()).toList(),
      'load_adjuster':
          load_adjuster.map((LoadAdjuster x) => x.toMap()).toList(),
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'orders': orders,
      'display': display,
      'display_badge': display_badge,
      'label': label,
      'sku': sku,
      'stock_quantity': stock_quantity,
      'ecom_stores_id': ecom_stores_id,
      'keywords': keywords,
      'extension_image': extension_image,
      'alt_image': alt_image,
      'gallery': gallery,
      'price_ttc': price_ttc,
      // 'price_shelf': price_shelf,
      'discount': discount,
      'cost': cost,
      'cost_currency': cost_currency,
      'weight': weight,
      'length': length,
      'width': width,
      'depth': depth,
      'variation_primary_label': variation_primary_label,
      'ecom_products_variation_primary_id': ecom_products_variation_primary_id,
      'variation_secondary_label': variation_secondary_label,
      'tab_1_title': tab_1_title,
      'tab_1_display': tab_1_display,
      'tab_1_content': tab_1_content,
      'tab_2_title': tab_2_title,
      'tab_2_display': tab_2_display,
      'tab_2_content': tab_2_content,
      'tab_3_title': tab_3_title,
      'tab_3_display': tab_3_display,
      'tab_3_content': tab_3_content,
      'tab_4_title': tab_4_title,
      'tab_4_display': tab_4_display,
      'tab_4_content': tab_4_content,
      'sold_count': sold_count,
      'clicked_count': clicked_count,
      'image_group': image_group,
      'cms_attributes': cms_attributes,
      'small_description': small_description,
      'ecom_products_variation_secondary_id':
          ecom_products_variation_secondary_id,
      'family_group_id': family_group_id,
      'recommendations': recommendations.toMap(),
      'productNotification': productNotification.toMap(),
      'ecom_products_filters_id': ecom_products_filters_id,
      'ecom_subcategories_id': ecom_subcategories_id,
      'small_description_en': small_description_en,
      'small_description_ar': small_description_ar,
      'tab_1_title_en': tab_1_title_en,
      'tab_1_title_ar': tab_1_title_ar,
      'tab_1_content_en': tab_1_content_en,
      'tab_1_content_ar': tab_1_content_ar,
      'tab_2_title_en': tab_2_title_en,
      'tab_2_title_ar': tab_2_title_ar,
      'tab_2_content_en': tab_2_content_en,
      'tab_2_content_ar': tab_2_content_ar,
      'tab_3_title_en': tab_3_title_en,
      'tab_3_title_ar': tab_3_title_ar,
      'tab_3_content_en': tab_3_content_en,
      'tab_3_content_ar': tab_3_content_ar,
      'tab_4_title_en': tab_4_title_en,
      'tab_4_title_ar': tab_4_title_ar,
      'tab_4_content_en': tab_4_content_en,
      'tab_4_content_ar': tab_4_content_ar,
      'label_en': label_en,
      'label_ar': label_ar,
      'small_description_fr': small_description_fr,
      'tab_1_title_fr': tab_1_title_fr,
      'tab_1_content_fr': tab_1_content_fr,
      'tab_2_title_fr': tab_2_title_fr,
      'tab_2_content_fr': tab_2_content_fr,
      'tab_3_title_fr': tab_3_title_fr,
      'tab_3_content_fr': tab_3_content_fr,
      'tab_4_title_fr': tab_4_title_fr,
      'tab_4_content_fr': tab_4_content_fr,
      'label_fr': label_fr,
      'seo_attributes': seo_attributes,
      'no_listing': no_listing,
      'preorder_available': preorder_available,
      'price': price,
      'unit_price_formatted': unit_price_formatted,
      'unit_price_beforediscount_formatted':
          unit_price_beforediscount_formatted,
      'thumb': thumb,
      'image': image,
      'customization': customization.map((x) => x.toMap()).toList(),
      'variation_primary': variation_primary,
      'variation_secondary': variation_secondary,
    };
  }

  factory DataProduct.fromMap(Map<String, dynamic> map) {
    return DataProduct(
      id: map['id']?.toInt() ?? 0,
      recommended_ecom_products_id:
          List<DataProduct>.from(map['recommended_ecom_products_id']?.map((x) {
                return x.runtimeType != String
                    ? DataProduct.fromMap(x)
                    : DataProduct.fromMap({});
              }) ??
              []),
      ecom_products_tags: List<EcomProductsTags>.from(
        map['ecom_products_tags']?.map((x) => EcomProductsTags.fromMap(x)) ??
            [],
      ),
      load_adjuster: map['load_adjuster'] != false
          ? List<LoadAdjuster>.from(
              map['load_adjuster']?.map((x) => LoadAdjuster.fromMap(x)) ?? [],
            )
          : [],
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      display_badge: map['display_badge']?.toInt() ?? 0,
      label: map['label'] ?? '',
      sku: map['sku'] ?? '',
      stock_quantity: map['stock_quantity']?.toInt() ?? 0,
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      keywords: List<String>.from(map['keywords'] ?? const []),
      extension_image: map['extension_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      alt_image: map['alt_image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      gallery: List<Gallery>.from(
        map['gallery']?.map((x) => Gallery.fromMap(x)) ?? [],
      ),
      price_ttc: map['price_ttc']?.toDouble() ?? 0.0,
      // price_shelf: map['price_shelf'].runtimeType == String
      //     ? map['price_shelf'] ?? ''
      //     : jsonEncode(
      //         map['price_shelf'] ?? 0,
      //       ),
      discount: map['discount']?.toInt() ?? 0,
      cost: map['cost'].runtimeType != String
          ? jsonEncode(map['cost'] ?? 0)
          : map['cost'],
      cost_currency: map['cost_currency'] ?? '',
      weight: map['weight']?.toInt() ?? 0,
      length: map['length']?.toInt() ?? 0,
      width: map['width']?.toInt() ?? 0,
      depth: map['depth']?.toInt() ?? 0,
      variation_primary_label: map['variation_primary_label'] ?? '',
      ecom_products_variation_primary_id:
          map['ecom_products_variation_primary_id'] ?? '',
      variation_secondary_label: map['variation_secondary_label'] ?? '',
      tab_1_title: map['tab_1_title'] ?? '',
      tab_1_display: map['tab_1_display']?.toInt() ?? 0,
      tab_1_content: map['tab_1_content'] ?? '',
      tab_2_title: map['tab_2_title'] ?? '',
      tab_2_display: map['tab_2_display']?.toInt() ?? 0,
      tab_2_content: map['tab_2_content'] ?? '',
      tab_3_title: map['tab_3_title'] ?? '',
      tab_3_display: map['tab_3_display']?.toInt() ?? 0,
      tab_3_content: map['tab_3_content'] ?? '',
      tab_4_title: map['tab_4_title'] ?? '',
      tab_4_display: map['tab_4_display']?.toInt() ?? 0,
      tab_4_content: map['tab_4_content'] ?? '',
      sold_count: map['sold_count'] ?? '',
      clicked_count: map['clicked_count'] ?? '',
      image_group: map['image_group'] ?? '',
      cms_attributes: map['cms_attributes'].runtimeType != String
          ? jsonEncode(map['cms_attributes'] ?? {})
          : map['cms_attributes'] ?? '',
      small_description: map['small_description'] ?? '',
      ecom_products_variation_secondary_id:
          map['ecom_products_variation_secondary_id'] ?? '',
      family_group_id: map['family_group_id'] ?? '',
      recommendations: Recommendations.fromMap(
        map['recommendations'] ?? Recommendations().toMap(),
      ),
      productNotification: ProductNotification.fromMap(
        map['productNotification'].runtimeType == bool
            ? {}
            : map['productNotification'] ?? {},
      ),
      ecom_products_filters_id: map['ecom_products_filters_id'] ?? '',
      ecom_subcategories_id: map['ecom_subcategories_id']?.toInt() ?? 0,
      small_description_en: map['small_description_en'] ?? '',
      small_description_ar: map['small_description_ar'] ?? '',
      tab_1_title_en: map['tab_1_title_en'] ?? '',
      tab_1_title_ar: map['tab_1_title_ar'] ?? '',
      tab_1_content_en: map['tab_1_content_en'] ?? '',
      tab_1_content_ar: map['tab_1_content_ar'] ?? '',
      tab_2_title_en: map['tab_2_title_en'] ?? '',
      tab_2_title_ar: map['tab_2_title_ar'] ?? '',
      tab_2_content_en: map['tab_2_content_en'] ?? '',
      tab_2_content_ar: map['tab_2_content_ar'] ?? '',
      tab_3_title_en: map['tab_3_title_en'] ?? '',
      tab_3_title_ar: map['tab_3_title_ar'] ?? '',
      tab_3_content_en: map['tab_3_content_en'] ?? '',
      tab_3_content_ar: map['tab_3_content_ar'] ?? '',
      tab_4_title_en: map['tab_4_title_en'] ?? '',
      tab_4_title_ar: map['tab_4_title_ar'] ?? '',
      tab_4_content_en: map['tab_4_content_en'] ?? '',
      tab_4_content_ar: map['tab_4_content_ar'] ?? '',
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      small_description_fr: map['small_description_fr'] ?? '',
      tab_1_title_fr: map['tab_1_title_fr'] ?? '',
      tab_1_content_fr: map['tab_1_content_fr'] ?? '',
      tab_2_title_fr: map['tab_2_title_fr'] ?? '',
      tab_2_content_fr: map['tab_2_content_fr'] ?? '',
      tab_3_title_fr: map['tab_3_title_fr'] ?? '',
      tab_3_content_fr: map['tab_3_content_fr'] ?? '',
      tab_4_title_fr: map['tab_4_title_fr'] ?? '',
      tab_4_content_fr: map['tab_4_content_fr'] ?? '',
      label_fr: map['label_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      no_listing: map['no_listing']?.toInt() ?? 0,
      preorder_available: map['preorder_available']?.toInt() ?? 0,
      price: map['price']?.toDouble() ?? 0.0,
      unit_price_formatted: map['unit_price_formatted'] ?? '',
      unit_price_beforediscount_formatted:
          map['unit_price_beforediscount_formatted'] ?? '',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      customization: map['customization'] != false
          ? List<CustomizationDataProduct>.from(map['customization']
                  ?.map((x) => CustomizationDataProduct.fromMap(x)) ??
              const [])
          : const [],
      variation_primary: map['variation_primary'] ?? '',
      variation_secondary: map['variation_secondary'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DataProduct.fromJson(String source) =>
      DataProduct.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DataProduct(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, display: $display, display_badge: $display_badge, label: $label, sku: $sku, stock_quantity: $stock_quantity, ecom_stores_id: $ecom_stores_id, keywords: $keywords, extension_image: $extension_image, alt_image: $alt_image, gallery: $gallery, price_ttc: $price_ttc, price_shelf: , discount: $discount, cost: $cost, cost_currency: $cost_currency, weight: $weight, length: $length, width: $width, depth: $depth, variation_primary_label: $variation_primary_label, ecom_products_variation_primary_id: $ecom_products_variation_primary_id, variation_secondary_label: $variation_secondary_label, tab_1_title: $tab_1_title, tab_1_display: $tab_1_display, tab_1_content: $tab_1_content, tab_2_title: $tab_2_title, tab_2_display: $tab_2_display, tab_2_content: $tab_2_content, tab_3_title: $tab_3_title, tab_3_display: $tab_3_display, tab_3_content: $tab_3_content, tab_4_title: $tab_4_title, tab_4_display: $tab_4_display, tab_4_content: $tab_4_content, sold_count: $sold_count, clicked_count: $clicked_count, image_group: $image_group, cms_attributes: $cms_attributes, small_description: $small_description, ecom_products_variation_secondary_id: $ecom_products_variation_secondary_id, family_group_id: $family_group_id, recommendations: $recommendations, ecom_products_filters_id: $ecom_products_filters_id, ecom_subcategories_id: $ecom_subcategories_id, small_description_en: $small_description_en, small_description_ar: $small_description_ar, tab_1_title_en: $tab_1_title_en, tab_1_title_ar: $tab_1_title_ar, tab_1_content_en: $tab_1_content_en, tab_1_content_ar: $tab_1_content_ar, tab_2_title_en: $tab_2_title_en, tab_2_title_ar: $tab_2_title_ar, tab_2_content_en: $tab_2_content_en, tab_2_content_ar: $tab_2_content_ar, tab_3_title_en: $tab_3_title_en, tab_3_title_ar: $tab_3_title_ar, tab_3_content_en: $tab_3_content_en, tab_3_content_ar: $tab_3_content_ar, tab_4_title_en: $tab_4_title_en, tab_4_title_ar: $tab_4_title_ar, tab_4_content_en: $tab_4_content_en, tab_4_content_ar: $tab_4_content_ar, label_en: $label_en, label_ar: $label_ar, small_description_fr: $small_description_fr, tab_1_title_fr: $tab_1_title_fr, tab_1_content_fr: $tab_1_content_fr, tab_2_title_fr: $tab_2_title_fr, tab_2_content_fr: $tab_2_content_fr, tab_3_title_fr: $tab_3_title_fr, tab_3_content_fr: $tab_3_content_fr, tab_4_title_fr: $tab_4_title_fr, tab_4_content_fr: $tab_4_content_fr, label_fr: $label_fr, seo_attributes: $seo_attributes, no_listing: $no_listing, price: $price, unit_price_formatted: $unit_price_formatted, unit_price_beforediscount_formatted: $unit_price_beforediscount_formatted, thumb: $thumb, image: $image, customization: $customization, variation_primary: $variation_primary, variation_secondary: $variation_secondary)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataProduct &&
        other.id == id &&
        other.created_at == created_at &&
        listEquals(
          other.recommended_ecom_products_id,
          recommended_ecom_products_id,
        ) &&
        listEquals(other.ecom_products_tags, ecom_products_tags) &&
        listEquals(other.load_adjuster, load_adjuster) &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.display == display &&
        other.display_badge == display_badge &&
        other.label == label &&
        other.sku == sku &&
        other.stock_quantity == stock_quantity &&
        other.ecom_stores_id == ecom_stores_id &&
        listEquals(other.keywords, keywords) &&
        other.extension_image == extension_image &&
        other.alt_image == alt_image &&
        listEquals(other.gallery, gallery) &&
        other.price_ttc == price_ttc &&
        // other.price_shelf == price_shelf &&
        other.discount == discount &&
        other.cost == cost &&
        other.cost_currency == cost_currency &&
        other.weight == weight &&
        other.length == length &&
        other.width == width &&
        other.depth == depth &&
        other.variation_primary_label == variation_primary_label &&
        other.ecom_products_variation_primary_id ==
            ecom_products_variation_primary_id &&
        other.variation_secondary_label == variation_secondary_label &&
        other.tab_1_title == tab_1_title &&
        other.tab_1_display == tab_1_display &&
        other.tab_1_content == tab_1_content &&
        other.tab_2_title == tab_2_title &&
        other.tab_2_display == tab_2_display &&
        other.tab_2_content == tab_2_content &&
        other.tab_3_title == tab_3_title &&
        other.tab_3_display == tab_3_display &&
        other.tab_3_content == tab_3_content &&
        other.tab_4_title == tab_4_title &&
        other.tab_4_display == tab_4_display &&
        other.tab_4_content == tab_4_content &&
        other.sold_count == sold_count &&
        other.clicked_count == clicked_count &&
        other.image_group == image_group &&
        other.cms_attributes == cms_attributes &&
        other.small_description == small_description &&
        other.ecom_products_variation_secondary_id ==
            ecom_products_variation_secondary_id &&
        other.family_group_id == family_group_id &&
        other.recommendations == recommendations &&
        other.productNotification == productNotification &&
        other.ecom_products_filters_id == ecom_products_filters_id &&
        other.ecom_subcategories_id == ecom_subcategories_id &&
        other.small_description_en == small_description_en &&
        other.small_description_ar == small_description_ar &&
        other.tab_1_title_en == tab_1_title_en &&
        other.tab_1_title_ar == tab_1_title_ar &&
        other.tab_1_content_en == tab_1_content_en &&
        other.tab_1_content_ar == tab_1_content_ar &&
        other.tab_2_title_en == tab_2_title_en &&
        other.tab_2_title_ar == tab_2_title_ar &&
        other.tab_2_content_en == tab_2_content_en &&
        other.tab_2_content_ar == tab_2_content_ar &&
        other.tab_3_title_en == tab_3_title_en &&
        other.tab_3_title_ar == tab_3_title_ar &&
        other.tab_3_content_en == tab_3_content_en &&
        other.tab_3_content_ar == tab_3_content_ar &&
        other.tab_4_title_en == tab_4_title_en &&
        other.tab_4_title_ar == tab_4_title_ar &&
        other.tab_4_content_en == tab_4_content_en &&
        other.tab_4_content_ar == tab_4_content_ar &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.small_description_fr == small_description_fr &&
        other.tab_1_title_fr == tab_1_title_fr &&
        other.tab_1_content_fr == tab_1_content_fr &&
        other.tab_2_title_fr == tab_2_title_fr &&
        other.tab_2_content_fr == tab_2_content_fr &&
        other.tab_3_title_fr == tab_3_title_fr &&
        other.tab_3_content_fr == tab_3_content_fr &&
        other.tab_4_title_fr == tab_4_title_fr &&
        other.tab_4_content_fr == tab_4_content_fr &&
        other.label_fr == label_fr &&
        other.seo_attributes == seo_attributes &&
        other.no_listing == no_listing &&
        other.preorder_available == preorder_available &&
        other.price == price &&
        other.unit_price_formatted == unit_price_formatted &&
        other.unit_price_beforediscount_formatted ==
            unit_price_beforediscount_formatted &&
        other.thumb == thumb &&
        other.image == image &&
        listEquals(other.customization, customization) &&
        other.variation_primary == variation_primary &&
        other.variation_secondary == variation_secondary;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        ecom_products_tags.hashCode ^
        load_adjuster.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        deleted_at.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        version.hashCode ^
        orders.hashCode ^
        display.hashCode ^
        display_badge.hashCode ^
        label.hashCode ^
        sku.hashCode ^
        stock_quantity.hashCode ^
        ecom_stores_id.hashCode ^
        keywords.hashCode ^
        extension_image.hashCode ^
        alt_image.hashCode ^
        gallery.hashCode ^
        price_ttc.hashCode ^
        // price_shelf.hashCode ^
        discount.hashCode ^
        cost.hashCode ^
        cost_currency.hashCode ^
        weight.hashCode ^
        length.hashCode ^
        width.hashCode ^
        depth.hashCode ^
        variation_primary_label.hashCode ^
        ecom_products_variation_primary_id.hashCode ^
        variation_secondary_label.hashCode ^
        tab_1_title.hashCode ^
        tab_1_display.hashCode ^
        tab_1_content.hashCode ^
        tab_2_title.hashCode ^
        tab_2_display.hashCode ^
        tab_2_content.hashCode ^
        tab_3_title.hashCode ^
        tab_3_display.hashCode ^
        tab_3_content.hashCode ^
        tab_4_title.hashCode ^
        tab_4_display.hashCode ^
        tab_4_content.hashCode ^
        sold_count.hashCode ^
        clicked_count.hashCode ^
        image_group.hashCode ^
        cms_attributes.hashCode ^
        small_description.hashCode ^
        ecom_products_variation_secondary_id.hashCode ^
        family_group_id.hashCode ^
        recommendations.hashCode ^
        productNotification.hashCode ^
        ecom_products_filters_id.hashCode ^
        ecom_subcategories_id.hashCode ^
        small_description_en.hashCode ^
        small_description_ar.hashCode ^
        tab_1_title_en.hashCode ^
        tab_1_title_ar.hashCode ^
        tab_1_content_en.hashCode ^
        tab_1_content_ar.hashCode ^
        tab_2_title_en.hashCode ^
        tab_2_title_ar.hashCode ^
        tab_2_content_en.hashCode ^
        tab_2_content_ar.hashCode ^
        tab_3_title_en.hashCode ^
        tab_3_title_ar.hashCode ^
        tab_3_content_en.hashCode ^
        tab_3_content_ar.hashCode ^
        tab_4_title_en.hashCode ^
        tab_4_title_ar.hashCode ^
        tab_4_content_en.hashCode ^
        tab_4_content_ar.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        small_description_fr.hashCode ^
        tab_1_title_fr.hashCode ^
        tab_1_content_fr.hashCode ^
        tab_2_title_fr.hashCode ^
        tab_2_content_fr.hashCode ^
        tab_3_title_fr.hashCode ^
        tab_3_content_fr.hashCode ^
        tab_4_title_fr.hashCode ^
        tab_4_content_fr.hashCode ^
        recommended_ecom_products_id.hashCode ^
        label_fr.hashCode ^
        seo_attributes.hashCode ^
        no_listing.hashCode ^
        preorder_available.hashCode ^
        price.hashCode ^
        unit_price_formatted.hashCode ^
        unit_price_beforediscount_formatted.hashCode ^
        thumb.hashCode ^
        image.hashCode ^
        customization.hashCode ^
        variation_primary.hashCode ^
        variation_secondary.hashCode;
  }
}

class ProductNotification {
  final String type;
  final String description;
  ProductNotification({
    this.type = '',
    this.description = '',
  });

  ProductNotification copyWith({
    String? type,
    String? description,
  }) {
    return ProductNotification(
      type: type ?? this.type,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'description': description,
    };
  }

  factory ProductNotification.fromMap(Map<String, dynamic> map) {
    return ProductNotification(
      type: map['type'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductNotification.fromJson(String source) =>
      ProductNotification.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProductNotification(type: $type, description: $description)';
}

class CustomizationDataProduct {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int orders;
  final int display;
  final String price;
  final String label;
  final int note_available;
  final int note_available_is_optional;
  final String note_available_title;
  final List<String> keywords;
  final Cms_attributes cms_attributes;
  final String label_en;
  final String label_ar;
  final String note_available_title_en;
  final String note_available_title_ar;
  final String label_fr;
  final String note_available_title_fr;
  final String seo_attributes;
  CustomizationDataProduct({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.orders = 0,
    this.display = 0,
    this.price = '',
    this.label = '',
    this.note_available = 0,
    this.note_available_is_optional = 0,
    this.note_available_title = '',
    this.keywords = const [],
    required this.cms_attributes,
    this.label_en = '',
    this.label_ar = '',
    this.note_available_title_en = '',
    this.note_available_title_ar = '',
    this.label_fr = '',
    this.note_available_title_fr = '',
    this.seo_attributes = '',
  });

  CustomizationDataProduct copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? orders,
    int? display,
    String? price,
    String? label,
    int? note_available,
    int? note_available_is_optional,
    String? note_available_title,
    List<String>? keywords,
    Cms_attributes? cms_attributes,
    String? label_en,
    String? label_ar,
    String? note_available_title_en,
    String? note_available_title_ar,
    String? label_fr,
    String? note_available_title_fr,
    String? seo_attributes,
  }) {
    return CustomizationDataProduct(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      orders: orders ?? this.orders,
      display: display ?? this.display,
      price: price ?? this.price,
      label: label ?? this.label,
      note_available: note_available ?? this.note_available,
      note_available_is_optional:
          note_available_is_optional ?? this.note_available_is_optional,
      note_available_title: note_available_title ?? this.note_available_title,
      keywords: keywords ?? this.keywords,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      note_available_title_en:
          note_available_title_en ?? this.note_available_title_en,
      note_available_title_ar:
          note_available_title_ar ?? this.note_available_title_ar,
      label_fr: label_fr ?? this.label_fr,
      note_available_title_fr:
          note_available_title_fr ?? this.note_available_title_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'orders': orders,
      'display': display,
      'price': price,
      'label': label,
      'note_available': note_available,
      'note_available_is_optional': note_available_is_optional,
      'note_available_title': note_available_title,
      'keywords': keywords,
      'cms_attributes': cms_attributes.toMap(),
      'label_en': label_en,
      'label_ar': label_ar,
      'note_available_title_en': note_available_title_en,
      'note_available_title_ar': note_available_title_ar,
      'label_fr': label_fr,
      'note_available_title_fr': note_available_title_fr,
      'seo_attributes': seo_attributes,
    };
  }

  factory CustomizationDataProduct.fromMap(Map<String, dynamic> map) {
    return CustomizationDataProduct(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      orders: map['orders']?.toInt() ?? 0,
      display: map['display']?.toInt() ?? 0,
      price: map['price'] ?? '',
      label: map['label'] ?? '',
      note_available: map['note_available']?.toInt() ?? 0,
      note_available_is_optional:
          map['note_available_is_optional']?.toInt() ?? 0,
      note_available_title: map['note_available_title'] ?? '',
      keywords: List<String>.from(map['keywords'] ?? const []),
      cms_attributes: Cms_attributes.fromMap(map['cms_attributes'] ?? {}),
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      note_available_title_en: map['note_available_title_en'] ?? '',
      note_available_title_ar: map['note_available_title_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      note_available_title_fr: map['note_available_title_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomizationDataProduct.fromJson(String source) =>
      CustomizationDataProduct.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Customization(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, orders: $orders, display: $display, price: $price, label: $label, note_available: $note_available, note_available_is_optional: $note_available_is_optional, note_available_title: $note_available_title, keywords: $keywords, cms_attributes: $cms_attributes, label_en: $label_en, label_ar: $label_ar, note_available_title_en: $note_available_title_en, note_available_title_ar: $note_available_title_ar, label_fr: $label_fr, note_available_title_fr: $note_available_title_fr, seo_attributes: $seo_attributes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomizationDataProduct &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.orders == orders &&
        other.display == display &&
        other.price == price &&
        other.label == label &&
        other.note_available == note_available &&
        other.note_available_is_optional == note_available_is_optional &&
        other.note_available_title == note_available_title &&
        listEquals(other.keywords, keywords) &&
        other.cms_attributes == cms_attributes &&
        other.label_en == label_en &&
        other.label_ar == label_ar &&
        other.note_available_title_en == note_available_title_en &&
        other.note_available_title_ar == note_available_title_ar &&
        other.label_fr == label_fr &&
        other.note_available_title_fr == note_available_title_fr &&
        other.seo_attributes == seo_attributes;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        deleted_at.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        version.hashCode ^
        orders.hashCode ^
        display.hashCode ^
        price.hashCode ^
        label.hashCode ^
        note_available.hashCode ^
        note_available_is_optional.hashCode ^
        note_available_title.hashCode ^
        keywords.hashCode ^
        cms_attributes.hashCode ^
        label_en.hashCode ^
        label_ar.hashCode ^
        note_available_title_en.hashCode ^
        note_available_title_ar.hashCode ^
        label_fr.hashCode ^
        note_available_title_fr.hashCode ^
        seo_attributes.hashCode;
  }
}

class Cms_attributes {
  final String created_at;
  final String updated_at;
  final int version;
  Cms_attributes({
    this.created_at = '',
    this.updated_at = '',
    this.version = 0,
  });

  Cms_attributes copyWith({
    String? created_at,
    String? updated_at,
    int? version,
  }) {
    return Cms_attributes(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created_at': created_at,
      'updated_at': updated_at,
      'version': version,
    };
  }

  factory Cms_attributes.fromMap(Map<String, dynamic> map) {
    return Cms_attributes(
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      version: map['version']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cms_attributes.fromJson(String source) =>
      Cms_attributes.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cms_attributes(created_at: $created_at, updated_at: $updated_at, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cms_attributes &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.version == version;
  }

  @override
  int get hashCode =>
      created_at.hashCode ^ updated_at.hashCode ^ version.hashCode;
}

class Gallery {
  final String image;
  final String thumb;
  Gallery({
    this.image = 'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    this.thumb = '',
  });

  Gallery copyWith({
    String? image,
    String? thumb,
  }) {
    return Gallery(
      image: image ?? this.image,
      thumb: thumb ?? this.thumb,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'thumb': thumb,
    };
  }

  factory Gallery.fromMap(Map<String, dynamic> map) {
    return Gallery(
      image: map['image'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
      thumb: map['thumb'] ??
          'https://cms.patchi.com/storage/data/cms_settings/1.jpg?v=1',
    );
  }

  String toJson() => json.encode(toMap());

  factory Gallery.fromJson(String source) =>
      Gallery.fromMap(json.decode(source));

  @override
  String toString() => 'Gallery(image: $image, thumb: $thumb)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Gallery && other.image == image && other.thumb == thumb;
  }

  @override
  int get hashCode => image.hashCode ^ thumb.hashCode;
}

class LinkProduct {
  final String url;
  final String label;
  final bool active;
  LinkProduct({
    this.url = '',
    this.label = '',
    this.active = false,
  });

  LinkProduct copyWith({
    String? url,
    String? label,
    bool? active,
  }) {
    return LinkProduct(
      url: url ?? this.url,
      label: label ?? this.label,
      active: active ?? this.active,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'label': label,
      'active': active,
    };
  }

  factory LinkProduct.fromMap(Map<String, dynamic> map) {
    return LinkProduct(
      url: map['url'] ?? '',
      label: map['label'] ?? '',
      active: map['active'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory LinkProduct.fromJson(String source) =>
      LinkProduct.fromMap(json.decode(source));

  @override
  String toString() => 'Link(url: $url, label: $label, active: $active)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LinkProduct &&
        other.url == url &&
        other.label == label &&
        other.active == active;
  }

  @override
  int get hashCode => url.hashCode ^ label.hashCode ^ active.hashCode;
}

class Request {
  final String contentLength;
  final String cookie;
  final String connection;
  final String acceptEncoding;
  final String host;
  final String postmanToken;
  final String accept;
  final String userAgent;
  final String store;
  Request({
    this.contentLength = '',
    this.cookie = '',
    this.connection = '',
    this.acceptEncoding = '',
    this.host = '',
    this.postmanToken = '',
    this.accept = '',
    this.userAgent = '',
    this.store = '',
  });

  Request copyWith({
    String? contentLength,
    String? cookie,
    String? connection,
    String? acceptEncoding,
    String? host,
    String? postmanToken,
    String? accept,
    String? userAgent,
    String? store,
  }) {
    return Request(
      contentLength: contentLength ?? this.contentLength,
      cookie: cookie ?? this.cookie,
      connection: connection ?? this.connection,
      acceptEncoding: acceptEncoding ?? this.acceptEncoding,
      host: host ?? this.host,
      postmanToken: postmanToken ?? this.postmanToken,
      accept: accept ?? this.accept,
      userAgent: userAgent ?? this.userAgent,
      store: store ?? this.store,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'content-length': contentLength,
      'cookie': cookie,
      'connection': connection,
      'accept-encoding': acceptEncoding,
      'host': host,
      'postman-token': postmanToken,
      'accept': accept,
      'user-agent': userAgent,
      'store': store,
    };
  }

  factory Request.fromMap(Map<String, dynamic> map) {
    return Request(
      contentLength: map['content-length'] ?? '',
      cookie: map['cookie'] ?? '',
      connection: map['connection'] ?? '',
      acceptEncoding: map['accept-encoding'] ?? '',
      host: map['host'] ?? '',
      postmanToken: map['postman-token'] ?? '',
      accept: map['accept'] ?? '',
      userAgent: map['user-agent'] ?? '',
      store: jsonEncode(map['store'] ?? ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory Request.fromJson(String source) =>
      Request.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Request(contentLength: $contentLength, cookie: $cookie, connection: $connection, acceptEncoding: $acceptEncoding, host: $host, postmanToken: $postmanToken, accept: $accept, userAgent: $userAgent, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Request &&
        other.contentLength == contentLength &&
        other.cookie == cookie &&
        other.connection == connection &&
        other.acceptEncoding == acceptEncoding &&
        other.host == host &&
        other.postmanToken == postmanToken &&
        other.accept == accept &&
        other.userAgent == userAgent &&
        other.store == store;
  }

  @override
  int get hashCode {
    return contentLength.hashCode ^
        cookie.hashCode ^
        connection.hashCode ^
        acceptEncoding.hashCode ^
        host.hashCode ^
        postmanToken.hashCode ^
        accept.hashCode ^
        userAgent.hashCode ^
        store.hashCode;
  }
}

class UserInfo {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final int verified;
  final String first_name;
  final String last_name;
  final String email;
  final String phone;
  final int countries_id;
  final String token;
  final String ecom_currencies_id;
  final String failed_logins;
  final String failed_login_at;
  final String verified_at;
  final String password;
  final String phone_country_code;
  final String phone_original;
  final String gender;
  final String birthdate;
  final String cms_attributes;
  final String pin;
  UserInfo({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.verified = 0,
    this.first_name = '',
    this.last_name = '',
    this.email = '',
    this.phone = '',
    this.countries_id = 0,
    this.token = '',
    this.ecom_currencies_id = '',
    this.failed_logins = '',
    this.failed_login_at = '',
    this.verified_at = '',
    this.password = '',
    this.phone_country_code = '',
    this.phone_original = '',
    this.gender = '',
    this.birthdate = '',
    this.cms_attributes = '',
    this.pin = '',
  });

  UserInfo copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    int? verified,
    String? first_name,
    String? last_name,
    String? email,
    String? phone,
    int? countries_id,
    String? token,
    String? ecom_currencies_id,
    String? failed_logins,
    String? failed_login_at,
    String? verified_at,
    String? password,
    String? phone_country_code,
    String? phone_original,
    String? gender,
    String? birthdate,
    String? cms_attributes,
    String? pin,
  }) {
    return UserInfo(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      verified: verified ?? this.verified,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      countries_id: countries_id ?? this.countries_id,
      token: token ?? this.token,
      ecom_currencies_id: ecom_currencies_id ?? this.ecom_currencies_id,
      failed_logins: failed_logins ?? this.failed_logins,
      failed_login_at: failed_login_at ?? this.failed_login_at,
      verified_at: verified_at ?? this.verified_at,
      password: password ?? this.password,
      phone_country_code: phone_country_code ?? this.phone_country_code,
      phone_original: phone_original ?? this.phone_original,
      gender: gender ?? this.gender,
      birthdate: birthdate ?? this.birthdate,
      cms_attributes: cms_attributes ?? this.cms_attributes,
      pin: pin ?? this.pin,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'verified': verified,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'phone': phone,
      'countries_id': countries_id,
      'token': token,
      'ecom_currencies_id': ecom_currencies_id,
      'failed_logins': failed_logins,
      'failed_login_at': failed_login_at,
      'verified_at': verified_at,
      'password': password,
      'phone_country_code': phone_country_code,
      'phone_original': phone_original,
      'gender': gender,
      'birthdate': birthdate,
      'cms_attributes': cms_attributes,
      'pin': pin,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      verified: map['verified']?.toInt() ?? 0,
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      countries_id: map['countries_id']?.toInt() ?? 0,
      token: map['token'] ?? '',
      ecom_currencies_id: map['ecom_currencies_id'] ?? '',
      failed_logins: map['failed_logins'] ?? '',
      failed_login_at: map['failed_login_at'] ?? '',
      verified_at: map['verified_at'] ?? '',
      password: map['password'] ?? '',
      phone_country_code: map['phone_country_code'] ?? '',
      phone_original: map['phone_original'] ?? '',
      gender: map['gender'] ?? '',
      birthdate: map['birthdate'] ?? '',
      cms_attributes: map['cms_attributes'] ?? '',
      pin: map['pin'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfo.fromJson(String source) =>
      UserInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserInfo(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, verified: $verified, first_name: $first_name, last_name: $last_name, email: $email, phone: $phone, countries_id: $countries_id, token: $token, ecom_currencies_id: $ecom_currencies_id, failed_logins: $failed_logins, failed_login_at: $failed_login_at, verified_at: $verified_at, password: $password, phone_country_code: $phone_country_code, phone_original: $phone_original, gender: $gender, birthdate: $birthdate, cms_attributes: $cms_attributes, pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserInfo &&
        other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.locked == locked &&
        other.cancelled == cancelled &&
        other.version == version &&
        other.verified == verified &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email &&
        other.phone == phone &&
        other.countries_id == countries_id &&
        other.token == token &&
        other.ecom_currencies_id == ecom_currencies_id &&
        other.failed_logins == failed_logins &&
        other.failed_login_at == failed_login_at &&
        other.verified_at == verified_at &&
        other.password == password &&
        other.phone_country_code == phone_country_code &&
        other.phone_original == phone_original &&
        other.gender == gender &&
        other.birthdate == birthdate &&
        other.cms_attributes == cms_attributes &&
        other.pin == pin;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        deleted_at.hashCode ^
        locked.hashCode ^
        cancelled.hashCode ^
        version.hashCode ^
        verified.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        countries_id.hashCode ^
        token.hashCode ^
        ecom_currencies_id.hashCode ^
        failed_logins.hashCode ^
        failed_login_at.hashCode ^
        verified_at.hashCode ^
        password.hashCode ^
        phone_country_code.hashCode ^
        phone_original.hashCode ^
        gender.hashCode ^
        birthdate.hashCode ^
        cms_attributes.hashCode ^
        pin.hashCode;
  }
}

class PriceRangeFilter {
  final Price price;
  PriceRangeFilter({
    required this.price,
  });

  PriceRangeFilter copyWith({
    Price? price,
  }) {
    return PriceRangeFilter(
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'price': price.toMap(),
    };
  }

  factory PriceRangeFilter.fromMap(Map<String, dynamic> map) {
    return PriceRangeFilter(
      price: Price.fromMap(map['price']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PriceRangeFilter.fromJson(String source) =>
      PriceRangeFilter.fromMap(json.decode(source));

  @override
  String toString() => 'PriceRangeFilter(price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PriceRangeFilter && other.price == price;
  }

  @override
  int get hashCode => price.hashCode;
}

class Price {
  final double min;
  final double max;
  final Currency currency;
  Price({
    this.min = 0.0,
    this.max = 0.0,
    required this.currency,
  });

  Price copyWith({
    double? min,
    double? max,
    Currency? currency,
  }) {
    return Price(
      min: min ?? this.min,
      max: max ?? this.max,
      currency: currency ?? this.currency,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'min': min,
      'max': max,
      'currency': currency.toMap(),
    };
  }

  factory Price.fromMap(Map<String, dynamic> map) {
    return Price(
      min: map['min']?.toDouble() ?? 0.0,
      max: map['max']?.toDouble() ?? 0.0,
      currency: Currency.fromMap(map['currency']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Price.fromJson(String source) => Price.fromMap(json.decode(source));

  @override
  String toString() => 'Price(min: $min, max: $max, currency: $currency)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Price &&
        other.min == min &&
        other.max == max &&
        other.currency == currency;
  }

  @override
  int get hashCode => min.hashCode ^ max.hashCode ^ currency.hashCode;
}

class Recommendations {
  final List<DataProduct> also_bought;
  Recommendations({
    this.also_bought = const [],
  });

  Recommendations copyWith({
    List<DataProduct>? also_bought,
  }) {
    return Recommendations(
      also_bought: also_bought ?? this.also_bought,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'also_bought': also_bought.map((x) => x.toMap()).toList(),
    };
  }

  factory Recommendations.fromMap(Map<String, dynamic> map) {
    return Recommendations(
      also_bought: map['also_bought'].runtimeType != bool
          ? List<DataProduct>.from(
              map['also_bought']?.map((x) => DataProduct.fromMap(x)) ??
                  const [],
            )
          : const [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Recommendations.fromJson(String source) =>
      Recommendations.fromMap(json.decode(source));

  @override
  String toString() => 'Recommendations(also_bought: $also_bought)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Recommendations &&
        listEquals(other.also_bought, also_bought);
  }

  @override
  int get hashCode => also_bought.hashCode;
}

class EcomProductsTags {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String label;
  final String extension_icon;
  final String alt_icon;
  final int display;
  final String label_en;
  final String label_ar;
  final String label_fr;
  final String seo_attributes;
  final String auto_apply;
  final String bg_color;
  final int show_card;
  EcomProductsTags({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.label = '',
    this.extension_icon = '',
    this.alt_icon = '',
    this.display = 0,
    this.label_en = '',
    this.label_ar = '',
    this.label_fr = '',
    this.seo_attributes = '',
    this.auto_apply = '',
    this.bg_color = '',
    this.show_card = 0,
  });

  EcomProductsTags copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? label,
    String? extension_icon,
    String? alt_icon,
    int? display,
    String? label_en,
    String? label_ar,
    String? label_fr,
    String? seo_attributes,
    String? auto_apply,
    String? bg_color,
    int? show_card,
  }) {
    return EcomProductsTags(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      label: label ?? this.label,
      extension_icon: extension_icon ?? this.extension_icon,
      alt_icon: alt_icon ?? this.alt_icon,
      display: display ?? this.display,
      label_en: label_en ?? this.label_en,
      label_ar: label_ar ?? this.label_ar,
      label_fr: label_fr ?? this.label_fr,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      auto_apply: auto_apply ?? this.auto_apply,
      bg_color: bg_color ?? this.bg_color,
      show_card: show_card ?? this.show_card,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'label': label,
      'extension_icon': extension_icon,
      'alt_icon': alt_icon,
      'display': display,
      'label_en': label_en,
      'label_ar': label_ar,
      'label_fr': label_fr,
      'seo_attributes': seo_attributes,
      'auto_apply': auto_apply,
      'bg_color': bg_color,
      'show_card': show_card,
    };
  }

  factory EcomProductsTags.fromMap(Map<String, dynamic> map) {
    return EcomProductsTags(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      label: map['label'] ?? '',
      extension_icon: map['extension_icon'] ?? '',
      alt_icon: map['alt_icon'] ?? '',
      display: map['display']?.toInt() ?? 0,
      label_en: map['label_en'] ?? '',
      label_ar: map['label_ar'] ?? '',
      label_fr: map['label_fr'] ?? '',
      seo_attributes: map['seo_attributes'] ?? '',
      auto_apply: map['auto_apply'] ?? '',
      bg_color: map['bg_color'] ?? '',
      show_card: map['show_card']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory EcomProductsTags.fromJson(String source) =>
      EcomProductsTags.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EcomProductsTags(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, label: $label, extension_icon: $extension_icon, alt_icon: $alt_icon, display: $display, label_en: $label_en, label_ar: $label_ar, label_fr: $label_fr, seo_attributes: $seo_attributes, auto_apply: $auto_apply, bg_color: $bg_color, show_card: $show_card)';
  }
}

class LoadAdjuster {
  final int id;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final int locked;
  final int cancelled;
  final int version;
  final String seo_attributes;
  final List<String> ecom_products_id;
  final List<String> target_ecom_products_id;
  final int ecom_stores_id;
  final String label;
  final String ecom_keywords_id;
  final String ecom_subcategories_id;
  final int target_quantity;
  final int target_discount;
  final List<TargetEcomProducts> target_ecom_products;
  final String verbose;
  LoadAdjuster({
    this.id = 0,
    this.created_at = '',
    this.updated_at = '',
    this.deleted_at = '',
    this.locked = 0,
    this.cancelled = 0,
    this.version = 0,
    this.seo_attributes = '',
    this.ecom_products_id = const [],
    this.target_ecom_products_id = const [],
    this.ecom_stores_id = 0,
    this.label = '',
    this.ecom_keywords_id = '',
    this.ecom_subcategories_id = '',
    this.target_quantity = 0,
    this.target_discount = 0,
    this.target_ecom_products = const [],
    this.verbose = '',
  });

  LoadAdjuster copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? locked,
    int? cancelled,
    int? version,
    String? seo_attributes,
    List<String>? ecom_products_id,
    List<String>? target_ecom_products_id,
    int? ecom_stores_id,
    String? label,
    String? ecom_keywords_id,
    String? ecom_subcategories_id,
    int? target_quantity,
    int? target_discount,
    List<TargetEcomProducts>? target_ecom_products,
    String? verbose,
  }) {
    return LoadAdjuster(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      deleted_at: deleted_at ?? this.deleted_at,
      locked: locked ?? this.locked,
      cancelled: cancelled ?? this.cancelled,
      version: version ?? this.version,
      seo_attributes: seo_attributes ?? this.seo_attributes,
      ecom_products_id: ecom_products_id ?? this.ecom_products_id,
      target_ecom_products_id:
          target_ecom_products_id ?? this.target_ecom_products_id,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      label: label ?? this.label,
      ecom_keywords_id: ecom_keywords_id ?? this.ecom_keywords_id,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      target_quantity: target_quantity ?? this.target_quantity,
      target_discount: target_discount ?? this.target_discount,
      target_ecom_products: target_ecom_products ?? this.target_ecom_products,
      verbose: verbose ?? this.verbose,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'locked': locked,
      'cancelled': cancelled,
      'version': version,
      'seo_attributes': seo_attributes,
      'ecom_products_id': ecom_products_id,
      'target_ecom_products_id': target_ecom_products_id,
      'ecom_stores_id': ecom_stores_id,
      'label': label,
      'ecom_keywords_id': ecom_keywords_id,
      'ecom_subcategories_id': ecom_subcategories_id,
      'target_quantity': target_quantity,
      'target_discount': target_discount,
      'target_ecom_products': target_ecom_products
          .map((TargetEcomProducts x) => x.toMap())
          .toList(),
      'verbose': verbose,
    };
  }

  factory LoadAdjuster.fromMap(Map<String, dynamic> map) {
    return LoadAdjuster(
      id: map['id']?.toInt() ?? 0,
      created_at: map['created_at'] ?? '',
      updated_at: map['updated_at'] ?? '',
      deleted_at: map['deleted_at'] ?? '',
      locked: map['locked']?.toInt() ?? 0,
      cancelled: map['cancelled']?.toInt() ?? 0,
      version: map['version']?.toInt() ?? 0,
      seo_attributes: map['seo_attributes'] ?? '',
      ecom_products_id: List<String>.from(map['ecom_products_id']),
      target_ecom_products_id:
          List<String>.from(map['target_ecom_products_id']),
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      label: map['label'] ?? '',
      ecom_keywords_id: map['ecom_keywords_id'] ?? '',
      ecom_subcategories_id: map['ecom_subcategories_id'] ?? '',
      target_quantity: map['target_quantity']?.toInt() ?? 0,
      target_discount: map['target_discount']?.toInt() ?? 0,
      target_ecom_products: List<TargetEcomProducts>.from(
        map['target_ecom_products']
                ?.map((x) => TargetEcomProducts.fromMap(x)) ??
            [],
      ),
      // target_ecom_products: map['target_ecom_products'].runtimeType != List
      //     ? [jsonEncode(map['target_ecom_products'])]
      //     : map['target_ecom_products'],
      verbose: map['verbose'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoadAdjuster.fromJson(String source) =>
      LoadAdjuster.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LoadAdjuster(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, locked: $locked, cancelled: $cancelled, version: $version, seo_attributes: $seo_attributes, ecom_products_id: $ecom_products_id, target_ecom_products_id: $target_ecom_products_id, ecom_stores_id: $ecom_stores_id, label: $label, ecom_keywords_id: $ecom_keywords_id, ecom_subcategories_id: $ecom_subcategories_id, target_quantity: $target_quantity, target_discount: $target_discount, target_ecom_products: $target_ecom_products, verbose: $verbose)';
  }
}

class TargetEcomProducts {
  final int id;
  final String extension_image;
  final String sku;
  final double price_ttc;
  // final String price_shelf;
  final int version;
  final int stock_quantity;
  final String family_group_id;
  // final String ecom_products_tags_id;
  final int ecom_stores_id;
  final int ecom_subcategories_id;
  final String slug;
  final int digital_product;
  final String ecom_products_giftcards_id;
  final String keywords;
  final int discount;
  final String link;
  final double price;
  final String label;
  final String small_description;
  final String unit_price_formatted;
  final Unit_price_formatted_array unit_price_formatted_array;
  final String unit_price_beforediscount_formatted;
  final String thumb;
  final String image;
  final String variation_primary;
  final String variation_secondary;
  TargetEcomProducts({
    this.id = 0,
    this.extension_image = '',
    this.sku = '',
    this.price_ttc = 0.0,
    // this.price_shelf = '',
    this.version = 0,
    this.stock_quantity = 0,
    this.family_group_id = '',
    // this.ecom_products_tags_id = '',
    this.ecom_stores_id = 0,
    this.ecom_subcategories_id = 0,
    this.slug = '',
    this.digital_product = 0,
    this.ecom_products_giftcards_id = '',
    this.keywords = '',
    this.discount = 0,
    this.link = '',
    this.price = 0.0,
    this.label = '',
    this.small_description = '',
    this.unit_price_formatted = '',
    required this.unit_price_formatted_array,
    this.unit_price_beforediscount_formatted = '',
    this.thumb = '',
    this.image = '',
    this.variation_primary = '',
    this.variation_secondary = '',
  });

  TargetEcomProducts copyWith({
    int? id,
    String? extension_image,
    String? sku,
    double? price_ttc,
    // String? price_shelf,
    int? version,
    int? stock_quantity,
    String? family_group_id,
    // String? ecom_products_tags_id,
    int? ecom_stores_id,
    int? ecom_subcategories_id,
    String? slug,
    int? digital_product,
    String? ecom_products_giftcards_id,
    String? keywords,
    int? discount,
    String? link,
    double? price,
    String? label,
    String? small_description,
    String? unit_price_formatted,
    Unit_price_formatted_array? unit_price_formatted_array,
    String? unit_price_beforediscount_formatted,
    String? thumb,
    String? image,
    String? variation_primary,
    String? variation_secondary,
  }) {
    return TargetEcomProducts(
      id: id ?? this.id,
      extension_image: extension_image ?? this.extension_image,
      sku: sku ?? this.sku,
      price_ttc: price_ttc ?? this.price_ttc,
      // price_shelf: price_shelf ?? this.price_shelf,
      version: version ?? this.version,
      stock_quantity: stock_quantity ?? this.stock_quantity,
      family_group_id: family_group_id ?? this.family_group_id,
      // ecom_products_tags_id:
      //     ecom_products_tags_id ?? this.ecom_products_tags_id,
      ecom_stores_id: ecom_stores_id ?? this.ecom_stores_id,
      ecom_subcategories_id:
          ecom_subcategories_id ?? this.ecom_subcategories_id,
      slug: slug ?? this.slug,
      digital_product: digital_product ?? this.digital_product,
      ecom_products_giftcards_id:
          ecom_products_giftcards_id ?? this.ecom_products_giftcards_id,
      keywords: keywords ?? this.keywords,
      discount: discount ?? this.discount,
      link: link ?? this.link,
      price: price ?? this.price,
      label: label ?? this.label,
      small_description: small_description ?? this.small_description,
      unit_price_formatted: unit_price_formatted ?? this.unit_price_formatted,
      unit_price_formatted_array:
          unit_price_formatted_array ?? this.unit_price_formatted_array,
      unit_price_beforediscount_formatted:
          unit_price_beforediscount_formatted ??
              this.unit_price_beforediscount_formatted,
      thumb: thumb ?? this.thumb,
      image: image ?? this.image,
      variation_primary: variation_primary ?? this.variation_primary,
      variation_secondary: variation_secondary ?? this.variation_secondary,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'extension_image': extension_image,
      'sku': sku,
      'price_ttc': price_ttc,
      // 'price_shelf': price_shelf,
      'version': version,
      'stock_quantity': stock_quantity,
      'family_group_id': family_group_id,
      // 'ecom_products_tags_id': ecom_products_tags_id,
      'ecom_stores_id': ecom_stores_id,
      'ecom_subcategories_id': ecom_subcategories_id,
      'slug': slug,
      'digital_product': digital_product,
      'ecom_products_giftcards_id': ecom_products_giftcards_id,
      'keywords': keywords,
      'discount': discount,
      'link': link,
      'price': price,
      'label': label,
      'small_description': small_description,
      'unit_price_formatted': unit_price_formatted,
      'unit_price_formatted_array': unit_price_formatted_array.toMap(),
      'unit_price_beforediscount_formatted':
          unit_price_beforediscount_formatted,
      'thumb': thumb,
      'image': image,
      'variation_primary': variation_primary,
      'variation_secondary': variation_secondary,
    };
  }

  factory TargetEcomProducts.fromMap(Map<String, dynamic> map) {
    return TargetEcomProducts(
      id: map['id']?.toInt() ?? 0,
      extension_image: map['extension_image'] ?? '',
      sku: map['sku'] ?? '',
      price_ttc: map['price_ttc']?.toDouble() ?? 0.0,
      // price_shelf: map['price_shelf'] ?? '',
      version: map['version']?.toInt() ?? 0,
      stock_quantity: map['stock_quantity']?.toInt() ?? 0,
      family_group_id: map['family_group_id'] ?? '',
      // ecom_products_tags_id: map['ecom_products_tags_id'] ?? '',
      ecom_stores_id: map['ecom_stores_id']?.toInt() ?? 0,
      ecom_subcategories_id: map['ecom_subcategories_id']?.toInt() ?? 0,
      slug: map['slug'] ?? '',
      digital_product: map['digital_product']?.toInt() ?? 0,
      ecom_products_giftcards_id: map['ecom_products_giftcards_id'] ?? '',
      keywords: jsonEncode(map['keywords'] ?? ''),
      discount: map['discount']?.toInt() ?? 0,
      link: map['link'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      label: map['label'] ?? '',
      small_description: map['small_description'] ?? '',
      unit_price_formatted: map['unit_price_formatted'] ?? '',
      unit_price_formatted_array:
          Unit_price_formatted_array.fromMap(map['unit_price_formatted_array']),
      unit_price_beforediscount_formatted:
          map['unit_price_beforediscount_formatted'] ?? '',
      thumb: map['thumb'] ?? '',
      image: map['image'] ?? '',
      variation_primary: map['variation_primary'] ?? '',
      variation_secondary: map['variation_secondary'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TargetEcomProducts.fromJson(String source) =>
      TargetEcomProducts.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TargetEcomProducts(id: $id, extension_image: $extension_image, sku: $sku, price_ttc: $price_ttc, price_shelf:, version: $version, stock_quantity: $stock_quantity, family_group_id: $family_group_id, ecom_stores_id: $ecom_stores_id, ecom_subcategories_id: $ecom_subcategories_id, slug: $slug, digital_product: $digital_product, ecom_products_giftcards_id: $ecom_products_giftcards_id, keywords: $keywords, discount: $discount, link: $link, price: $price, label: $label, small_description: $small_description, unit_price_formatted: $unit_price_formatted, unit_price_formatted_array: $unit_price_formatted_array, unit_price_beforediscount_formatted: $unit_price_beforediscount_formatted, thumb: $thumb, image: $image, variation_primary: $variation_primary, variation_secondary: $variation_secondary)';
  }
}

class Unit_price_formatted_array {
  final String price;
  final double price_not_formatted;
  final String currency;
  Unit_price_formatted_array({
    this.price = '',
    this.price_not_formatted = 0.0,
    this.currency = '',
  });

  Unit_price_formatted_array copyWith({
    String? price,
    double? price_not_formatted,
    String? currency,
  }) {
    return Unit_price_formatted_array(
      price: price ?? this.price,
      price_not_formatted: price_not_formatted ?? this.price_not_formatted,
      currency: currency ?? this.currency,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'price': price,
      'price_not_formatted': price_not_formatted,
      'currency': currency,
    };
  }

  factory Unit_price_formatted_array.fromMap(Map<String, dynamic> map) {
    return Unit_price_formatted_array(
      price: map['price'] ?? '',
      price_not_formatted: map['price_not_formatted']?.toDouble() ?? 0.0,
      currency: map['currency'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Unit_price_formatted_array.fromJson(String source) =>
      Unit_price_formatted_array.fromMap(json.decode(source));

  @override
  String toString() =>
      'Unit_price_formatted_array(price: $price, price_not_formatted: $price_not_formatted, currency: $currency)';
}
