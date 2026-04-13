import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/extensions/sized_box_extension.dart';
import 'package:unitask/ui/common/label_text_field.dart';
import 'package:unitask/ui/common/text_divider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .all(20),
        child: Center(
            child: Column(
              mainAxisSize: .min,
              children: [
                Icon(
                  LucideIcons.graduationCap,
                  size: 50,
                ),

                Text(
                  'UniTask',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: .bold,
                  ),
                ),
                
                Text(
                  '과제 관리를 스마트하게',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                ),

                50.heightbox,

                LabelTextField(
                  label: '이메일',
                  hintText: 'example@uni',
                  icon: LucideIcons.mail,
                ),

                20.heightbox,

                LabelTextField(
                  label: '비밀번호',
                  hintText: '000000',
                  icon: LucideIcons.lockKeyhole,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      '비밀번호를 잊으셨나요?',
                    ),
                  ),
                ),

                20.heightbox,

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      '로그인',
                      style: TextStyle(
                        fontWeight: .bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                20.heightbox,

                const TextDivider(text: '또는'),

                20.heightbox,

                Row(
                  mainAxisSize: .min,
                  children: [
                    const Text('계정이 없으신가요?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('회원가입'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}