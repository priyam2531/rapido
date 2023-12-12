import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:rapido/authantication/sign_page_three.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';

class signpagetwo extends StatefulWidget {
  const signpagetwo({super.key});

  @override
  State<signpagetwo> createState() => _signpagetwoState();
}

class _signpagetwoState extends State<signpagetwo> {

  Country? country;
  String? contryNumber;
  String contryFlag = "IN";
  Map value = {};
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => Signpagethree()));
        },
        child: AppIcon.Frontarrow,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.logo,
                    scale: 1.5,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(StringConfig.Entermobileno,
                      style: TextStyle(
                          fontSize: AppFont.fontSize25,
                          fontWeight: FontWeight.bold)),
                ),
                AppIcon.arrow
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 3,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellow),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          onSelect: (value) {
                            setState(() {
                              contryNumber = value.phoneCode;
                              contryFlag = value.countryCode;
                            });
                            print(contryNumber);
                          },
                          countryListTheme: CountryListThemeData(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            ),
                            // Optional. Styles the search field.
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                  const Color(0xFF8C98A8).withOpacity(0.2),
                                ),
                              ),
                            ),
                            // Optional. Styles the text in the search field
                            searchTextStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: AppFont.fontSize25,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 125,
                        height: double.infinity,
                        color: AppColor.yellow,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                contryFlag,
                                style: TextStyle(fontSize: AppFont.fontSize35),
                              ),
                            ),
                            Text(
                              "+${contryNumber ?? ""}",
                              style: TextStyle(fontSize: AppFont.fontSize25),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: TextField(
                          maxLength: 10,
                          controller: number,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Phone Number"),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
