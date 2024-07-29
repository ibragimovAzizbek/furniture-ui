import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 67.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Image.asset(
            ImageAssets.homeLeadingIcon,
            height: 39.h,
            width: 39.w,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 16.sp,
            color: ColorManager.black100,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              ImageAssets.oclock,
              height: 24.h,
              width: 24.w,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              ImageAssets.search,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Discaount
              Center(
                child: Text(
                  "New collection",
                  style: TextStyle(
                    fontSize: 35.sp,
                    color: ColorManager.black100,
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "with ",
                    style: TextStyle(
                      fontSize: 35.sp,
                      color: ColorManager.black100,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "15%",
                        style: TextStyle(
                          color: ColorManager.eECE91,
                        ),
                      ),
                      TextSpan(
                        text: " discount",
                        style: TextStyle(
                          fontSize: 35.sp,
                          color: ColorManager.black100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22.h),
              // Discount products
              Stack(
                children: [
                  SizedBox(
                    height: 286.h,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25.h),
                      height: 261.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: ColorManager.eEF3E9,
                      ),
                      child: Icon(
                        Icons.image_outlined,
                        size: 56.w,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -1.8.h,
                    left: 98.5.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        fixedSize: Size(161.w, 50.h),
                        backgroundColor: ColorManager.eA592A,
                      ),
                      child: Text(
                        "Shop now",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorManager.bgWhite,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              // Inspiration by Room
              const TitleAndTextButton(
                title: "Inspiration by Room",
                text: "View All",
              ),
              Container(
                height: 379.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: ColorManager.eEF3E9,
                ),
                child: Icon(
                  Icons.image_outlined,
                  size: 56.w,
                ),
              ),
              SizedBox(height: 32.h),
              // All Furnitures Category
              const TitleAndTextButton(
                title: "All Furnitures Category",
                text: "View All",
              ),
              SizedBox(
                height: 220.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 220.h,
                      width: 164.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: ColorManager.d4D5DA),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 129.h,
                            width: 129.w,
                            margin: EdgeInsets.only(top: 14.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              color: ColorManager.d4D5DA,
                            ),
                            child: Icon(
                              Icons.image_outlined,
                              size: 56.w,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            "FLINSHULT",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: ColorManager.black100,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            "20 Items ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: ColorManager.black60,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 22.w);
                  },
                ),
              ),
              SizedBox(height: 52.h),
              // Explore Furniture
              Text(
                "Explore Furniture",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: ColorManager.black100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32.h),
              GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18.w,
                  mainAxisSpacing: 38.h,
                  childAspectRatio: 0.74, // Adjust as per your design
                ),
                itemBuilder: (context, index) {
                  return const FurnitureItemCard();
                },
              ),
              SizedBox(height: 150.h),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleAndTextButton extends StatelessWidget {
  const TitleAndTextButton({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            color: ColorManager.black100,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorManager.black60,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class FurnitureItemCard extends StatelessWidget {
  const FurnitureItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 182.h,
          width: 170.w,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Icon(Icons.image, size: 50.0.w),
        ),
        SizedBox(height: 8.h),
        Text(
          "Arm Chair",
          style: TextStyle(fontSize: 16.0.w, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2.h),
        Text(
          "\$124.00",
          style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
