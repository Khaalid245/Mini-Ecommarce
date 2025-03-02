import 'package:ecommerce_app/constants/themes.dart';
import 'package:ecommerce_app/widgets/ads_widget_banner.dart';
import 'package:ecommerce_app/widgets/chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KSecondaryColor,
        title: SvgPicture.asset(
          'assets/general/store_brand_white.svg',
          width: 180,
          color: KWhiteColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.local_mall),
            ),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdsWidgetBanner(),

              // Fix: Wrap ListView in SizedBox to prevent infinite height issue
              const SizedBox(height: 10),

              SizedBox(
                height: 50, // Define height for the horizontal ListView
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    ChipWidget(chipLabel: 'All'),
                    ChipWidget(chipLabel: 'Computer'),
                    ChipWidget(chipLabel: 'Electronics'),
                    ChipWidget(chipLabel: 'Clothing'),
                    ChipWidget(chipLabel: 'Accessories'),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Hot sales', style: AppTheme.KHeadingOne),
                  Text('see all', style: AppTheme.KHeadingOne),
                ],
              ),
              const Gap(12),

              //cards
              Container(
                padding: const EdgeInsets.all(4),
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder:
                      (context, index) => Container(
                        decoration: BoxDecoration(
                          color: KWhiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(2, 6),
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.all(12),

                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
