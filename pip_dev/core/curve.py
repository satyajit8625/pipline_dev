from maya import cmds as mc
      
# to change ovverirdeColor of obj 

"""
-------------TODO------------------

UI for this    

"""
def color_change(colorType ,colors):
        
    objects = mc.ls(sl=True)
    for obj in objects:
        shapes = mc.listRelatives(obj,c=True,shapes=True)
       
        if shapes:
            nodes = shapes
            print(nodes)
        else:
            nodes = [obj]
        if colorType == None:
            pass
        else:
            if colorType ==  "override":
                  
                if len(nodes) == 1 :
                    for node in nodes:
                        mc.setAttr("{}.overrideEnabled".format(node),True)
                        mc.setAttr("{}.overrideRGBColors".format(node),1)
                        mc.setAttr("{}.overrideColorRGB".format(node),colors[0],colors[1],colors[2])
                else:
                    
                    for node in nodes:
                        
                        
                        mc.setAttr("{}.overrideEnabled".format(node),True)
                        mc.setAttr("{}.overrideRGBColors".format(node),1)  
                        mc.setAttr("{}.overrideColorRGB".format(node),colors[0],colors[1],colors[2])
            
            elif colorType == "outliner":
                for node in objects:
                   
                    mc.setAttr("{}.useOutlinerColor".format(node),True)  
                    mc.setAttr("{}.outlinerColor".format(node),colors[0],colors[1],colors[2])
                    
