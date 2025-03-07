import os
from PySide2 import QtWidgets, QtCore
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui

# Dummy function to simulate getting characters from a project
def get_character_list():
    return ["Character_A", "Character_B", "Character_C"]

# Dummy function to get skin files for a character
def get_skin_files(character):
    return ["arm", "leg", "torso"] if character else []

# Dummy function to get versions of a skin file with date info
def get_skin_versions(character, skin_file):
    return [(f"{skin_file}_v001.jSkin", "2024-03-01 10:00"),
            (f"{skin_file}_v002.jSkin", "2024-03-02 12:30"),
            (f"{skin_file}_v003.jSkin", "2024-03-03 15:45")] if skin_file else []

# Get Maya's main window
def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)

class RigToolUI(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window()):
        super(RigToolUI, self).__init__(parent)
        self.setWindowTitle("Character Skin Importer")
        self.setMinimumSize(500, 300)
        
        self.create_widgets()
        self.create_layouts()
        self.create_connections()
        self.update_skin_list()
    
    def create_widgets(self):
        self.button_import_skin = QtWidgets.QPushButton("Import Skin")
        self.button_import_skin.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.button_import_skin.customContextMenuRequested.connect(self.show_context_menu)
    
    def create_layouts(self):
        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.addWidget(self.button_import_skin)
    
    def create_connections(self):
        pass
    
    def show_context_menu(self, pos):
        menu = QtWidgets.QMenu(self)
        
        for character in get_character_list():
            char_menu = QtWidgets.QMenu(character, self)
            
            for skin_file in get_skin_files(character):
                skin_menu = QtWidgets.QMenu(skin_file, self)
                
                for version, date in get_skin_versions(character, skin_file):
                    action = skin_menu.addAction(f"{version} ({date})")
                    action.triggered.connect(lambda _, c=character, s=skin_file, v=version: self.import_skin(c, s, v))
                
                char_menu.addMenu(skin_menu)
            
            menu.addMenu(char_menu)
        
        menu.exec_(self.button_import_skin.mapToGlobal(pos))
    
    def import_skin(self, character, skin_file, version):
        print(f"Importing {version} for {skin_file} of {character}")

# Launch the UI
def show_rig_tool_ui():
    global rig_tool_ui
    try:
        rig_tool_ui.close()
    except:
        pass
    rig_tool_ui = RigToolUI()
    rig_tool_ui.show()

show_rig_tool_ui()
