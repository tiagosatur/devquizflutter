import 'package:devquizflutter/core/app_text_styles.dart';
import 'package:devquizflutter/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Questão 04',
                style: AppTextStyles.body,
              ),
              Text(
                'de 10',
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: 0.7),
        ],
      )
    );
  }
}