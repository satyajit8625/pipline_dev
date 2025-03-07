import os
import maya.cmds as mc
import pymel.core as pm
import importlib
import mgear.shifter.custom_step as cstp
from mgear.core import skin

from core import asset
from core import version_control

importlib.reload(asset)
importlib.reload(version_control)


class skin_options:
    def __init__(self):
        pass
    def save_skin(self):

        
        # Create an instance of asset_info and call get_asset_dir() method
        asset_instance = asset.asset_info()  # Create an instance of asset_info
        asset_dir = asset_instance.get_asset_dir()  # Call the method on the instance

        nodes = mc.ls(sl=True)

        for node in nodes:

            pyNode = pm.PyNode(node)
            file_name = f"{node}.jSkin"

            skin_dir_path = os.path.join(asset_dir,"rig_data","skin_data")
            skin_file_path = os.path.join(asset_dir,"rig_data","skin_data",file_name)
            version = version_control.VersionManager()
            version.update_version(node,skin_dir_path)

            skin.exportSkin(skin_file_path,[pyNode])  


    def import_skin(slef):

        asset_instance = asset.asset_info()  # Create an instance of asset_info
        asset_dir = asset_instance.get_asset_dir()  # Call the method on the instance
        skin_dir_path = os.path.join(asset_dir,"rig_data","skin_data")
        skin_files = [f for f in os.listdir(skin_dir_path) if f.endswith('.jSkin')]

        print(skin_files)
        #skin_dir_path = os.path.join(asset_dir,"rig_data","skin_data")
        
        #skin.importSkin(skin_dir_path)
        
