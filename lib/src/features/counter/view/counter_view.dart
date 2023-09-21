part of '../counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CounterView();
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.counterAppBarTitle,
          style: AppTextStyle.titleLarge500(context),
        ),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterFetched) {
            return Center(
              child: CounterText(
                count: state.value,
              ),
            );
          } else if (state is CounterError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.lastValidValue.toString(),
                    style: AppTextStyle.titleLarge600(context).copyWith(
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state.message,
                    style: AppTextStyle.titleSmall400(context).copyWith(
                      color: AppPalette.danger,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16 * 5,
            right: 16,
            child: FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(Increment(isDark: context.read<ThemeNotifier>().isDark)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                Provider.of<ThemeNotifier>(context, listen: false).toggleTheme();
              },
              child: Icon(
                context.read<ThemeNotifier>().isDark ? Icons.wb_sunny : Icons.nightlight_round,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(Decrement(isDark: context.read<ThemeNotifier>().isDark)),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
