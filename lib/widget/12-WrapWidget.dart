import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 200,
              ),
              // Container(
              //   child: Text(
              //       'gjiojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgopek g'),
              // ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: 300,
                child: Wrap(
                  children: [
                    Text(
                        'gjiojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgojgreiojgioerj kgioerjkgoierjk goirkgopek g'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
