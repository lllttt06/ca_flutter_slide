import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get slide_1_title => 'Title';

  @override
  String get slide_1_presentation_title_1 => 'Flutter × Rive';

  @override
  String get slide_1_presentation_title_2 => 'Captivating Animations';

  @override
  String get slide_1_presentation_name => '2023/3/19 Koki Yoshida';

  @override
  String get slide_2_title => 'About Me';

  @override
  String get slide_2_company => 'CyberAgent, Inc. Joined in 2023';

  @override
  String get slide_3_title => 'What is Rive?';

  @override
  String get slide_3_description_1 => 'A tool for creating interactive animations*';

  @override
  String get slide_3_description_2 => '*Animations that dynamically change based on user interaction\n For example...';

  @override
  String get slide_4_title => 'Benefits of Interactive Animations';

  @override
  String get slide_4_description => '・Encourage specific user actions \n・Provide feedback on interactions \n・Offer a fun experience';

  @override
  String get slide_5_title => 'Flutter Animations';

  @override
  String get slide_5_description_1 => 'Commonly used:';

  @override
  String get slide_5_description_2 => ' and others';

  @override
  String get slide_5_demerit_title => 'Drawbacks';

  @override
  String get slide_5_demerit_1 => '・Difficult to create detailed animations';

  @override
  String get slide_5_demerit_2 => '・Hard to share with designers';

  @override
  String get slide_5_use => '';

  @override
  String get slide_6_title => 'Rive Solves Flutter Animation Drawbacks!';

  @override
  String get slide_6_solution_1 => '　→ Just load the .riv file';

  @override
  String get slide_6_solution_2_1 => '　→ Pro ver: Create ';

  @override
  String get slide_6_solution_2_2 => '';

  @override
  String get slide_6_solution_3_1 => '　→ Free ver: Preview using ';

  @override
  String get slide_6_solution_3_2 => ' (.riv file required)';

  @override
  String get slide_7_title => 'Rive Benefits | Comparison with Lottie';

  @override
  String get slide_7_pipeline => '  Pipeline';

  @override
  String get slide_7_file_size => '  File Size';

  @override
  String get slide_7_free_version => '  Free Version Features';

  @override
  String get slide_7_community => '  Community Richness';

  @override
  String get slide_7_animation_freedom => '  Animation Freedom';

  @override
  String get slide_7_rive_vs_lottie => 'From Rive official Rive vs Lottie';

  @override
  String get slide_8_title => 'Use Cases in Flutter';

  @override
  String get slide_8_from_rive_use_case => 'From Rive official Use Cases';

  @override
  String get slide_8_like => 'Like';

  @override
  String get slide_8_rating => 'Rating';

  @override
  String get slide_9_title => 'Creating Animations with Rive';

  @override
  String get slide_10_description => 'To control animations, use StateMachineController';

  @override
  String get slide_11_form_of_rive_file => 'Rive File Formats';

  @override
  String get slide_11_riv_file => '・riv file';

  @override
  String get slide_11_riv_file_description_1 => '　File for Runtime';

  @override
  String get slide_11_riv_file_description_2 => '　Used in Flutter';

  @override
  String get slide_11_rev_file => '・rev file';

  @override
  String get slide_11_rev_file_description_1 => '　Source data file';

  @override
  String get slide_11_rev_file_description_2 => '　Used in Editor';

  @override
  String get slide_12_title => 'Implementation in Flutter';

  @override
  String get slide_12_add_package => ' Add the package';

  @override
  String get slide_12_put_riv_file => '2. Place .riv in assets/rive';

  @override
  String get slide_12_add_pubspec => '3. Add to pubspec.yaml';

  @override
  String get slide_13_title => 'Implementation Tips';

  @override
  String get slide_13_use => '';

  @override
  String get slide_13_description => '  Use assets in a type-safe way instead of strings';

  @override
  String get slide_14_description => '2. Organize commonly used logic \n\n   Initialization logic for \n   StateMachineController';

  @override
  String get slide_15_description_1 => '2. Organize commonly used logic';

  @override
  String get slide_15_description_2 => '  Define extension functions to get SMI values';

  @override
  String get slide_16_description_1 => ' Suppress unnecessary repaints with';

  @override
  String get slide_16_description_2 => '  Improve performance by separating redraw timing';

  @override
  String get slide_17_title => 'Summary';

  @override
  String get slide_17_summary_1 => '・Easily implement interactive animations using Rive';

  @override
  String get slide_17_summary_2 => '・Rive key features are pipeline and file size';

  @override
  String get slide_17_summary_3 => '・Some implementation tips';

  @override
  String get slide_17_future_content => 'Content not covered this time';

  @override
  String get slide_17_future_content_1 => '・Number and Trigger of StateMachineInputs';

  @override
  String get slide_17_future_content_2 => '・Features like Listener and Events';

  @override
  String get citation_title => 'References';

  @override
  String get citation_1 => 'Rive Official Website';
}
