import sys
import os


class AssetData:


    def __init__(self):
        pass


    def get_departments(self,department = "mod",asset_type = "cahr"):

        project_path = r"/srv/Temp/satyajit/asset"
        
        departments = os.listdir(project_path)
        

        return[project_path,departments]

    def get_dipartment_dir(self, department ="rig"):

        

        project_path = self.get_departments()
        rig_department_dir_path = os.path.join(project_path,department)

        return rig_department_dir_path

  


    def get_asset_types(self):
        
        department_dir_path = self.get_dipartment_dir()
        asset_types = os.listdir(department_dir_path)
        
        return asset_types

    def get_asset_type_dir(self,asset_type="char"):
        
        department_dir_path = self.get_dipartment_dir()
        
        asset_type_dir_path = os.path.join(department_dir_path,asset_type) 
        pass

    def get_asset_name():
        

    def get_rig_meta_data_info(self, department = "rig",asset_type="char"):

        rig_dir_path = self.get_department_info(department="rig",asset_type = asset_type)


    """ def get_asset_name(department = "rig",asset_type="char"):

        asset_dir_path =    
        """




        