import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeVacationColors {
  // Key
  static const Color primary = Color(0xFF428358); //Brand Color
  static const Color secondary = Color(0xFFDA3A3A);
  static const Color tertiary = Color(0xFFF4B266);

  // Key Variants
  static const Color primaryLight = Color(0xFF68BF7B);
  static const Color primaryDark = Color(0xFF2B5743);

  // Surface
  static const Color surface = Color(0xFFF7F9FC);
  static const Color surfaceVariant = Color(0xFF2A2B39);
  static const Color containerSurface = Color(0xFFFCFDFF);
  static const Color containerSurface2 = Color(0xFFF8F8F8);
  static const Color containerSurface3 = Color(0xFFF6F6F6);

  // Errors
  static const Color error = Color(0xFFFF5252);
  static const Color errorVariant = Color(0xFFE04848);

  // Common Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color teal = Color(0xFF11A6A1);
  static const Color serviceGray = Color(0xFF9596AA);
  static const Color dividerColor = Color(0x00dee1ef);
  static const Color purpleLight =
      Color.fromRGBO(110, 121, 173, 1); // Purple Light

  // Text Colors
  static const Color text00 = Color(0xFF181E25); // Darker
  static const Color text01 = Color(0xFF2A2B39); // Dark
  static const Color text02 = Color(0xFF6E737F); // Medium Dark
  static const Color text03 = Color(0xFFBEBEBF); // Medium
  static const Color text04 = Color(0xFFD4D3D7); // Light Medium
  static const Color text05 = Color(0xFFFFFFFF); // Light
  static const Color text06 = Color(0xFF8F8F9B);
  static const Color text07 = Color(0xFF8F8F9B);
  static const Color text08 = Color(0xFFBEBDC0); // Medium Gray

  // Tint Colors
  static const Color _tintPrimaryForeground = Color(0xFFFFF743);
  static final Color tintPrimaryLight = Color.alphaBlend(
    _tintPrimaryForeground.withOpacity(0.7),
    primary,
  );
  static final Color tintPrimaryDark = Color.alphaBlend(
    _tintPrimaryForeground.withOpacity(0.33),
    primary,
  );

  // Other
  static const Color shadowColor = Color(0xFF000000);
  static const Color shadowColor2 = Color(0xFF0D141B);
  static const Color buttonColor = Color(0xFF151D31);
  static const Color dividerColor2 = Color(0xFFEFF3FA);

  // Card
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color cardOutline = Color(0xFFFFFFFF);
}

class HomeVacationTextStyle {
  // DEFAULT BASE STYLES
  static final TextStyle bodyExtraSmall = _createFont(
    sizePx: 10,
    spacingPc: 0.35,
    weight: FontWeight.normal,
  );

  static final TextStyle bodySmall = _createFont(
    sizePx: 12,
    spacingPc: 0.35,
    weight: FontWeight.normal,
  );
  static final TextStyle bodyMedium = _createFont(
    sizePx: 14,
    spacingPc: 0.35,
    weight: FontWeight.normal,
  );
  static final TextStyle bodyLarge = _createFont(
    sizePx: 16,
    spacingPc: 0.5,
    weight: FontWeight.w500,
  );
  static final TextStyle labelSmall = _createFont(
    sizePx: 11,
    spacingPc: 0.5,
    weight: FontWeight.w600,
  ); // NOT MODIFIED
  static final TextStyle labelMedium = _createFont(
    sizePx: 12,
    spacingPc: 0.5,
    weight: FontWeight.w500,
  );
  static final TextStyle labelLarge = _createFont(
    sizePx: 14,
    spacingPc: -0.2,
    weight: FontWeight.w500,
  );
  static final TextStyle titleSmall = _createFont(
    sizePx: 16,
    spacingPc: 0,
    weight: FontWeight.normal,
  );
  static final TextStyle titleMedium = _createFont(
    sizePx: 18,
    spacingPc: -0.1,
    weight: FontWeight.w500,
  );
  static final TextStyle titleLarge = _createFont(
    sizePx: 22,
    spacingPc: 0.35,
    weight: FontWeight.w500,
  );
  static final TextStyle headlineSmall = _createFont(
    sizePx: 25,
    spacingPc: 0,
    weight: FontWeight.w600,
  );
  static final TextStyle headlineMedium = _createFont(
    sizePx: 28,
    spacingPc: 0,
    weight: FontWeight.w500,
  ); // NOT MODIFIED
  static final TextStyle headlineLarge = _createFont(
    sizePx: 32,
    spacingPc: -0.35,
    weight: FontWeight.w600,
  );
  static final TextStyle displaySmall = _createFont(
    sizePx: 36,
    spacingPc: 0,
    weight: FontWeight.w500,
  ); // NOT MODIFIED
  static final TextStyle displayMedium = _createFont(
    sizePx: 45,
    spacingPc: 0,
    weight: FontWeight.w500,
  );
  static final TextStyle displayLarge = _createFont(
    sizePx: 57,
    spacingPc: -0.25,
    weight: FontWeight.w500,
  ); // NOT MODIFIED

  static TextStyle _createFont({
    required double sizePx,
    double? heightPx,
    double? spacingPc,
    FontWeight? weight,
  }) {
    sizePx *= 1;
    if (heightPx != null) {
      heightPx *= 1;
    }
    return GoogleFonts.poppins(
      fontSize: sizePx,
      height: heightPx != null ? (heightPx / sizePx) : null,
      letterSpacing: spacingPc != null ? sizePx * spacingPc * 0.01 : null,
      fontWeight: weight,
      color: HomeVacationColors.text00,
    );
  }

  // CUSTOM STYLES
  static final TextStyle titleSmallCustom = _createFont(
    sizePx: 18,
    spacingPc: 0.1,
    weight: FontWeight.w500,
  );
  static final TextStyle titleMediumCustom = _createFont(
    sizePx: 20,
    spacingPc: -0.2,
    weight: FontWeight.w500,
  );
  static final TextStyle titleLargeCustom = _createFont(
    sizePx: 22,
    spacingPc: 0.35,
    weight: FontWeight.w600,
  );

  static final TextStyle labelSmallCustom = _createFont(
    sizePx: 15,
    spacingPc: 0,
    weight: FontWeight.w500,
  );
  static final TextStyle labelMediumCustom = _createFont(
    sizePx: 16,
    spacingPc: 0,
    weight: FontWeight.w600,
  );
  static final TextStyle labelLargeCustom = _createFont(
    sizePx: 20,
    spacingPc: -0.35,
    weight: FontWeight.w500,
  );

  static final TextStyle buttonLargeCustom = _createFont(
    sizePx: 20,
    spacingPc: 0.15,
    weight: FontWeight.w600,
  );
}

class HomeVacationInsets {
  // ============ CONSTANTS ==========
  /// 0
  static const double none = 0;

  /// 4
  static const double xxs = 4;

  /// 8
  static const double xs = 8;

  /// 16
  static const double sm = 16;

  /// 24
  static const double md = 24;

  /// 32
  static const double lg = 32;

  /// 48
  static const double xl = 48;

  /// 16
  static double get pageSM => sm;

  /// 24
  static double get pageLG => md;

  /// 24
  static double get componentGap => 24;
}

class HomeVacationCorners {
  // Short list to only 3 corners.
  // A app should not have more than 3 (sm, md, lg)

  /// 9
  static const double none = 0;

  /// 12
  static const double sm = 12;

  /// 16
  static const double md = 16;

  /// 24
  static const double lg = 24;

  /// 32
  static const double xl = 32;
}

class HomeVacationShadows {
  // Base
  static final BoxShadow level1 = BoxShadow(
    color: HomeVacationColors.shadowColor.withOpacity(0.06),
    blurRadius: 14,
    offset: const Offset(0, 3),
  );

  static final BoxShadow level2 = BoxShadow(
    color: HomeVacationColors.shadowColor.withOpacity(0.06),
    blurRadius: 28,
    offset: const Offset(0, 3),
  );

  // Custom
  static final BoxShadow iconContainer = BoxShadow(
    color: HomeVacationColors.shadowColor.withOpacity(0.12),
    blurRadius: 24,
    offset: const Offset(0, 4),
    spreadRadius: -8,
  );
}
