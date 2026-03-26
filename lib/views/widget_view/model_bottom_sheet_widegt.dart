import 'package:flutter/material.dart';
import 'package:note_app/views/widget_view/custom_text_form_field_widegt.dart';

class ModelBottomSheetWidegt extends StatelessWidget {
  const ModelBottomSheetWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomTextFormFieldWidegt(
            hint: 'Enter your note title',
            label: 'Title',
          ),
          SizedBox(height: 30),
          CustomTextFormFieldWidegt(
            label: 'Content',
            hint: 'Enter your note content',
            maxLines: 5,
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(bottom: 32),
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
