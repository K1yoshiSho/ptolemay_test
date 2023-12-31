part of '../../counter.dart';

class CounterText extends StatelessWidget {
  final int count;
  const CounterText({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$count',
      style: AppTextStyle.titleLarge600(context).copyWith(
        fontSize: 60,
      ),
    );
  }
}
