package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITextField extends UIControl
{
	public function new(?type:Int = 4)
	{
		super(type);
	}
	
	
	public var rightViewMode(getRightViewMode, setRightViewMode) : Int;
	private function setRightViewMode(value:Int):Int
	{
		cpp_uitextfield_setRightViewMode(_tag, value);
		return cpp_uitextfield_getRightViewMode(_tag);
	}
	private static var cpp_uitextfield_setRightViewMode = Lib.load("basis", "uitextfield_setRightViewMode", 2);
	private function getRightViewMode():Int
	{
		return cpp_uitextfield_getRightViewMode(_tag);
	}
	private static var cpp_uitextfield_getRightViewMode = Lib.load("basis", "uitextfield_getRightViewMode", 1);
	public var leftViewMode(getLeftViewMode, setLeftViewMode) : Int;
	private function setLeftViewMode(value:Int):Int
	{
		cpp_uitextfield_setLeftViewMode(_tag, value);
		return cpp_uitextfield_getLeftViewMode(_tag);
	}
	private static var cpp_uitextfield_setLeftViewMode = Lib.load("basis", "uitextfield_setLeftViewMode", 2);
	private function getLeftViewMode():Int
	{
		return cpp_uitextfield_getLeftViewMode(_tag);
	}
	private static var cpp_uitextfield_getLeftViewMode = Lib.load("basis", "uitextfield_getLeftViewMode", 1);
	public var clearButtonMode(getClearButtonMode, setClearButtonMode) : Int;
	private function setClearButtonMode(value:Int):Int
	{
		cpp_uitextfield_setClearButtonMode(_tag, value);
		return cpp_uitextfield_getClearButtonMode(_tag);
	}
	private static var cpp_uitextfield_setClearButtonMode = Lib.load("basis", "uitextfield_setClearButtonMode", 2);
	private function getClearButtonMode():Int
	{
		return cpp_uitextfield_getClearButtonMode(_tag);
	}
	private static var cpp_uitextfield_getClearButtonMode = Lib.load("basis", "uitextfield_getClearButtonMode", 1);
	public var borderStyle(getBorderStyle, setBorderStyle) : Int;
	private function setBorderStyle(value:Int):Int
	{
		cpp_uitextfield_setBorderStyle(_tag, value);
		return cpp_uitextfield_getBorderStyle(_tag);
	}
	private static var cpp_uitextfield_setBorderStyle = Lib.load("basis", "uitextfield_setBorderStyle", 2);
	private function getBorderStyle():Int
	{
		return cpp_uitextfield_getBorderStyle(_tag);
	}
	private static var cpp_uitextfield_getBorderStyle = Lib.load("basis", "uitextfield_getBorderStyle", 1);

	public function setSelectionGranularity(arg1:Int):Void
	{
		cpp_uitextfield_setSelectionGranularity(_tag, arg1);
	}
	private static var cpp_uitextfield_setSelectionGranularity = Lib.load("basis", "uitextfield_setSelectionGranularity", 2);

	public function selectionGranularity():Int
	{
		return cpp_uitextfield_selectionGranularity(_tag);
	}
	private static var cpp_uitextfield_selectionGranularity = Lib.load("basis", "uitextfield_selectionGranularity", 1);

	public function setBaseWritingDirection(arg1:Int, arg2:UIView):Void
	{
		cpp_uitextfield_setBaseWritingDirection(_tag, arg1, arg2.tag);
	}
	private static var cpp_uitextfield_setBaseWritingDirection = Lib.load("basis", "uitextfield_setBaseWritingDirection", 3);

	public function baseWritingDirectionForPosition(arg1:UIView, arg2:Int):Int
	{
		return cpp_uitextfield_baseWritingDirectionForPosition(_tag, arg1.tag, arg2);
	}
	private static var cpp_uitextfield_baseWritingDirectionForPosition = Lib.load("basis", "uitextfield_baseWritingDirectionForPosition", 3);

	public function characterRangeByExtendingPosition(arg1:UIView, arg2:Int):UIView
	{
		return cpp_uitextfield_characterRangeByExtendingPosition(_tag, arg1.tag, arg2);
	}
	private static var cpp_uitextfield_characterRangeByExtendingPosition = Lib.load("basis", "uitextfield_characterRangeByExtendingPosition", 3);

	public function positionWithinRange(arg1:UIView, arg2:Int):UIView
	{
		return cpp_uitextfield_positionWithinRange(_tag, arg1.tag, arg2);
	}
	private static var cpp_uitextfield_positionWithinRange = Lib.load("basis", "uitextfield_positionWithinRange", 3);

	public function offsetFromPosition(arg1:UIView, arg2:UIView):Int
	{
		return cpp_uitextfield_offsetFromPosition(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uitextfield_offsetFromPosition = Lib.load("basis", "uitextfield_offsetFromPosition", 3);

	public function comparePosition(arg1:UIView, arg2:UIView):Int
	{
		return cpp_uitextfield_comparePosition(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uitextfield_comparePosition = Lib.load("basis", "uitextfield_comparePosition", 3);

	public function positionFromPosition(arg1:UIView, arg2:Int, arg3:Int):UIView
	{
		return cpp_uitextfield_positionFromPosition(_tag, arg1.tag, arg2, arg3);
	}
	private static var cpp_uitextfield_positionFromPosition = Lib.load("basis", "uitextfield_positionFromPosition", 4);

	public function positionFromPosition2(arg1:UIView, arg2:Int):UIView
	{
		return cpp_uitextfield_positionFromPosition2(_tag, arg1.tag, arg2);
	}
	private static var cpp_uitextfield_positionFromPosition2 = Lib.load("basis", "uitextfield_positionFromPosition2", 3);

	public function textRangeFromPosition(arg1:UIView, arg2:UIView):UIView
	{
		return cpp_uitextfield_textRangeFromPosition(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uitextfield_textRangeFromPosition = Lib.load("basis", "uitextfield_textRangeFromPosition", 3);

	public function unmarkText():Void
	{
		cpp_uitextfield_unmarkText(_tag);
	}
	private static var cpp_uitextfield_unmarkText = Lib.load("basis", "uitextfield_unmarkText", 1);

	public function replaceRange(arg1:UIView, arg2:UIView):Void
	{
		cpp_uitextfield_replaceRange(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uitextfield_replaceRange = Lib.load("basis", "uitextfield_replaceRange", 3);

	public function textInRange(arg1:UIView):UIView
	{
		return cpp_uitextfield_textInRange(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_textInRange = Lib.load("basis", "uitextfield_textInRange", 2);

	public function hasText():Bool
	{
		return cpp_uitextfield_hasText(_tag);
	}
	private static var cpp_uitextfield_hasText = Lib.load("basis", "uitextfield_hasText", 1);

	public function metadataDictionariesForDictationResults():UIView
	{
		return cpp_uitextfield_metadataDictionariesForDictationResults(_tag);
	}
	private static var cpp_uitextfield_metadataDictionariesForDictationResults = Lib.load("basis", "uitextfield_metadataDictionariesForDictationResults", 1);

	public function removeDictationResultPlaceholder(arg1:UIView, arg2:Bool):Void
	{
		cpp_uitextfield_removeDictationResultPlaceholder(_tag, arg1.tag, arg2);
	}
	private static var cpp_uitextfield_removeDictationResultPlaceholder = Lib.load("basis", "uitextfield_removeDictationResultPlaceholder", 3);

	public function insertDictationResultPlaceholder():UIView
	{
		return cpp_uitextfield_insertDictationResultPlaceholder(_tag);
	}
	private static var cpp_uitextfield_insertDictationResultPlaceholder = Lib.load("basis", "uitextfield_insertDictationResultPlaceholder", 1);

	public function insertDictationResult(arg1:UIView, arg2:UIView):Void
	{
		cpp_uitextfield_insertDictationResult(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uitextfield_insertDictationResult = Lib.load("basis", "uitextfield_insertDictationResult", 3);

	public function insertText(arg1:UIView):Void
	{
		cpp_uitextfield_insertText(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_insertText = Lib.load("basis", "uitextfield_insertText", 2);

	public function deleteBackward():Void
	{
		cpp_uitextfield_deleteBackward(_tag);
	}
	private static var cpp_uitextfield_deleteBackward = Lib.load("basis", "uitextfield_deleteBackward", 1);

	public function inPopover():Bool
	{
		return cpp_uitextfield_inPopover(_tag);
	}
	private static var cpp_uitextfield_inPopover = Lib.load("basis", "uitextfield_inPopover", 1);

	public function replace(arg1:UIView):Void
	{
		cpp_uitextfield_replace(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_replace = Lib.load("basis", "uitextfield_replace", 2);

	public function toggleUnderline(arg1:UIView):Void
	{
		cpp_uitextfield_toggleUnderline(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_toggleUnderline = Lib.load("basis", "uitextfield_toggleUnderline", 2);

	public function toggleItalics(arg1:UIView):Void
	{
		cpp_uitextfield_toggleItalics(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_toggleItalics = Lib.load("basis", "uitextfield_toggleItalics", 2);

	public function toggleBoldface(arg1:UIView):Void
	{
		cpp_uitextfield_toggleBoldface(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_toggleBoldface = Lib.load("basis", "uitextfield_toggleBoldface", 2);

	public function makeTextWritingDirectionLeftToRight(arg1:UIView):Void
	{
		cpp_uitextfield_makeTextWritingDirectionLeftToRight(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_makeTextWritingDirectionLeftToRight = Lib.load("basis", "uitextfield_makeTextWritingDirectionLeftToRight", 2);

	public function makeTextWritingDirectionRightToLeft(arg1:UIView):Void
	{
		cpp_uitextfield_makeTextWritingDirectionRightToLeft(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_makeTextWritingDirectionRightToLeft = Lib.load("basis", "uitextfield_makeTextWritingDirectionRightToLeft", 2);

	public function selectAll(arg1:UIView):Void
	{
		cpp_uitextfield_selectAll(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_selectAll = Lib.load("basis", "uitextfield_selectAll", 2);

	public function select(arg1:UIView):Void
	{
		cpp_uitextfield_select(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_select = Lib.load("basis", "uitextfield_select", 2);

	public function paste(arg1:UIView):Void
	{
		cpp_uitextfield_paste(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_paste = Lib.load("basis", "uitextfield_paste", 2);

	public function copy(arg1:UIView):Void
	{
		cpp_uitextfield_copy(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_copy = Lib.load("basis", "uitextfield_copy", 2);

	public function cut(arg1:UIView):Void
	{
		cpp_uitextfield_cut(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_cut = Lib.load("basis", "uitextfield_cut", 2);

	public function webView():UIView
	{
		return cpp_uitextfield_webView(_tag);
	}
	private static var cpp_uitextfield_webView = Lib.load("basis", "uitextfield_webView", 1);

	public function selectedAttributedText():UIView
	{
		return cpp_uitextfield_selectedAttributedText(_tag);
	}
	private static var cpp_uitextfield_selectedAttributedText = Lib.load("basis", "uitextfield_selectedAttributedText", 1);

	public function selectedText():UIView
	{
		return cpp_uitextfield_selectedText(_tag);
	}
	private static var cpp_uitextfield_selectedText = Lib.load("basis", "uitextfield_selectedText", 1);

	public function selectionRectsForRange(arg1:UIView):UIView
	{
		return cpp_uitextfield_selectionRectsForRange(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_selectionRectsForRange = Lib.load("basis", "uitextfield_selectionRectsForRange", 2);

	public function selectionView():UIView
	{
		return cpp_uitextfield_selectionView(_tag);
	}
	private static var cpp_uitextfield_selectionView = Lib.load("basis", "uitextfield_selectionView", 1);

	public function cancelAutoscroll():Void
	{
		cpp_uitextfield_cancelAutoscroll(_tag);
	}
	private static var cpp_uitextfield_cancelAutoscroll = Lib.load("basis", "uitextfield_cancelAutoscroll", 1);

	public function hasSelection():Bool
	{
		return cpp_uitextfield_hasSelection(_tag);
	}
	private static var cpp_uitextfield_hasSelection = Lib.load("basis", "uitextfield_hasSelection", 1);

	public function isEditable():Bool
	{
		return cpp_uitextfield_isEditable(_tag);
	}
	private static var cpp_uitextfield_isEditable = Lib.load("basis", "uitextfield_isEditable", 1);

	public function undoManager():UIView
	{
		return cpp_uitextfield_undoManager(_tag);
	}
	private static var cpp_uitextfield_undoManager = Lib.load("basis", "uitextfield_undoManager", 1);

	public function atomStyle():Int
	{
		return cpp_uitextfield_atomStyle(_tag);
	}
	private static var cpp_uitextfield_atomStyle = Lib.load("basis", "uitextfield_atomStyle", 1);

	public function setAtomStyle(arg1:Int):Void
	{
		cpp_uitextfield_setAtomStyle(_tag, arg1);
	}
	private static var cpp_uitextfield_setAtomStyle = Lib.load("basis", "uitextfield_setAtomStyle", 2);

	public function drawsAsAtom():Bool
	{
		return cpp_uitextfield_drawsAsAtom(_tag);
	}
	private static var cpp_uitextfield_drawsAsAtom = Lib.load("basis", "uitextfield_drawsAsAtom", 1);

	public function setDrawsAsAtom(arg1:Bool):Void
	{
		cpp_uitextfield_setDrawsAsAtom(_tag, arg1);
	}
	private static var cpp_uitextfield_setDrawsAsAtom = Lib.load("basis", "uitextfield_setDrawsAsAtom", 2);

	public function isUndoEnabled():Bool
	{
		return cpp_uitextfield_isUndoEnabled(_tag);
	}
	private static var cpp_uitextfield_isUndoEnabled = Lib.load("basis", "uitextfield_isUndoEnabled", 1);

	public function setUndoEnabled(arg1:Bool):Void
	{
		cpp_uitextfield_setUndoEnabled(_tag, arg1);
	}
	private static var cpp_uitextfield_setUndoEnabled = Lib.load("basis", "uitextfield_setUndoEnabled", 2);

	public function setTextCentersVertically(arg1:Bool):Void
	{
		cpp_uitextfield_setTextCentersVertically(_tag, arg1);
	}
	private static var cpp_uitextfield_setTextCentersVertically = Lib.load("basis", "uitextfield_setTextCentersVertically", 2);

	public function setTextCentersHorizontally(arg1:Bool):Void
	{
		cpp_uitextfield_setTextCentersHorizontally(_tag, arg1);
	}
	private static var cpp_uitextfield_setTextCentersHorizontally = Lib.load("basis", "uitextfield_setTextCentersHorizontally", 2);

	public function setLabel(arg1:UIView):Void
	{
		cpp_uitextfield_setLabel(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_setLabel = Lib.load("basis", "uitextfield_setLabel", 2);

	public function textLabel():UIView
	{
		return cpp_uitextfield_textLabel(_tag);
	}
	private static var cpp_uitextfield_textLabel = Lib.load("basis", "uitextfield_textLabel", 1);

	public function hasMarkedText():Bool
	{
		return cpp_uitextfield_hasMarkedText(_tag);
	}
	private static var cpp_uitextfield_hasMarkedText = Lib.load("basis", "uitextfield_hasMarkedText", 1);

	public function setBecomesFirstResponderOnClearButtonTap(arg1:Bool):Void
	{
		cpp_uitextfield_setBecomesFirstResponderOnClearButtonTap(_tag, arg1);
	}
	private static var cpp_uitextfield_setBecomesFirstResponderOnClearButtonTap = Lib.load("basis", "uitextfield_setBecomesFirstResponderOnClearButtonTap", 2);

	public function setIcon(arg1:UIView):Void
	{
		cpp_uitextfield_setIcon(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_setIcon = Lib.load("basis", "uitextfield_setIcon", 2);

	public function clearText():Void
	{
		cpp_uitextfield_clearText(_tag);
	}
	private static var cpp_uitextfield_clearText = Lib.load("basis", "uitextfield_clearText", 1);

	public function layoutTilesNow():Void
	{
		cpp_uitextfield_layoutTilesNow(_tag);
	}
	private static var cpp_uitextfield_layoutTilesNow = Lib.load("basis", "uitextfield_layoutTilesNow", 1);

	public function selectAll2():Void
	{
		cpp_uitextfield_selectAll2(_tag);
	}
	private static var cpp_uitextfield_selectAll2 = Lib.load("basis", "uitextfield_selectAll2", 1);

	public function setInactiveHasDimAppearance(arg1:Bool):Void
	{
		cpp_uitextfield_setInactiveHasDimAppearance(_tag, arg1);
	}
	private static var cpp_uitextfield_setInactiveHasDimAppearance = Lib.load("basis", "uitextfield_setInactiveHasDimAppearance", 2);

	public function setTextFont(arg1:UIView):Void
	{
		cpp_uitextfield_setTextFont(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_setTextFont = Lib.load("basis", "uitextfield_setTextFont", 2);

	public function drawBorder(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawBorder(_tag, arg1);
	}
	private static var cpp_uitextfield_drawBorder = Lib.load("basis", "uitextfield_drawBorder", 2);

	public function setClearButtonStyle(arg1:Int):Void
	{
		cpp_uitextfield_setClearButtonStyle(_tag, arg1);
	}
	private static var cpp_uitextfield_setClearButtonStyle = Lib.load("basis", "uitextfield_setClearButtonStyle", 2);

	public function setTextAutorresizesToFit(arg1:Bool):Void
	{
		cpp_uitextfield_setTextAutorresizesToFit(_tag, arg1);
	}
	private static var cpp_uitextfield_setTextAutorresizesToFit = Lib.load("basis", "uitextfield_setTextAutorresizesToFit", 2);

	public function setAutoresizesTextToFit(arg1:Bool):Void
	{
		cpp_uitextfield_setAutoresizesTextToFit(_tag, arg1);
	}
	private static var cpp_uitextfield_setAutoresizesTextToFit = Lib.load("basis", "uitextfield_setAutoresizesTextToFit", 2);

	public function documentFragmentForPasteboardItemAtIndex(arg1:Int):UIView
	{
		return cpp_uitextfield_documentFragmentForPasteboardItemAtIndex(_tag, arg1);
	}
	private static var cpp_uitextfield_documentFragmentForPasteboardItemAtIndex = Lib.load("basis", "uitextfield_documentFragmentForPasteboardItemAtIndex", 2);

	public function supportedPasteboardTypesForCurrentSelection():UIView
	{
		return cpp_uitextfield_supportedPasteboardTypesForCurrentSelection(_tag);
	}
	private static var cpp_uitextfield_supportedPasteboardTypesForCurrentSelection = Lib.load("basis", "uitextfield_supportedPasteboardTypesForCurrentSelection", 1);

	public function fieldEditor(arg1:UIView, arg2:UIView):Bool
	{
		return cpp_uitextfield_fieldEditor(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uitextfield_fieldEditor = Lib.load("basis", "uitextfield_fieldEditor", 3);

	public function fieldEditorDidChangeSelection(arg1:UIView):Void
	{
		cpp_uitextfield_fieldEditorDidChangeSelection(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_fieldEditorDidChangeSelection = Lib.load("basis", "uitextfield_fieldEditorDidChangeSelection", 2);

	public function selectAllFromFieldEditor(arg1:UIView):Void
	{
		cpp_uitextfield_selectAllFromFieldEditor(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_selectAllFromFieldEditor = Lib.load("basis", "uitextfield_selectAllFromFieldEditor", 2);

	public function fieldEditorDidChange(arg1:UIView):Void
	{
		cpp_uitextfield_fieldEditorDidChange(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_fieldEditorDidChange = Lib.load("basis", "uitextfield_fieldEditorDidChange", 2);

	public function customOverlayContainer():UIView
	{
		return cpp_uitextfield_customOverlayContainer(_tag);
	}
	private static var cpp_uitextfield_customOverlayContainer = Lib.load("basis", "uitextfield_customOverlayContainer", 1);

	public function keyboardInputChangedSelection(arg1:UIView):Void
	{
		cpp_uitextfield_keyboardInputChangedSelection(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_keyboardInputChangedSelection = Lib.load("basis", "uitextfield_keyboardInputChangedSelection", 2);

	public function keyboardInputChanged(arg1:UIView):Bool
	{
		return cpp_uitextfield_keyboardInputChanged(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_keyboardInputChanged = Lib.load("basis", "uitextfield_keyboardInputChanged", 2);

	public function keyboardInputShouldDelete(arg1:UIView):Bool
	{
		return cpp_uitextfield_keyboardInputShouldDelete(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_keyboardInputShouldDelete = Lib.load("basis", "uitextfield_keyboardInputShouldDelete", 2);

	public function keyboardInput(arg1:UIView, arg2:UIView, arg3:Bool):Bool
	{
		return cpp_uitextfield_keyboardInput(_tag, arg1.tag, arg2.tag, arg3);
	}
	private static var cpp_uitextfield_keyboardInput = Lib.load("basis", "uitextfield_keyboardInput", 4);

	public function willDetachFieldEditor(arg1:UIView):Void
	{
		cpp_uitextfield_willDetachFieldEditor(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_willDetachFieldEditor = Lib.load("basis", "uitextfield_willDetachFieldEditor", 2);

	public function attachFieldEditor(arg1:UIView):Void
	{
		cpp_uitextfield_attachFieldEditor(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_attachFieldEditor = Lib.load("basis", "uitextfield_attachFieldEditor", 2);

	public function willAttachFieldEditor(arg1:UIView):Void
	{
		cpp_uitextfield_willAttachFieldEditor(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_willAttachFieldEditor = Lib.load("basis", "uitextfield_willAttachFieldEditor", 2);

	public function drawPrefixInRect(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawPrefixInRect(_tag, arg1);
	}
	private static var cpp_uitextfield_drawPrefixInRect = Lib.load("basis", "uitextfield_drawPrefixInRect", 2);

	public function drawSuffixInRect(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawSuffixInRect(_tag, arg1);
	}
	private static var cpp_uitextfield_drawSuffixInRect = Lib.load("basis", "uitextfield_drawSuffixInRect", 2);

	public function drawPlaceholderInRect(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawPlaceholderInRect(_tag, arg1);
	}
	private static var cpp_uitextfield_drawPlaceholderInRect = Lib.load("basis", "uitextfield_drawPlaceholderInRect", 2);

	public function drawTextInRect(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawTextInRect(_tag, arg1);
	}
	private static var cpp_uitextfield_drawTextInRect = Lib.load("basis", "uitextfield_drawTextInRect", 2);
	public var allowsEditingTextAttributes(getAllowsEditingTextAttributes, setAllowsEditingTextAttributes) : Bool;
	private function setAllowsEditingTextAttributes(value:Bool):Bool
	{
		cpp_uitextfield_setAllowsEditingTextAttributes(_tag, value);
		return cpp_uitextfield_getAllowsEditingTextAttributes(_tag);
	}
	private static var cpp_uitextfield_setAllowsEditingTextAttributes = Lib.load("basis", "uitextfield_setAllowsEditingTextAttributes", 2);
	private function getAllowsEditingTextAttributes():Bool
	{
		return cpp_uitextfield_getAllowsEditingTextAttributes(_tag);
	}
	private static var cpp_uitextfield_getAllowsEditingTextAttributes = Lib.load("basis", "uitextfield_getAllowsEditingTextAttributes", 1);
	public var adjustsFontSizeToFitWidth(getAdjustsFontSizeToFitWidth, setAdjustsFontSizeToFitWidth) : Bool;
	private function setAdjustsFontSizeToFitWidth(value:Bool):Bool
	{
		cpp_uitextfield_setAdjustsFontSizeToFitWidth(_tag, value);
		return cpp_uitextfield_getAdjustsFontSizeToFitWidth(_tag);
	}
	private static var cpp_uitextfield_setAdjustsFontSizeToFitWidth = Lib.load("basis", "uitextfield_setAdjustsFontSizeToFitWidth", 2);
	private function getAdjustsFontSizeToFitWidth():Bool
	{
		return cpp_uitextfield_getAdjustsFontSizeToFitWidth(_tag);
	}
	private static var cpp_uitextfield_getAdjustsFontSizeToFitWidth = Lib.load("basis", "uitextfield_getAdjustsFontSizeToFitWidth", 1);

	public function setClearsPlaceholderOnBeginEditing(arg1:Bool):Void
	{
		cpp_uitextfield_setClearsPlaceholderOnBeginEditing(_tag, arg1);
	}
	private static var cpp_uitextfield_setClearsPlaceholderOnBeginEditing = Lib.load("basis", "uitextfield_setClearsPlaceholderOnBeginEditing", 2);

	public function clearsPlaceholderOnBeginEditing():Bool
	{
		return cpp_uitextfield_clearsPlaceholderOnBeginEditing(_tag);
	}
	private static var cpp_uitextfield_clearsPlaceholderOnBeginEditing = Lib.load("basis", "uitextfield_clearsPlaceholderOnBeginEditing", 1);
	public var clearsOnBeginEditing(getClearsOnBeginEditing, setClearsOnBeginEditing) : Bool;
	private function setClearsOnBeginEditing(value:Bool):Bool
	{
		cpp_uitextfield_setClearsOnBeginEditing(_tag, value);
		return cpp_uitextfield_getClearsOnBeginEditing(_tag);
	}
	private static var cpp_uitextfield_setClearsOnBeginEditing = Lib.load("basis", "uitextfield_setClearsOnBeginEditing", 2);
	private function getClearsOnBeginEditing():Bool
	{
		return cpp_uitextfield_getClearsOnBeginEditing(_tag);
	}
	private static var cpp_uitextfield_getClearsOnBeginEditing = Lib.load("basis", "uitextfield_getClearsOnBeginEditing", 1);
	public var placeholder(getPlaceholder, setPlaceholder) : String;
	private function setPlaceholder(value:String):String
	{
		cpp_uitextfield_setPlaceholder(_tag, value);
		return cpp_uitextfield_getPlaceholder(_tag);
	}
	private static var cpp_uitextfield_setPlaceholder = Lib.load("basis", "uitextfield_setPlaceholder", 2);
	private function getPlaceholder():String
	{
		return cpp_uitextfield_getPlaceholder(_tag);
	}
	private static var cpp_uitextfield_getPlaceholder = Lib.load("basis", "uitextfield_getPlaceholder", 1);

	public function createPlaceholderIfNecessary():Void
	{
		cpp_uitextfield_createPlaceholderIfNecessary(_tag);
	}
	private static var cpp_uitextfield_createPlaceholderIfNecessary = Lib.load("basis", "uitextfield_createPlaceholderIfNecessary", 1);

	public function finishedSettingPlaceholder():Void
	{
		cpp_uitextfield_finishedSettingPlaceholder(_tag);
	}
	private static var cpp_uitextfield_finishedSettingPlaceholder = Lib.load("basis", "uitextfield_finishedSettingPlaceholder", 1);

	public function createTextLabelWithTextColor(arg1:UIView):UIView
	{
		return cpp_uitextfield_createTextLabelWithTextColor(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_createTextLabelWithTextColor = Lib.load("basis", "uitextfield_createTextLabelWithTextColor", 2);

	public function createPlaceholderLabelWithFont(arg1:UIView, arg2:Int):UIView
	{
		return cpp_uitextfield_createPlaceholderLabelWithFont(_tag, arg1.tag, arg2);
	}
	private static var cpp_uitextfield_createPlaceholderLabelWithFont = Lib.load("basis", "uitextfield_createPlaceholderLabelWithFont", 3);
	public var textAlignment(getTextAlignment, setTextAlignment) : Int;
	private function setTextAlignment(value:Int):Int
	{
		cpp_uitextfield_setTextAlignment(_tag, value);
		return cpp_uitextfield_getTextAlignment(_tag);
	}
	private static var cpp_uitextfield_setTextAlignment = Lib.load("basis", "uitextfield_setTextAlignment", 2);
	private function getTextAlignment():Int
	{
		return cpp_uitextfield_getTextAlignment(_tag);
	}
	private static var cpp_uitextfield_getTextAlignment = Lib.load("basis", "uitextfield_getTextAlignment", 1);

	public function disableClearsOnInsertion():Void
	{
		cpp_uitextfield_disableClearsOnInsertion(_tag);
	}
	private static var cpp_uitextfield_disableClearsOnInsertion = Lib.load("basis", "uitextfield_disableClearsOnInsertion", 1);
	public var clearsOnInsertion(getClearsOnInsertion, setClearsOnInsertion) : Bool;
	private function setClearsOnInsertion(value:Bool):Bool
	{
		cpp_uitextfield_setClearsOnInsertion(_tag, value);
		return cpp_uitextfield_getClearsOnInsertion(_tag);
	}
	private static var cpp_uitextfield_setClearsOnInsertion = Lib.load("basis", "uitextfield_setClearsOnInsertion", 2);
	private function getClearsOnInsertion():Bool
	{
		return cpp_uitextfield_getClearsOnInsertion(_tag);
	}
	private static var cpp_uitextfield_getClearsOnInsertion = Lib.load("basis", "uitextfield_getClearsOnInsertion", 1);

	public function shadowColor():UIView
	{
		return cpp_uitextfield_shadowColor(_tag);
	}
	private static var cpp_uitextfield_shadowColor = Lib.load("basis", "uitextfield_shadowColor", 1);

	public function setShadowColor(arg1:UIView):Void
	{
		cpp_uitextfield_setShadowColor(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_setShadowColor = Lib.load("basis", "uitextfield_setShadowColor", 2);
	public var text(getText, setText) : String;
	private function setText(value:String):String
	{
		cpp_uitextfield_setText(_tag, value);
		return cpp_uitextfield_getText(_tag);
	}
	private static var cpp_uitextfield_setText = Lib.load("basis", "uitextfield_setText", 2);
	private function getText():String
	{
		return cpp_uitextfield_getText(_tag);
	}
	private static var cpp_uitextfield_getText = Lib.load("basis", "uitextfield_getText", 1);

	public function finishedSettingTextOrAttributedText():Void
	{
		cpp_uitextfield_finishedSettingTextOrAttributedText(_tag);
	}
	private static var cpp_uitextfield_finishedSettingTextOrAttributedText = Lib.load("basis", "uitextfield_finishedSettingTextOrAttributedText", 1);

	public function searchText():UIView
	{
		return cpp_uitextfield_searchText(_tag);
	}
	private static var cpp_uitextfield_searchText = Lib.load("basis", "uitextfield_searchText", 1);
	public var secureTextEntry(getSecureTextEntry, setSecureTextEntry) : Bool;
	private function setSecureTextEntry(value:Bool):Bool
	{
		cpp_uitextfield_setSecureTextEntry(_tag, value);
		return cpp_uitextfield_getSecureTextEntry(_tag);
	}
	private static var cpp_uitextfield_setSecureTextEntry = Lib.load("basis", "uitextfield_setSecureTextEntry", 2);
	private function getSecureTextEntry():Bool
	{
		return cpp_uitextfield_getSecureTextEntry(_tag);
	}
	private static var cpp_uitextfield_getSecureTextEntry = Lib.load("basis", "uitextfield_getSecureTextEntry", 1);

	public function forwardInvocation(arg1:UIView):Void
	{
		cpp_uitextfield_forwardInvocation(_tag, arg1.tag);
	}
	private static var cpp_uitextfield_forwardInvocation = Lib.load("basis", "uitextfield_forwardInvocation", 2);

	public function textInputTraits():UIView
	{
		return cpp_uitextfield_textInputTraits(_tag);
	}
	private static var cpp_uitextfield_textInputTraits = Lib.load("basis", "uitextfield_textInputTraits", 1);

	public function actualFont():UIView
	{
		return cpp_uitextfield_actualFont(_tag);
	}
	private static var cpp_uitextfield_actualFont = Lib.load("basis", "uitextfield_actualFont", 1);

	public function clearButton():UIView
	{
		return cpp_uitextfield_clearButton(_tag);
	}
	private static var cpp_uitextfield_clearButton = Lib.load("basis", "uitextfield_clearButton", 1);

	public function setAnimating(arg1:Bool):Void
	{
		cpp_uitextfield_setAnimating(_tag, arg1);
	}
	private static var cpp_uitextfield_setAnimating = Lib.load("basis", "uitextfield_setAnimating", 2);
	public var autocapitalizationType(getAutocapitalizationType, setAutocapitalizationType) : Int;
	private function setAutocapitalizationType(value:Int):Int
	{
		cpp_uitextfield_setAutocapitalizationType(_tag, value);
		return cpp_uitextfield_getAutocapitalizationType(_tag);
	}
	private static var cpp_uitextfield_setAutocapitalizationType = Lib.load("basis", "uitextfield_setAutocapitalizationType", 2);
	private function getAutocapitalizationType():Int
	{
		return cpp_uitextfield_getAutocapitalizationType(_tag);
	}
	private static var cpp_uitextfield_getAutocapitalizationType = Lib.load("basis", "uitextfield_getAutocapitalizationType", 1);
	public var autocorrectionType(getAutocorrectionType, setAutocorrectionType) : Int;
	private function setAutocorrectionType(value:Int):Int
	{
		cpp_uitextfield_setAutocorrectionType(_tag, value);
		return cpp_uitextfield_getAutocorrectionType(_tag);
	}
	private static var cpp_uitextfield_setAutocorrectionType = Lib.load("basis", "uitextfield_setAutocorrectionType", 2);
	private function getAutocorrectionType():Int
	{
		return cpp_uitextfield_getAutocorrectionType(_tag);
	}
	private static var cpp_uitextfield_getAutocorrectionType = Lib.load("basis", "uitextfield_getAutocorrectionType", 1);
	public var enablesReturnKeyAutomatically(getEnablesReturnKeyAutomatically, setEnablesReturnKeyAutomatically) : Bool;
	private function setEnablesReturnKeyAutomatically(value:Bool):Bool
	{
		cpp_uitextfield_setEnablesReturnKeyAutomatically(_tag, value);
		return cpp_uitextfield_getEnablesReturnKeyAutomatically(_tag);
	}
	private static var cpp_uitextfield_setEnablesReturnKeyAutomatically = Lib.load("basis", "uitextfield_setEnablesReturnKeyAutomatically", 2);
	private function getEnablesReturnKeyAutomatically():Bool
	{
		return cpp_uitextfield_getEnablesReturnKeyAutomatically(_tag);
	}
	private static var cpp_uitextfield_getEnablesReturnKeyAutomatically = Lib.load("basis", "uitextfield_getEnablesReturnKeyAutomatically", 1);
	public var keyboardAppearance(getKeyboardAppearance, setKeyboardAppearance) : Int;
	private function setKeyboardAppearance(value:Int):Int
	{
		cpp_uitextfield_setKeyboardAppearance(_tag, value);
		return cpp_uitextfield_getKeyboardAppearance(_tag);
	}
	private static var cpp_uitextfield_setKeyboardAppearance = Lib.load("basis", "uitextfield_setKeyboardAppearance", 2);
	private function getKeyboardAppearance():Int
	{
		return cpp_uitextfield_getKeyboardAppearance(_tag);
	}
	private static var cpp_uitextfield_getKeyboardAppearance = Lib.load("basis", "uitextfield_getKeyboardAppearance", 1);
	public var keyboardType(getKeyboardType, setKeyboardType) : Int;
	private function setKeyboardType(value:Int):Int
	{
		cpp_uitextfield_setKeyboardType(_tag, value);
		return cpp_uitextfield_getKeyboardType(_tag);
	}
	private static var cpp_uitextfield_setKeyboardType = Lib.load("basis", "uitextfield_setKeyboardType", 2);
	private function getKeyboardType():Int
	{
		return cpp_uitextfield_getKeyboardType(_tag);
	}
	private static var cpp_uitextfield_getKeyboardType = Lib.load("basis", "uitextfield_getKeyboardType", 1);
	public var returnKeyType(getReturnKeyType, setReturnKeyType) : Int;
	private function setReturnKeyType(value:Int):Int
	{
		cpp_uitextfield_setReturnKeyType(_tag, value);
		return cpp_uitextfield_getReturnKeyType(_tag);
	}
	private static var cpp_uitextfield_setReturnKeyType = Lib.load("basis", "uitextfield_setReturnKeyType", 2);
	private function getReturnKeyType():Int
	{
		return cpp_uitextfield_getReturnKeyType(_tag);
	}
	private static var cpp_uitextfield_getReturnKeyType = Lib.load("basis", "uitextfield_getReturnKeyType", 1);
	public var spellCheckingType(getSpellCheckingType, setSpellCheckingType) : Int;
	private function setSpellCheckingType(value:Int):Int
	{
		cpp_uitextfield_setSpellCheckingType(_tag, value);
		return cpp_uitextfield_getSpellCheckingType(_tag);
	}
	private static var cpp_uitextfield_setSpellCheckingType = Lib.load("basis", "uitextfield_setSpellCheckingType", 2);
	private function getSpellCheckingType():Int
	{
		return cpp_uitextfield_getSpellCheckingType(_tag);
	}
	private static var cpp_uitextfield_getSpellCheckingType = Lib.load("basis", "uitextfield_getSpellCheckingType", 1);

}