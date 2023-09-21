part of '../../../talker.dart';

class TalkerMonitorHttpScreen extends StatelessWidget {
  const TalkerMonitorHttpScreen({
    Key? key,
    required this.exceptions,
    required this.theme,
    required this.typeName,
  }) : super(key: key);

  final String typeName;
  final TalkerScreenTheme theme;
  final List<TalkerDataInterface> exceptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.appColors.scaffoldBackground,
      appBar: FlexibleAppBar(
        title: 'Talker Monitor $typeName',
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final data = exceptions[index];
                return LogDataCard(
                  data: data,
                  onTap: () => _copyTalkerDataItemText(context, data),
                );
              },
              childCount: exceptions.length,
            ),
          ),
        ],
      ),
    );
  }

  void _copyTalkerDataItemText(BuildContext context, TalkerDataInterface data) {
    final text = data.generateTextMessage();
    Clipboard.setData(ClipboardData(text: text));
    _showSnackBar(context, 'Log item is copied in clipboard');
  }

  void _showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text)),
    );
  }
}
