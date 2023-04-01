import 'package:flutter/material.dart';

class EmailContactIndividualWidget extends StatelessWidget {
  const EmailContactIndividualWidget(
    this.context, {
    Key? key,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Please add your email contact',
            style: TextStyle(
              color: Theme.of(this.context).indicatorColor,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 45,
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(this.context).indicatorColor,
              ),
              decoration: InputDecoration(
                hintText: 'Type your email please',
                  hintStyle: TextStyle(
                    color: Theme.of(this.context).hintColor,
                  ),
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ) ,
              ),
              cursorColor: Theme.of(this.context).primaryColor,
            ),
          ),
          const SizedBox(height: 50,),
          Text(
            'We\'ll periodically import and store you contacts to suggest connections and show you relevant updates. you control who you connect to, and you can manage your contacts any time.',
            textAlign: TextAlign.justify,
            style: TextStyle(color: Theme.of(this.context).indicatorColor),
          ),
          const SizedBox(height: 100,),
        ],
      ),
    );
  }
}