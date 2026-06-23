import 'package:flutter/material.dart';
import 'package:gp_editor/screens/settings/ctrl_settings_screen.dart';
import 'package:gp_editor/screens/settings/exp_settings_screen.dart';
import 'package:gp_editor/screens/settings/fxloop_settings_screen.dart';
import 'package:gp_editor/screens/settings/general_settings_screen.dart';
import 'package:gp_editor/screens/settings/knob_settings_screen.dart';
import 'package:gp_editor/widgets/patch/patch_settings_selector_widget.dart';

class PatchSettingsScreen extends StatelessWidget {
  const PatchSettingsScreen({super.key});

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  @override
  Widget build(BuildContext context) {
    final imagePath = 'images/SET_on.png';

    return Column(
      children: [
        PatchSettingsSelectorWidget(
          title: 'General',
          infoWidgets: [Text('Adjust volume, pan, and BPM of the patch.')],
          imagePath: imagePath,
          onTap: () {
            _navigateToScreen(context, GeneralSettingsScreen());
          },
        ),
        PatchSettingsSelectorWidget(
          title: 'FX Loop',
          infoWidgets: [Text('Adjust the parameters to the FX Loop.')],
          imagePath: imagePath,
          onTap: () {
            _navigateToScreen(context, FxloopSettingsScreen());
          },
        ),
        PatchSettingsSelectorWidget(
          title: 'QA Knob Settings',
          infoWidgets: [Text('Adjust the effect parameter of the knobs.')],
          imagePath: imagePath,
          onTap: () {
            _navigateToScreen(context, KnobSettingsScreen());
          },
        ),
        PatchSettingsSelectorWidget(
          title: 'FS Settings (CTRL)',
          infoWidgets: [
            Text('Adjust the effects assigned to the footswitches.'),
          ],
          imagePath: imagePath,
          onTap: () {
            _navigateToScreen(context, CtrlSettingsScreen());
          },
        ),
        PatchSettingsSelectorWidget(
          title: 'EXP Settings',
          infoWidgets: [
            Text('Adjust the parameters of the expression pedals.'),
          ],
          imagePath: imagePath,
          onTap: () {
            _navigateToScreen(context, ExpSettingsScreen());
          },
        ),
      ],
    );
  }
}
