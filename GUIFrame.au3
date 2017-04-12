; #INDEX# =======================================================================================================================
; Title .........: GUI Framework
; AutoIt Version : v3.3.14.1
; Description ...: GUI Framework for AutoIt.
; Author(s) .....: Damon Harris (TheDcoder)
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Enum $GUIFRAME_HANDLE, $GUIFRAME_TITLE, $GUIFRAME_WIDTH, $GUIFRAME_HEIGHT, $GUIFRAME_STYLE, $GUIFRAME_EXSTYLE
; ===============================================================================================================================

Func _GUIFrame_CreateFrame($sTitle = "GUI", $iWidth = 400, $iHeight = 400, $nStyle = -1, $nExStyle = -1)
	Local $aGUIFrame[6]
	_GUIFrame_Title($aGUIFrame, $sTitle)
	_GUIFrame_Width($aGUIFrame, $iWidth)
	_GUIFrame_Height($aGUIFrame, $iHeight)
	$aGUIFrame[$GUIFRAME_STYLE] = $nStyle
	$aGUIFrame[$GUIFRAME_EXSTYLE] = $nExStyle
	Return $aGUIFrame
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

Func _GUIFrame_Width(ByRef $aGUIFrame, $iWidth = Default)
	If $iWidth = Default Then Return $aGUIFrame[$GUIFRAME_WIDTH]
	$aGUIFrame[$GUIFRAME_WIDTH] = $iWidth
	Return True
EndFunc
