import 'package:flutter/material.dart';
import 'package:job_hunting/models/job.dart';
import 'package:job_hunting/screens/home/widgets/job_item.dart';


class SearchList extends StatelessWidget {
  SearchList({Key? key}) : super(key: key);
  final jobList=Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => JobItem(
            job: jobList[index],
            showTime: true,
          ),
          separatorBuilder: (_, index) => const SizedBox(
            height: 15,
          ),
          itemCount: jobList.length),
    );
  }
}