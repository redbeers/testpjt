import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32)
              .copyWith(top: 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 상단 텍스트
              const Text(
                '우리 동네 이웃 월리,',
                style: TextStyle(
                  color: const Color(0xFF4FB284),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                '내 반려동물의 친구가 되다.',
                style: TextStyle(
                  color: const Color(0xFF4FB284),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 300),

              // 문구
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD7F5E3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                      '우리 동네에는 어떤 월리가 있을까요?',
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xFF496E5A),
                      )
                  ),
                ),
              ),

              // 아래세모
              Center(
                child:CustomPaint(
                  size: const Size(25, 10),
                  painter: TrianglePainter(const Color(0xFFD7F5E3)),
                ),
              ),

              const SizedBox(height: 30),

              // 버튼 1
              Container(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD400), // 카카오 노랑
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD400),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Image.asset(
                        'assets/images/kakao_icon1.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    // 왼쪽 말풍선 이미지

                    const Spacer(),

                    // 가운데 텍스트
                    const Text(
                      '카카오 로그인',
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),


              const SizedBox(height: 12),

              // 버튼 2
              Container(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF), // 카카오 노랑
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFC9C7C7),
                    width: 1,
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icon1.png',
                      width: 20,
                      height: 20,
                    ),
                    // 왼쪽 말풍선 이미지

                    const Spacer(),

                    // 가운데 텍스트
                    const Text(
                      '휴대폰 로그인',
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}