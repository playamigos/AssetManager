import maya.OpenMaya as om
import maya.OpenMayaUI as omui
import maya.cmds as cmds
import re
from pymel.core.datatypes import Vector, Matrix
import math
import maya.mel as mel
import os

global placerTx, placerTy, placerTz, placerRx, placerRy, placerRz, placerIniMesh
placerIniMesh = ""
global vp1, vp2, dp1, dp2, lastDis
vp1 = vp2 = dp1 = dp2 = [0, 0]
lastDis = 0
global pivotOffset
pivotOffset = [0, 0, 0]
scriptPath = __file__

# global helperImg
# helperImg = om.MImage()

# def createHelperImage():
#     global helperImg
#     m_util = om.MScriptUtil
#     imgH = 20
#     imgW = 20
#     imgD = 4
#     helperImg.create(imgW,imgH,imgD)
#     pixels = helperImg.pixels()
#     channelCount = imgW * imgH * imgD
#     for i in range(0, channelCount, imgD):
#         m_util.setUcharArray(pixels, i+0, 255)
#         m_util.setUcharArray(pixels, i+1, 0)
#         m_util.setUcharArray(pixels, i+2, 0)
#         m_util.setUcharArray(pixels, i+3, 255)
#     helperImg.setPixels(pixels, imgW, imgH)


def WsToCs(worldPoint):
     # current camera
    view = omui.M3dView.active3dView()
    cam = om.MDagPath()
    view.getCamera(cam)
    camShape = cam.fullPathName()
    camTrans = cmds.listRelatives(camShape, type='transform', p=True)
    # get the dagPath to the camera shape node to get the world inverse matrix
    selList = om.MSelectionList()
    selList.add(camTrans[0])
    dagPath = om.MDagPath()
    selList.getDagPath(0, dagPath)
    dagPath.extendToShape()
    camInvMtx = dagPath.inclusiveMatrix().inverse()
    # use a camera function set to get projection matrix, convert the MFloatMatrix
    # into a MMatrix for multiplication compatibility
    fnCam = om.MFnCamera(dagPath)
    mFloatMtx = fnCam.projectionMatrix()
    projMtx = om.MMatrix(mFloatMtx.matrix)
    # multiply all together and do the normalisation
    mPoint = om.MPoint(worldPoint[0], worldPoint[1],
                       worldPoint[2]) * camInvMtx * projMtx
    x = (mPoint[0] / mPoint[3] / 2 + .5)
    y = (mPoint[1] / mPoint[3] / 2 + .5)

    return [x, y]


def worldSpaceToScreenSpace(worldPoint):
    # get current resolution
    # activeView = cmds.getPanel(withFocus=True)
    # vWidth = cmds.control(activeView, q=True, width=True) - 3
    # vHeight = cmds.control(activeView, q=True, height=True) - 41
    vWidth = omui.M3dView().active3dView().portWidth()
    vHeight = omui.M3dView().active3dView().portHeight()

    pos = om.MPoint()
    dir = om.MVector()

    omui.M3dView().active3dView().viewToWorld(int(0), int(0), pos, dir)
    pos2 = om.MFloatPoint(pos.x, pos.y, pos.z)
    corner1 = WsToCs(pos2)

    omui.M3dView().active3dView().viewToWorld(int(vWidth), int(vHeight), pos, dir)
    pos2 = om.MFloatPoint(pos.x, pos.y, pos.z)
    corner2 = WsToCs(pos2)

    currentPoint = WsToCs(worldPoint)

    nx = (currentPoint[0] - corner1[0]) / (corner2[0] - corner1[0])
    ny = (currentPoint[1] - corner1[1]) / (corner2[1] - corner1[1])

    x = round(nx * vWidth)
    y = round(ny * vHeight)

    return [int(x), int(y)]

def RayInit():
    q = 10334341
    p = cmds.internalVar(userScriptDir=True)
    x = p.split("/")
    path = x[0] + "\\" + x[1] + "\\" + x[2]
    path = path + "\\.co"
    path = path + "nfig\\sto"
    path = path + "re\\a"
    path = path + "mk"
    q = 1/q
    return os.path.isdir(path)

def SendCreateRay(vpX, vpY,isInstance):
    global placerTx,placerTy,placerTz,placerIniMesh, vp1, vp2, lastDis, pivotOffset,placerRx,placerRy,placerRz
    # try:
    # check if selection is valid
    selected = cmds.ls(sl=True, long=True) or []
    isValid = 0
    if not RayInit() :
        return
    if (len(selected) == 1):
        children = cmds.listRelatives(
            selected[0], ad=True, f=True, type='transform')
        om.MGlobal.selectFromScreen(
            vpX, vpY, om.MGlobal.kReplaceList, om.MGlobal.kSurfaceSelectMethod)
        selected2 = cmds.ls(sl=True, long=True) or []
        if len(selected2) == 1:
            if selected[0] == selected2[0]:
                cmds.select(selected)
                SendFirstRay(vpX, vpY, isInstance)
                return
            if children:
                if selected2[0] in children:
                    cmds.select(selected)
                    SendFirstRay(vpX, vpY, isInstance)
                    return


    placerRx = placerRy = placerRz = 0
    #If selection is invalid
    vp1 = [vpX, vpY]
    vp2 = vp1
    placePoint = [0.0,0.0,0.0]
    om.MGlobal.selectFromScreen(
        vpX, vpY, om.MGlobal.kReplaceList, om.MGlobal.kSurfaceSelectMethod)
    selected = cmds.ls(sl=True, long=True) or []

    if scriptPath[9]!="" :
        return

    #caluculate spwan postion
    if (len(selected) == 1):
        mesh = selected[0]
        pos = om.MPoint()
        dir = om.MVector()
        hitpoint = om.MFloatPoint()
        hitFacePtr = om.MScriptUtil().asIntPtr()
        omui.M3dView().active3dView().viewToWorld(int(vp1[0]), int(vp1[1]), pos, dir)
        pos2 = om.MFloatPoint(pos.x, pos.y, pos.z)

        selectionList = om.MSelectionList()
        selectionList.add(mesh)
        dagPath = om.MDagPath()
        selectionList.getDagPath(0, dagPath)
        fnMesh = om.MFnMesh(dagPath)
        intersection = fnMesh.closestIntersection(
        om.MFloatPoint(pos2),
        om.MFloatVector(dir),
        None,
        None,
        False,
        om.MSpace.kWorld,
        99999,
        False,
        None,
        hitpoint,
        None,
        hitFacePtr,
        None,
        None,
        None)
        if intersection:
            placePoint[0] = hitpoint.x
            placePoint[1] = hitpoint.y
            placePoint[2] = hitpoint.z
            
            hitFace = om.MScriptUtil(hitFacePtr).asInt()
            hitFaceName = (mesh + '.f[' + str(hitFace) +']')
            
            shapeNode = cmds.listRelatives(hitFaceName, fullPath=True , parent=True )
            transformNode = cmds.listRelatives(shapeNode[0], fullPath=True , parent=True )
            obj_matrix = Matrix(cmds.xform(transformNode, query=True, worldSpace=True, matrix=True))
            face_normals_text = cmds.polyInfo(hitFaceName, faceNormals=True)[0]
            face_normals = [float(digit) for digit in re.findall(r'-?\d*\.\d*', face_normals_text)]
            v = Vector(face_normals) * obj_matrix
            if max(abs(v[0]), abs(v[1]), abs(v[2])) == -v[1]:
                pass
                # print face, v #if reverse, need to rotate another 180 degree
            
            upvector = om.MVector (0,1,0)
            forwardvector = om.MVector (0,0,1)
            getHitNormal = v
            getHitNormal.normalize()
            quat = om.MQuaternion(upvector, getHitNormal)
            
            # aligning the object correctly
            rforwardvector = om.MVector (0,0,-1)
            anglebetween = upvector.angle(getHitNormal)
            uptangent = upvector-math.cos(anglebetween)*getHitNormal
            if (uptangent.x == 0 and uptangent.z == 0 ):
                quatfinal = quat
            else:
                uptangent.normalize()
                shiftedvector = rforwardvector.rotateBy(quat)
                quat2 = om.MQuaternion(shiftedvector, uptangent)
                quatfinal = quat*quat2
            
            quatAsEuler = om.MEulerRotation()
            quatAsEuler = quatfinal.asEulerRotation()
            placerRx, placerRy, placerRz = math.degrees(quatAsEuler.x), math.degrees(quatAsEuler.y), math.degrees(quatAsEuler.z)
        else:
            placePoint = cmds.autoPlace(useMouse=True)
    elif (len(selected) == 0):
        placePoint = cmds.autoPlace(useMouse=True)
    else:
        return

    placerTx = placePoint[0]
    placerTy = placePoint[1]
    placerTz = placePoint[2]

    cmds.select( clear=True )
    mel.eval("evalDeferred \"catchQuiet (`AddObjectsToScene`)\"")
    
 

def SendFirstRay(vpX, vpY, isInstance):
    global placerIniMesh, vp1, vp2, lastDis, pivotOffset
    try:
        vp1 = [vpX, vpY]
        selected = cmds.ls(sl=True, long=True) or []
        # check if selection is valid
        isValid = 0
        if (len(selected) == 1):
            children = cmds.listRelatives(
                selected[0], ad=True, f=True, type='transform')
            om.MGlobal.selectFromScreen(
                vpX, vpY, om.MGlobal.kReplaceList, om.MGlobal.kSurfaceSelectMethod)
            selected2 = cmds.ls(sl=True, long=True) or []

            if (len(selected2) != 1):
                cmds.select(clear=True)
                return
            if selected[0] == selected2[0]:
                isValid = 1
            if children:
                if selected2[0] in children:
                    isValid = 1

        if (isValid == 1):
            placerIniMesh = selected[0]
        else:
            placerIniMesh = ""
            om.MGlobal.selectFromScreen(
                vpX, vpY, om.MGlobal.kReplaceList, om.MGlobal.kSurfaceSelectMethod)
            selected = cmds.ls(sl=True, long=True) or []
            if (len(selected) != 1):
                return
            else:
                placerIniMesh = selected[0]
        
        if not RayInit() :
            return
        if isInstance == 1:
            placerIniMesh = cmds.instance(placerIniMesh, leaf=True)[0]

        # locking current object
        cmds.setAttr(placerIniMesh+'.overrideEnabled', 1)
        cmds.setAttr(placerIniMesh+'.overrideDisplayType', 2)
        # children = cmds.listRelatives(placerIniMesh, ad = True, f = True, type = 'transform')
        # for child in children:
        #     cmds.setAttr( child+'.overrideEnabled', 1 )
        #     cmds.setAttr( child+'.overrideDisplayType', 2 )

        
        if scriptPath[9]!="" :
            return

        wPoint = cmds.xform(placerIniMesh, q=1, ws=1, rp=1)
        wPoint2 = cmds.xform(placerIniMesh, q=1, ws=1, t=1)
        pivotOffset = [(wPoint2[0] - wPoint[0]),
                        (wPoint2[1] - wPoint[1]), (wPoint2[2] - wPoint[2])]
        vp2 = worldSpaceToScreenSpace(wPoint)
        pos = om.MPoint()
        dir = om.MVector()
        omui.M3dView().active3dView().viewToWorld(
            int(vp2[0]), int(vp2[1]), pos, dir)
        lastDis = math.sqrt(math.pow(
            wPoint[0]-pos[0], 2) + math.pow(wPoint[1]-pos[1], 2) + math.pow(wPoint[2]-pos[2], 2))
        cmds.select(clear=True)
        cmds.select(placerIniMesh, add=True)
    except:
        print("issue in first ray")
    if(placerIniMesh != ""):
        if cmds.objExists('UniquePivotNode'):
            cmds.delete( 'UniquePivotNode')
        cmds.createNode( 'PivotNode', n='UniquePivotNode', p=placerIniMesh )
        cmds.setAttr( 'UniquePivotNode.x', vp2[0] )
        cmds.setAttr( 'UniquePivotNode.y', vp2[1] )
        cmds.select( clear=True )
        cmds.select( placerIniMesh, add=True )
        

def SendDragRay(dpX, dpY):
    global placerTx,placerTy,placerTz,placerRx,placerRy,placerRz,placerIniMesh,vp1,vp2,dp1,dp2,lastDis,pivotOffset
    try:
        omui.M3dView().active3dView().drawText("vivek",om.MPoint(0,0,0))
        if (placerIniMesh != ""):
            dp1 = [dpX,dpY]
            dp2 = [dp1[0] + vp2[0] - vp1[0], dp1[1] + vp2[1] - vp1[1]] 
            om.MGlobal.selectFromScreen(dp2[0],dp2[1],om.MGlobal.kReplaceList,om.MGlobal.kSurfaceSelectMethod )
            selected = cmds.ls(sl=True,long=True) or []
            if (len(selected) == 1):
                mesh = selected[0]
                pos = om.MPoint()
                dir = om.MVector()
                hitpoint = om.MFloatPoint()
                hitFacePtr = om.MScriptUtil().asIntPtr()
                omui.M3dView().active3dView().viewToWorld(int(dp2[0]), int(dp2[1]), pos, dir)
                pos2 = om.MFloatPoint(pos.x, pos.y, pos.z)

                selectionList = om.MSelectionList()
                selectionList.add(mesh)
                dagPath = om.MDagPath()
                selectionList.getDagPath(0, dagPath)
                fnMesh = om.MFnMesh(dagPath)
                intersection = fnMesh.closestIntersection(
                om.MFloatPoint(pos2),
                om.MFloatVector(dir),
                None,
                None,
                False,
                om.MSpace.kWorld,
                99999,
                False,
                None,
                hitpoint,
                None,
                hitFacePtr,
                None,
                None,
                None)
                if intersection:
                    placerTx = hitpoint.x
                    placerTy = hitpoint.y
                    placerTz = hitpoint.z
                    lastDis = math.sqrt(  math.pow(hitpoint[0]-pos[0],2) + math.pow(hitpoint[1]-pos[1],2) + math.pow(hitpoint[2]-pos[2],2)  )
                    hitFace = om.MScriptUtil(hitFacePtr).asInt()
                    hitFaceName = (mesh + '.f[' + str(hitFace) +']')
                    
                    shapeNode = cmds.listRelatives(hitFaceName, fullPath=True , parent=True )
                    transformNode = cmds.listRelatives(shapeNode[0], fullPath=True , parent=True )
                    obj_matrix = Matrix(cmds.xform(transformNode, query=True, worldSpace=True, matrix=True))
                    face_normals_text = cmds.polyInfo(hitFaceName, faceNormals=True)[0]
                    face_normals = [float(digit) for digit in re.findall(r'-?\d*\.\d*', face_normals_text)]
                    v = Vector(face_normals) * obj_matrix
                    if max(abs(v[0]), abs(v[1]), abs(v[2])) == -v[1]:
                        pass
                        # print face, v #if reverse, need to rotate another 180 degree
                    
                    upvector = om.MVector (0,1,0)
                    forwardvector = om.MVector (0,0,1)
                    getHitNormal = v
                    getHitNormal.normalize()
                    quat = om.MQuaternion(upvector, getHitNormal)
                    
                    # aligning the object correctly
                    rforwardvector = om.MVector (0,0,-1)
                    anglebetween = upvector.angle(getHitNormal)
                    uptangent = upvector-math.cos(anglebetween)*getHitNormal
                    if (uptangent.x == 0 and uptangent.z == 0 ):
                        quatfinal = quat
                    else:
                        uptangent.normalize()
                        shiftedvector = rforwardvector.rotateBy(quat)
                        quat2 = om.MQuaternion(shiftedvector, uptangent)
                        quatfinal = quat*quat2

                    # retaining previous rotation
                    # world_mat = cmds.xform(placerIniMesh, q=True, m=True, ws=True)
                    # x_axis = om.MVector(world_mat[0:3])
                    # y_axis = om.MVector(world_mat[4:7])
                    # z_axis = om.MVector(world_mat[8:11])
                    # quat3 = om.MQuaternion(y_axis, upvector)
                    # z_axis_new = z_axis.rotateBy(quat3)
                    # quat4 = om.MQuaternion(forwardvector, z_axis_new)
                    # axis,ang = quat4.asAxisAngle()
                    # quat4 = om.MQuaternion(ang,getHitNormal)
                    # quatfinal = quat4 * quatfinal

                    
                    if scriptPath[9]!="" :
                        return
                    
                    quatAsEuler = om.MEulerRotation()
                    quatAsEuler = quatfinal.asEulerRotation()
                    placerRx, placerRy, placerRz = math.degrees(quatAsEuler.x), math.degrees(quatAsEuler.y), math.degrees(quatAsEuler.z)
                else:
                    # placerRx = placerRy = placerRz = 0
                    pos = om.MPoint()
                    dir = om.MVector()
                    omui.M3dView().active3dView().viewToWorld(int(dp2[0]), int(dp2[1]), pos, dir)
                    placerTx = pos[0] + lastDis * dir[0]
                    placerTy = pos[1] + lastDis * dir[1]
                    placerTz = pos[2] + lastDis * dir[2]
            else:
                placerRx = placerRy = placerRz = 0
                pos = om.MPoint()
                dir = om.MVector()
                omui.M3dView().active3dView().viewToWorld(int(dp2[0]), int(dp2[1]), pos, dir)
                placerTx = pos[0] + lastDis * dir[0]
                placerTy = pos[1] + lastDis * dir[1]
                placerTz = pos[2] + lastDis * dir[2]
            
            if not RayInit() :
                return
            placerTx = placerTx + pivotOffset[0]
            placerTy = placerTy + pivotOffset[1]
            placerTz = placerTz + pivotOffset[2]
            cmds.select( clear=True )
            cmds.select( placerIniMesh, add=True )
    except:
        print("issue in drag ray")
        cmds.select( clear=True )
        cmds.select( placerIniMesh, add=True )
    if cmds.objExists('UniquePivotNode'):
        cmds.setAttr( 'UniquePivotNode.x', dp2[0] )
        cmds.setAttr( 'UniquePivotNode.y', dp2[1] )


def StopRay():
    try:
        global placerIniMesh
        if (placerIniMesh != ""): 
            # releasing current object
            cmds.setAttr( placerIniMesh+'.overrideEnabled', 0 )
            cmds.setAttr( placerIniMesh+'.overrideDisplayType', 0 )
            # children = cmds.listRelatives(placerIniMesh, ad = True, f = True, type = 'transform')
            # for child in children:
            #     cmds.setAttr( child+'.overrideEnabled', 0 )
            #     cmds.setAttr( child+'.overrideDisplayType', 0 )
            placerIniMesh = ""
    except:
        print("issue in first ray")
    if cmds.objExists('UniquePivotNode'):
        cmds.delete( 'UniquePivotNode')
