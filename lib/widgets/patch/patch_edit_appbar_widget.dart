import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/screens/edit/patches_screen.dart';
import 'package:gp_editor/screens/home_screen.dart';
import 'package:path_provider/path_provider.dart';

enum Action { importPatch, exportPatch, renamePatch, deletePatch }

class PatchEditAppbarWidget extends ConsumerWidget
    implements PreferredSizeWidget {
  const PatchEditAppbarWidget({super.key});

  Widget _buildMenuButton(IconData iconData, String text) {
    return Row(
      children: [Icon(iconData), const SizedBox(width: 12), Text(text)],
    );
  }

  // void onSelectMenuOption(BuildContext context, Actions action) {
  void onSelectMenuOption(Action action) {
    switch (action) {
      case Action.importPatch:
        print('Import Patch selected');
        importPatch();
        break;
      case Action.exportPatch:
        print('Export Patch selected');
        exportPatch();
        break;
      case Action.renamePatch:
        print('Rename Patch selected');
        break;
      case Action.deletePatch:
        print('Delete Patch selected');
        break;
    }
  }

  void importPatch() async {
    try {
      // final Directory? downloadsDir = await getDownloadsDirectory();
      // print('Downloads directory: $downloadsDir');

      FilePickerResult? result = await FilePicker.pickFiles(
        // type: FileType.custom,
        // allowedExtensions: ['bin', 'doc'],
        dialogTitle: 'Please select a patch file to import:',
      );

      if (result != null) {
        File file = File(result.files.single.path!);
        print('File path: ${file.path}');
        file.readAsBytes().then((bytes) {
          print('File size: ${bytes.length} bytes');
        });
      } else {
        // User canceled the picker
        print('User canceled the file picker');
      }
    } catch (e) {
      // print('Error occurred while fetching downloads directory: $e');
      print('Error occurred opening (reading) file picker: $e');
    }
  }

  void exportPatch() async {
    try {
      String? outputFile = await FilePicker.saveFile(
        dialogTitle: 'Please select an output file:',
        // type: FileType.custom,
        // allowedExtensions: ['bin', 'doc'],
        fileName: 'output-file.prst',
        bytes: Uint8List.fromList([0x1, 0x2, 0x3]),
      );

      if (outputFile == null) {
        // User canceled the picker
        print('User canceled the file picker');
      } else {
        print('Output file path: $outputFile');
      }
    } catch (e) {
      // print('Error occurred while fetching downloads directory: $e');
      print('Error occurred opening (saving) file picker: $e');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patchName = ref.watch(patchProvider.select((p) => p.name));

    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (route) => false,
          );
        },
        icon: Icon(Icons.home),
      ),
      // title: RoundedCard(child: Text('Patch Name')),
      title: ElevatedButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => PatchesScreen()));
        },
        child: Text(patchName),
        // child: Text('patch Name'),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
        IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
        IconButton(onPressed: () {}, icon: Icon(Icons.save)),
        // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        PopupMenuButton(
          icon: Icon(Icons.more_vert),
          onSelected: onSelectMenuOption,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: Action.importPatch,
                child: _buildMenuButton(Icons.file_open, 'Import'),
              ),
              PopupMenuItem(
                value: Action.exportPatch,
                child: _buildMenuButton(Icons.upload_file_sharp, 'Export'),
              ),
              PopupMenuItem(
                value: Action.renamePatch,
                child: _buildMenuButton(Icons.edit, 'Rename'),
              ),
              PopupMenuItem(
                value: Action.deletePatch,
                child: _buildMenuButton(Icons.delete, 'Delete'),
              ),
            ];
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
