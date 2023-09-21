part of '../../counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {
  Offset? switcherOffset;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CounterView(
      onTap: (buttonContext) {
        setState(() {
          dependenciesContainer.registerPosition(buttonContext.globalPaintBounds!.center);
        });
      },
    );
  }
}

class CounterView extends StatelessWidget {
  final Function(BuildContext) onTap;
  const CounterView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final themeNotifier = context.themeNotifier;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.counterAppBarTitle,
          style: AppTextStyle.titleLarge500(context),
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherBlocFetched) {
                return Text(
                  state.weatherData.country ?? "",
                  style: AppTextStyle.titleLarge600(context),
                );
              } else if (state is WeatherBlocLoading) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  ),
                );
              } else if (state is WeatherBlocFailure) {
                return Center(
                  child: Text(
                    state.message,
                    style: AppTextStyle.titleSmall400(context).copyWith(
                      color: AppPalette.danger,
                    ),
                  ),
                );
              }
              return const SizedBox();
            },
          ),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterFetchedState) {
                return Center(
                  child: CounterText(
                    count: state.value,
                  ),
                );
              } else if (state is CounterFailureState) {
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
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16 * 6,
            right: 16,
            child: FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(IncrementEvent(isDark: themeNotifier.isDark)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(DecrementEvent(isDark: themeNotifier.isDark)),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: SwitcherButton(
              onTap: (buttonContext) {
                onTap(buttonContext);
                themeNotifier.toggleTheme();
              },
              isDark: themeNotifier.isDark,
            ),
          ),
          Positioned(
            bottom: 16 * 6,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                context.read<WeatherBloc>().add(const GetWeatherInfo());
              },
              child: const Icon(
                Icons.cloud_sync_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
