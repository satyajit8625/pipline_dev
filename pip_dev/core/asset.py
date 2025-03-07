import maya.cmds as mc

class asset_info:

    def __init__(self):
        pass

    def get_asset_info(self):
        # Get the asset name from the "rig" group's attribute
        rig_grp_name = "rig"
        # Check if the group exists
        if mc.objExists(rig_grp_name):
            # Check if the asset_name attribute exists
            if mc.attributeQuery("asset_name", node=rig_grp_name, exists=True):
                asset_name = mc.getAttr(f"{rig_grp_name}.asset_name")
                return asset_name
            else:
                print(f"Attribute 'asset_name' does not exist in the {rig_grp_name} group.")
                return None
        else:
            print(f"The group '{rig_grp_name}' does not exist in the scene.")
            return None

    def get_asset_dir(self):
        # Use the asset name from get_asset_info
        asset_name = self.get_asset_info()
        if asset_name:
            asset_dir = f"/srv/Temp/satyajit/asset/rig/char/{asset_name}"

            print(f"asset_dir : {asset_dir}")
            return asset_dir
        else:
            print("Could not retrieve asset name. Directory not generated.")


