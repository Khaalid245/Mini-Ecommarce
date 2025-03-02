import 'package:ecommerce_app/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: non_constant_identifier_names
Container AdsWidgetBanner() {
    return Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: KPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Apple Store',
                            style: AppTheme.KBigTitle,
                          ),
                        const Gap(8),
                          Text(
                            'Find the Apple product and accessories you are looking for',
                            style: AppTheme.KBodyText.copyWith(
                              color: KWhiteColor
                            ),
                          ),
                             const Gap(8),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: KWhiteColor,
                            foregroundColor:KSecondaryColor) ,
                            onPressed: () {},
                            child: const Text('shop new year'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset('assets/general/landing.png'),
                ],
              ),
            );
  
}
