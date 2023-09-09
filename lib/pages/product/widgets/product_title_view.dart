import 'package:flutter/material.dart';
import 'package:flutter_multistore_app/data/model/products_response_model.dart';
import 'package:flutter_multistore_app/utils/color_resources.dart';
import 'package:flutter_multistore_app/utils/custom_themes.dart';
import 'package:flutter_multistore_app/utils/dimensions.dart';
import 'package:flutter_multistore_app/utils/price_ext.dart';

class ProductTitleView extends StatelessWidget {
  final Product product;
  const ProductTitleView({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  product.name!,
                  style: titleRegular.copyWith(
                    fontSize: Dimensions.fontSizeLarge,
                  ),
                  maxLines: 2,
                ),
              ),
              const SizedBox(
                width: Dimensions.paddingSizeExtraSmall,
              ),
              Column(
                children: [
                  Text(
                    '${product.price!}'.formatPrice(),
                    style: titilliumBold.copyWith(
                      color: ColorResources.getPrimary(context),
                      fontSize: Dimensions.fontSizeLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeSmall,
          ),
        ],
      ),
    );
  }
}
