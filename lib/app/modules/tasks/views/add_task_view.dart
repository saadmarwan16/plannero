import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_paddings.dart';

class AddTaskView extends GetView {
  const AddTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Task'),
        actions: [
          IconButton(
            onPressed: () {},
            // onPressed: () async => showNotificationDatePicker(context, theme),
            icon: const Icon(Icons.notifications_off),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
            ),
          ),
        ],
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: CustomPaddings.all16,
          children: <Widget>[
            TextFormField(
              cursorColor: Theme.of(context).colorScheme.onSurface,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              cursorColor: Theme.of(context).colorScheme.onSurface,
              decoration: const InputDecoration(hintText: 'Description'),
            ),
            // const SizedBox(height: 12.0),
            // DateTimeFieldBlocBuilder(
            //   dateTimeFieldBloc: taskBloc.date,
            //   firstDate: DateTime.now(),
            //   initialDate: DateTime.now(),
            //   lastDate: DateTime.now().add(
            //     const Duration(days: 7),
            //   ),
            //   format: DateFormat('yyyy-MM-dd'),
            //   decoration: basicInputDecoration(
            //     theme,
            //     'Date',
            //     suffixIcon: const Icon(
            //       Icons.calendar_today_outlined,
            //     ),
            //   ),
            // ),
            const SizedBox(height: 24.0),
            Stack(
              children: <Widget>[
                InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Level of plan\'s importance',
                    iconColor: theme.inputDecorationTheme.iconColor,
                    hintStyle: theme.inputDecorationTheme.hintStyle,
                    border: theme.inputDecorationTheme.border,
                    focusedBorder: theme.inputDecorationTheme.focusedBorder,
                    enabledBorder: theme.inputDecorationTheme.enabledBorder,
                  ),
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: <Widget>[
                      RadioListTile(
                        value: 'High',
                        groupValue: 'High',
                        onChanged: (value) {},
                        title: const Text('High'),
                      ),
                      RadioListTile(
                        value: 'Medium',
                        groupValue: 'High',
                        onChanged: (value) {},
                        title: const Text('Medium'),
                      ),
                      RadioListTile(
                        value: 'Low',
                        groupValue: 'High',
                        onChanged: (value) {},
                        title: const Text('Low'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
