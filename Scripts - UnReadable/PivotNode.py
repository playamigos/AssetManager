import sys
import maya.api.OpenMaya as OpenMaya
import maya.api.OpenMayaUI as OpenMayaUI
import maya.api.OpenMayaAnim as OpenMayaAnim
import maya.api.OpenMayaRender as OpenMayaRender


class PivotNode(OpenMayaUI.MPxLocatorNode):
    id = OpenMaya.MTypeId( 0x82307 )
    drawDbClassification = "drawdb/geometry/PivotNode"
    drawRegistrantId = "PivotNodePlugin"
    
    x = None
    y = None
 
    @staticmethod
    def creator():
        return PivotNode()
 
    @staticmethod
    def initialize():
        unitFn = OpenMaya.MFnUnitAttribute()
        PivotNode.x = unitFn.create( "x", "x", OpenMaya.MFnUnitAttribute.kDistance )
        unitFn.default = OpenMaya.MDistance(200)
        OpenMaya.MPxNode.addAttribute( PivotNode.x )

        unitFn = OpenMaya.MFnUnitAttribute()
        PivotNode.y = unitFn.create( "y", "y", OpenMaya.MFnUnitAttribute.kDistance )
        unitFn.default = OpenMaya.MDistance(200)
        OpenMaya.MPxNode.addAttribute( PivotNode.y )
 
    def __init__(self):
        OpenMayaUI.MPxLocatorNode.__init__(self)
 
    def compute(self, plug, data):
        return None
 
    def draw(self, view, path, style, status):
        return None




 
def maya_useNewAPI():
 """
 The presence of this function tells Maya that the plugin produces, and
 expects to be passed, objects created using the Maya Python API 2.0.
 """
 pass
class PivotNodeData(OpenMaya.MUserData):
    def __init__(self):
        OpenMaya.MUserData.__init__(self, False) 
 
class PivotNodeDrawOverride(OpenMayaRender.MPxDrawOverride):
    @staticmethod
    def creator(obj):
        return PivotNodeDrawOverride(obj)
 
    @staticmethod
    def draw(context, data):
        return
 
    def __init__(self, obj):
        OpenMayaRender.MPxDrawOverride.__init__(self, obj, PivotNodeDrawOverride.draw)
 
    def supportedDrawAPIs(self):
        
        return OpenMayaRender.MRenderer.kOpenGL | OpenMayaRender.MRenderer.kDirectX11 | OpenMayaRender.MRenderer.kOpenGLCoreProfile
 
    def prepareForDraw(self, objPath, cameraPath, frameContext, oldData):
        
        data = oldData
        if not isinstance(data, PivotNodeData):
            data = PivotNodeData()
 
        return data
 
    def hasUIDrawables(self):
        return True

    
    def addUIDrawables(self, objPath, drawManager, frameContext, data):
            locatordata = data
            if not isinstance(locatordata, PivotNodeData):
                return
            currentNode = objPath.node()
            plug = OpenMaya.MPlug(currentNode, PivotNode.x)
            x = plug.asInt()
            plug = OpenMaya.MPlug(currentNode, PivotNode.y)
            y = plug.asInt()

            drawManager.beginDrawable()
            
            drawManager.setColor( OpenMaya.MColor((1, 1, 1, 1.0)) )
            drawManager.rect2d(OpenMaya.MPoint(x, y), OpenMaya.MVector(0.5,0.5,0), 6, 6, False)
            drawManager.setColor( OpenMaya.MColor((1, 0, 0, 1.0)) )
            drawManager.rect2d(OpenMaya.MPoint(x, y), OpenMaya.MVector(0.5,0.5,0), 3, 3, True)
    
            drawManager.endDrawable()

def initializePlugin(obj):
    plugin = OpenMaya.MFnPlugin(obj, "Dilen Shah", "1.0", "Any")
 
    try:
        plugin.registerNode("PivotNode", PivotNode.id, PivotNode.creator, PivotNode.initialize, OpenMaya.MPxNode.kLocatorNode, PivotNode.drawDbClassification)
    except:
        sys.stderr.write("Failed to register node\n")
        raise
 
    try:
        OpenMayaRender.MDrawRegistry.registerDrawOverrideCreator(PivotNode.drawDbClassification, PivotNode.drawRegistrantId, PivotNodeDrawOverride.creator)
    except:
        sys.stderr.write("Failed to register override\n")
        raise
 
def uninitializePlugin(obj):
    plugin = OpenMaya.MFnPlugin(obj)
 
    try:
        plugin.deregisterNode(PivotNode.id)
    except:
        sys.stderr.write("Failed to deregister node\n")
        pass
 
    try:
        OpenMayaRender.MDrawRegistry.deregisterDrawOverrideCreator(PivotNode.drawDbClassification, PivotNode.drawRegistrantId)
    except:
        sys.stderr.write("Failed to deregister override\n")
        pass