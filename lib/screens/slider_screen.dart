import 'package:flutter/material.dart';
import 'package:demo_app_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & checks'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Slider.adaptive(
                min: 80,
                max: 400,
                value: _sliderValue,
                //divisions: 20,
                activeColor: AppTheme.primary,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   },
            // ),
            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: (value) => setState(() {
            //     _sliderEnabled = value;
            //   }),
            // ),
            CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),
            SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: FadeInImage(
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: const Duration(milliseconds: 300),
                  image: const NetworkImage(
                      'https://www.buscopng.com/wp-content/uploads/2020/10/Superman.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
