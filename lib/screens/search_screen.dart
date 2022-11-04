import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widgets/search_header.dart';
import 'package:google_clone/widgets/search_result_component.dart';
import 'package:google_clone/widgets/search_tabs.dart';

import '../widgets/search_footer.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //web header
            SearchHeader(),
            Padding(
              padding: EdgeInsets.only(left: 150.0),
              child: SearchTabs(),
            ),
            const Divider(
              height: 0,
              thickness: 0.3,
            ),
            //searchResult
            FutureBuilder(
                future: ApiService().fetchData(
                  queryTerm: "Tarun Kumar",
                ),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 150, top: 12),
                          child: Text(
                            "About ${snapshot.data?["searchInformation"]["formattedTotalResults"]} results (${snapshot.data?["searchInformation"]["formattedSearchTime"]}) ",
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xff70757a),
                            ),
                          ),
                        ),
                        ListView.builder(itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 150, top: 10),
                            child: SearchResultComponent(
                              link: '',
                            ),
                          );
                        })
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),

            //pagination buttons
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "< Pre",
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Next >",
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const SearchFooter()
          ],
        ),
      ),
    );
  }
}
