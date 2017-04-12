#AutoIt3Wrapper_Au3Check_Parameters=-q -d -w 1 -w 2 -w 3 -w- 4 -w 5 -w 6 -w- 7

; #INDEX# =======================================================================================================================
; Title .........: GUI Framework
; AutoIt Version : v3.3.14.1
; Description ...: GUI Framework for AutoIt.
; Author(s) .....: Damon Harris (TheDcoder)
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Enum $GUIFRAME_HANDLE, $GUIFRAME_TITLE, $GUIFRAME_WIDTH, $GUIFRAME_HEIGHT, $GUIFRAME_STYLE, $GUIFRAME_EXSTYLE, $GUIFRAME_CONTROLS
; ===============================================================================================================================

Func _GUIFrame_CreateFrame($sTitle = "GUI", $iWidth = 400, $iHeight = 400, $nStyle = -1, $nExStyle = -1)
	Local $aGUIFrame[7]
	_GUIFrame_Title($aGUIFrame, $sTitle)
	_GUIFrame_Width($aGUIFrame, $iWidth)
	_GUIFrame_Height($aGUIFrame, $iHeight)
	_GUIFrame_Style($aGUIFrame, $nStyle)
	_GUIFrame_ExStyle($aGUIFrame, $nExStyle)
	Local $aControls[0]
	$aGUIFrame[$GUIFRAME_CONTROLS] = $aControls
	Return $aGUIFrame
EndFunc

Func _GUIFrame_ExStyle(ByRef $aGUIFrame, $iExStyle = Default)
	If $iExStyle = Default Then Return $aGUIFrame[$GUIFRAME_EXSTYLE]
	$aGUIFrame[$GUIFRAME_EXSTYLE] = $iExStyle
	Return True
EndFunc

Func _GUIFrame_Title(ByRef $aGUIFrame, $sTitle = Default)
	If $sTitle = Default Then Return $aGUIFrame[$GUIFRAME_TITLE]
	$aGUIFrame[$GUIFRAME_TITLE] = $sTitle
	Return True
EndFunc

Func _GUIFrame_Height(ByRef $aGUIFrame, $iHeight = Default)
	If $iHeight = Default Then Return $aGUIFrame[$GUIFRAME_HEIGHT]
	$aGUIFrame[$GUIFRAME_HEIGHT] = $iHeight
	Return True
EndFunc

Func _GUIFrame_Style(ByRef $aGUIFrame, $iStyle = Default)
	If $iStyle = Default Then Return $aGUIFrame[$GUIFRAME_STYLE]
	$aGUIFrame[$GUIFRAME_STYLE] = $iStyle
	Return True
EndFunc

Func _GUIFrame_Width(ByRef $aGUIFrame, $iWidth = Default)
	If $iWidth = Default Then Return $aGUIFrame[$GUIFRAME_WIDTH]
	$aGUIFrame[$GUIFRAME_WIDTH] = $iWidth
	Return True
EndFunc
