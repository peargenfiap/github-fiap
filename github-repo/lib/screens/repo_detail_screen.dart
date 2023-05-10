import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';
import 'package:githubrepo/models/repository.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({super.key});

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  Repositories list = kRepositoriesMock;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Detalhes'),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomAvatar(
                    radius: 60,
                    avatarUrl: list.first.owner?.avatar ?? '',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: CustomText(
                    text: 'Repositório',
                    style: TypographyType.title,
                    color: Colors.blue,
                  ),
                ),
                CustomText(text: '${list[0].name}', style: TypographyType.body),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: CustomText(
                    text: 'Usuário',
                    style: TypographyType.title,
                    color: Colors.blue,
                  ),
                ),
                CustomText(
                    text: '${list[0].owner?.login}',
                    style: TypographyType.body),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: CustomText(
                    text: 'Descrição',
                    style: TypographyType.title,
                    color: Colors.blue,
                  ),
                ),
                CustomText(
                  text: '${list[0].description}',
                  style: TypographyType.body,
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      )),
    );
  }
}
