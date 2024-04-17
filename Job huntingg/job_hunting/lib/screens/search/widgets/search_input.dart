import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.done,

              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide.none),
                hintText: 'Search',
                hintStyle: const TextStyle(fontSize: 17.0, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                prefixIcon: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/icons/search.png',
                    width: 20.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20)
            ),
            // child: Icon(Icons.filter_b_and_w_outlined,color: Colors.white,),
            child: Image.asset('assets/icons/filter.png'),
          )
        ],
      ),
    );
  }
}