import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/colors.dart';
import 'package:whats_app/features/profile/data/model/user_model.dart';
import 'package:whats_app/features/profile/presentation/views/widgets/edit_name_widget.dart';
import 'package:whats_app/features/profile/presentation/views/widgets/pic_image.dart';

class ProfileBody extends StatelessWidget {
  ProfileBody({super.key});

  final UserModel userModel = UserModel(
      name: 'Hayam tarek',
      image: null,
      phone: 0123456789,
      email: 'hayam@gmail.com');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: PicImage(
            defaultImageUrl: userModel.image,
          ),
        ),
        ListTile(
          title: const Text('Name'),
          leading: const Icon(Icons.person),
          subtitle: Text(userModel.name),
          trailing: IconButton(
            onPressed: () {
              editNameWidget(context: context, name: userModel.name);
            },
            icon: const Icon(
              Icons.edit,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        ListTile(
          title: const Text('Phone'),
          leading: const Icon(Icons.phone),
          subtitle: Text(userModel.phone.toString()),
        ),
      ],
    );
  }
}
