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
	$aGUIFrame[$GUIFRAME_TITLE] = $sTitle
	$aGUIFrame[$GUIFRAME_WIDTH] = $iWidth
	$aGUIFrame[$GUIFRAME_HEIGHT] = $iHeight
	$aGUIFrame[$GUIFRAME_STYLE] = $nStyle
	$aGUIFrame[$GUIFRAME_EXSTYLE] = $nExStyle
EndFunc
