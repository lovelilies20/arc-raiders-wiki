import 'package:flutter/material.dart';

class AnimatedBorder extends StatefulWidget {
  final Widget child;

  const AnimatedBorder({Key? key, required this.child}) : super(key: key);

  @override
  State<AnimatedBorder> createState() => _AnimatedBorderState();
}

class _AnimatedBorderState extends State<AnimatedBorder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // медленно
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        isHovered = true;
        _controller.repeat();
      },
      onExit: (_) {
        isHovered = false;
        _controller.stop();
        setState(() {});
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final time = (_controller.lastElapsedDuration?.inMilliseconds ?? 0) / 1000;

          return CustomPaint(
            painter: BorderPainter(
            time: time, //  передаём время
            isHovered: isHovered,
            ),
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  final double time;
  final bool isHovered;

  BorderPainter({required this.time, required this.isHovered});

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Offset.zero & size,
        const Radius.circular(16),
      ));

    /// базовая тонкая рамка
    final basePaint = Paint()
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke
      ..color = Colors.white.withOpacity(0.25);

    canvas.drawPath(path, basePaint);

    if (!isHovered) return;

    final metric = path.computeMetrics().first;
    final length = metric.length;

    /// плавное движение
    double speed = 520;
    double position = (time * speed) % length;

    double seg = 80; // длинные линии
    double gap = 80;

    final colors = [
      Colors.purple,
      Colors.white,
      Colors.cyan,
    ];

    final paint = Paint()
    ..strokeWidth = 6
    ..style = PaintingStyle.stroke
    ..maskFilter = const MaskFilter.blur(
    BlurStyle.normal,
    3,
    );

    for (int i = 0; i < 3; i++) {
      double offset = i * gap;
      double start = (position - offset) % length;
      if (start < 0) start += length;

      double end = start + seg;

      paint.color = colors[i];
      canvas.drawPath(metric.extractPath(start, end), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}