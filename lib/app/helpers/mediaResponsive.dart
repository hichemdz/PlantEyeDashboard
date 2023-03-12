class MediaResponsive {
  static const int lg = 1366;
  static const int md = 768;
  static const int sm = 360;

  static int mediaGrid(
          {screen, required int lg, required int md, required int sm}) =>
      screen.isDesktop
          ? lg
          : screen.isTablet
              ? md
              : sm;

  //final int customScreenSize = 1100;

  static bool isLg(double size) => size >= lg;

  static bool isMd(double size) => size >= md || size > lg;

  static bool isSm(double size) => size <= sm;
}
