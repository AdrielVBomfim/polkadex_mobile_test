import 'package:flutter/material.dart';
import 'package:polkadex_mobile_test/input_widget.dart';


class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordRepeatController = TextEditingController();

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
      reverseDuration: const Duration(milliseconds: 400),
    );
    super.initState();
    Future.microtask(() => _animationController.forward());
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2023),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Wallet Settings',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E303C),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.white.withOpacity(0.10),
                        blurRadius: 30,
                        offset: const Offset(0.0, 20.0),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 20,
                            right: 20,
                          ),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.stretch,
                            children: [
                              const Padding(
                                padding:
                                EdgeInsets.only(bottom: 16),
                                child: Text(
                                  'Wallet Settings',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                EdgeInsets.only(bottom: 14),
                                child: Text(
                                  'Security password is used for transfers, create orders, mnemonics backups, applications authorization, etc.',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 12),
                                child: WalletInputWidget(
                                  title: 'Wallet Name',
                                  description: 'Set wallet name',
                                  controller: _nameController,
                                  onChanged: (password) {},
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 12),
                                child: WalletInputWidget(
                                  title: 'Password',
                                  description: 'Set password',
                                  controller: _passwordController,
                                  obscureText: true,
                                  onChanged: (password) {},
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 26),
                                child: WalletInputWidget(
                                  title: 'Repeat Password',
                                  description: 'Repeat your password',
                                  controller:
                                  _passwordRepeatController,
                                  obscureText: true,
                                  onChanged: (password) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28, 14, 28, 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Polkadex Exchange eApp does not keep it, if you forget the password, you cannot restore it.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFABB2BC),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
