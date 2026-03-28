import 'package:flutter/material.dart';
import 'package:servixass/core/constants/app_colors.dart';

class NavBarPainter extends CustomPainter {
  final double fabRadius;

  NavBarPainter({this.fabRadius = 32});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = AppColors.black.withValues(alpha: .18)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final path = Path();

    final centerX = size.width / 2;

    /// بداية التجويف
    final notchStart = centerX - fabRadius - 12;

    /// نهاية التجويف
    final notchEnd = centerX + fabRadius + 12;

    path.moveTo(0, 0);

    /// الخط الأيسر
    path.lineTo(notchStart, 0);

    /// نزول تدريجي
    path.quadraticBezierTo(notchStart + 6, 0, notchStart + 12, 12);

    /// القوس حول زر FAB
    path.arcToPoint(
      Offset(notchEnd - 12, 12),
      radius: Radius.circular(fabRadius + 4),
      clockwise: false,
    );

    /// صعود تدريجي
    path.quadraticBezierTo(notchEnd - 6, 0, notchEnd, 0);

    /// الخط الأيمن
    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    /// shadow
    canvas.drawShadow(path, AppColors.black, 12, false);

    /// background
    canvas.drawPath(path, paint);

    /// border
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
