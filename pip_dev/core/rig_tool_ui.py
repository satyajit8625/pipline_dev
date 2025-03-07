import os
from PySide2 import QtCore, QtWidgets
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
import importlib
from core import asset
from core import skin
importlib.reload(skin)

  # Change this to your actual skin directory

def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)

class rig_tool(QtWidgets.QDialog):
    rig_tool_window = None  # Class-level variable to store the window instance

    def __init__(self, parent=None):
        super(rig_tool, self).__init__(parent)
        
        self.setWindowTitle("Rig Tool")
        self.setMinimumWidth(200)
        self.setMinimumHeight(50)

        self.create_widgets()
        self.create_layouts()
    
    def create_widgets(self):
        # Create buttons
        self.button_save_skin = QtWidgets.QPushButton("Save Skin")
        self.button_import_skin = QtWidgets.QPushButton("Import Skin")

        # Connect buttons to functions
        self.button_save_skin.clicked.connect(self.on_save_skin)
        self.button_import_skin.clicked.connect(self.on_import_skin)

        # Set up context menu for right-click on "Import Skin" button
        self.button_import_skin.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.button_import_skin.customContextMenuRequested.connect(self.show_context_menu)

    def create_layouts(self):
        # Create layout
        button_layout = QtWidgets.QHBoxLayout()
        button_layout.addWidget(self.button_save_skin)
        button_layout.addWidget(self.button_import_skin)

        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.addLayout(button_layout)
        self.setLayout(main_layout)

    def on_save_skin(self):
        save_skin = skin.skin_options()
        save_skin.save_skin()

    def on_import_skin(self, file_path=None):
        """Handles importing a skin file."""
        if file_path:
            print(f"Importing: {file_path}")  # Debugging purpose
            import_skin = skin.skin_options()
            import_skin.import_skin(file_path)

    def show_context_menu(self, pos):
        
        
        asset_instance = asset.asset_info()  # Create an instance of asset_info
        asset_dir = asset_instance.get_asset_dir()  # Call the method on the instance
        skin_dir_path = os.path.join(asset_dir, "rig_data", "skin_data")
        
        """Show right-click menu with available .jSkin files."""
        menu = QtWidgets.QMenu(self)
    
        # Get .jSkin files from the skin directory (without file extension)
        jskin_files = [os.path.splitext(f)[0] for f in os.listdir(skin_dir_path) if f.endswith(".jSkin")]
    
        if not jskin_files:
            menu.addAction("No jSkin files found").setEnabled(False)
        else:
            for file_name in jskin_files:
                action = menu.addAction(file_name)  # Show only filename without extension
                action.triggered.connect(lambda _, f=file_name: self.on_import_skin(os.path.join(skin_dir_path, f + ".jSkin")))
    
        menu.exec_(self.button_import_skin.mapToGlobal(pos))


    @classmethod
    def show_rig_tool_ui(cls):
        """Display the Rig Tool UI."""
        if cls.rig_tool_window is not None and cls.rig_tool_window.isVisible():
            cls.rig_tool_window.close()
        
        main_window = maya_main_window()
        cls.rig_tool_window = rig_tool(main_window)
        cls.rig_tool_window.show()

# Instantiate and show the UI
ui = rig_tool()
ui.show_rig_tool_ui()
