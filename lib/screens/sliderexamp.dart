import 'package:flutter/material.dart';
import 'package:flutterprovider/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class Sliderexamp extends StatefulWidget {
  const Sliderexamp({super.key});

  @override
  State<Sliderexamp> createState() => _SliderexampState();
}

class _SliderexampState extends State<Sliderexamp> {
  @override
  Widget build(BuildContext context) {
    print('build1');
    return Scaffold(
      appBar: AppBar(
        title: Text('slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Slider_Provider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                   print(value.value);
                },
              );
            },
          ),
          Consumer<Slider_Provider>(
            builder: (context, value, child) {
              print('build2');
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      child: Center(
                        child: Text('Container 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value)),
                      child: Center(
                        child: Text('Container 1'),
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
