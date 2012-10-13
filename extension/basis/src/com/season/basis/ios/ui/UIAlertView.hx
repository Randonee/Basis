package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIAlertView extends UIView
{
	public function new(?type:Int = 8)
	{
		super(type);
	}
	
	

	public function textFieldAtIndex(arg1:Int):UIView
	{
		return cpp_uialertview_textFieldAtIndex(_tag, arg1);
	}
	private static var cpp_uialertview_textFieldAtIndex = Lib.load("basis", "uialertview_textFieldAtIndex", 2);

	public function show():Void
	{
		cpp_uialertview_show(_tag);
	}
	private static var cpp_uialertview_show = Lib.load("basis", "uialertview_show", 1);

	public function showWithAnimationType(arg1:Int):Void
	{
		cpp_uialertview_showWithAnimationType(_tag, arg1);
	}
	private static var cpp_uialertview_showWithAnimationType = Lib.load("basis", "uialertview_showWithAnimationType", 2);

	public function dismissWithClickedButtonIndex(arg1:Int, arg2:Bool):Void
	{
		cpp_uialertview_dismissWithClickedButtonIndex(_tag, arg1, arg2);
	}
	private static var cpp_uialertview_dismissWithClickedButtonIndex = Lib.load("basis", "uialertview_dismissWithClickedButtonIndex", 3);
	public var alertViewStyle(getAlertViewStyle, setAlertViewStyle) : Int;
	private function setAlertViewStyle(value:Int):Int
	{
		cpp_uialertview_setAlertViewStyle(_tag, value);
		return cpp_uialertview_getAlertViewStyle(_tag);
	}
	private static var cpp_uialertview_setAlertViewStyle = Lib.load("basis", "uialertview_setAlertViewStyle", 2);
	private function getAlertViewStyle():Int
	{
		return cpp_uialertview_getAlertViewStyle(_tag);
	}
	private static var cpp_uialertview_getAlertViewStyle = Lib.load("basis", "uialertview_getAlertViewStyle", 1);
	public var firstOtherButtonIndex(getFirstOtherButtonIndex, null) : Int;
		private function getFirstOtherButtonIndex():Int
	{
		return cpp_uialertview_getFirstOtherButtonIndex(_tag);
	}
	private static var cpp_uialertview_getFirstOtherButtonIndex = Lib.load("basis", "uialertview_getFirstOtherButtonIndex", 1);
	public var cancelButtonIndex(getCancelButtonIndex, setCancelButtonIndex) : Int;
	private function setCancelButtonIndex(value:Int):Int
	{
		cpp_uialertview_setCancelButtonIndex(_tag, value);
		return cpp_uialertview_getCancelButtonIndex(_tag);
	}
	private static var cpp_uialertview_setCancelButtonIndex = Lib.load("basis", "uialertview_setCancelButtonIndex", 2);
	private function getCancelButtonIndex():Int
	{
		return cpp_uialertview_getCancelButtonIndex(_tag);
	}
	private static var cpp_uialertview_getCancelButtonIndex = Lib.load("basis", "uialertview_getCancelButtonIndex", 1);

	public function defaultButtonIndex():Int
	{
		return cpp_uialertview_defaultButtonIndex(_tag);
	}
	private static var cpp_uialertview_defaultButtonIndex = Lib.load("basis", "uialertview_defaultButtonIndex", 1);

	public function setDefaultButtonIndex(arg1:Int):Void
	{
		cpp_uialertview_setDefaultButtonIndex(_tag, arg1);
	}
	private static var cpp_uialertview_setDefaultButtonIndex = Lib.load("basis", "uialertview_setDefaultButtonIndex", 2);
	public var visible(getVisible, null) : Bool;
		private function getVisible():Bool
	{
		return cpp_uialertview_getVisible(_tag);
	}
	private static var cpp_uialertview_getVisible = Lib.load("basis", "uialertview_getVisible", 1);
	public var numberOfButtons(getNumberOfButtons, null) : Int;
		private function getNumberOfButtons():Int
	{
		return cpp_uialertview_getNumberOfButtons(_tag);
	}
	private static var cpp_uialertview_getNumberOfButtons = Lib.load("basis", "uialertview_getNumberOfButtons", 1);

	public function buttonTitleAtIndex(arg1:Int):UIView
	{
		return cpp_uialertview_buttonTitleAtIndex(_tag, arg1);
	}
	private static var cpp_uialertview_buttonTitleAtIndex = Lib.load("basis", "uialertview_buttonTitleAtIndex", 2);

	public function addButtonWithTitle(arg1:UIView):Int
	{
		return cpp_uialertview_addButtonWithTitle(_tag, arg1.tag);
	}
	private static var cpp_uialertview_addButtonWithTitle = Lib.load("basis", "uialertview_addButtonWithTitle", 2);
	public var message(getMessage, setMessage) : String;
	private function setMessage(value:String):String
	{
		cpp_uialertview_setMessage(_tag, value);
		return cpp_uialertview_getMessage(_tag);
	}
	private static var cpp_uialertview_setMessage = Lib.load("basis", "uialertview_setMessage", 2);
	private function getMessage():String
	{
		return cpp_uialertview_getMessage(_tag);
	}
	private static var cpp_uialertview_getMessage = Lib.load("basis", "uialertview_getMessage", 1);
	public var title(getTitle, setTitle) : String;
	private function setTitle(value:String):String
	{
		cpp_uialertview_setTitle(_tag, value);
		return cpp_uialertview_getTitle(_tag);
	}
	private static var cpp_uialertview_setTitle = Lib.load("basis", "uialertview_setTitle", 2);
	private function getTitle():String
	{
		return cpp_uialertview_getTitle(_tag);
	}
	private static var cpp_uialertview_getTitle = Lib.load("basis", "uialertview_getTitle", 1);
	public var delegate(getDelegate, setDelegate) : UIView;
	private function setDelegate(value:UIView):UIView
	{
		cpp_uialertview_setDelegate(_tag, value);
		return cpp_uialertview_getDelegate(_tag);
	}
	private static var cpp_uialertview_setDelegate = Lib.load("basis", "uialertview_setDelegate", 2);
	private function getDelegate():UIView
	{
		return cpp_uialertview_getDelegate(_tag);
	}
	private static var cpp_uialertview_getDelegate = Lib.load("basis", "uialertview_getDelegate", 1);

	public function removeFromSuperview():Void
	{
		cpp_uialertview_removeFromSuperview(_tag);
	}
	private static var cpp_uialertview_removeFromSuperview = Lib.load("basis", "uialertview_removeFromSuperview", 1);

	public function becomeFirstResponder():Bool
	{
		return cpp_uialertview_becomeFirstResponder(_tag);
	}
	private static var cpp_uialertview_becomeFirstResponder = Lib.load("basis", "uialertview_becomeFirstResponder", 1);

	public function replaceAlert(arg1:UIView):Void
	{
		cpp_uialertview_replaceAlert(_tag, arg1.tag);
	}
	private static var cpp_uialertview_replaceAlert = Lib.load("basis", "uialertview_replaceAlert", 2);

	public function presentSheetFromButtonBar(arg1:UIView):Void
	{
		cpp_uialertview_presentSheetFromButtonBar(_tag, arg1.tag);
	}
	private static var cpp_uialertview_presentSheetFromButtonBar = Lib.load("basis", "uialertview_presentSheetFromButtonBar", 2);

	public function layout():Void
	{
		cpp_uialertview_layout(_tag);
	}
	private static var cpp_uialertview_layout = Lib.load("basis", "uialertview_layout", 1);

	public function numberOfLinesInTitle():Int
	{
		return cpp_uialertview_numberOfLinesInTitle(_tag);
	}
	private static var cpp_uialertview_numberOfLinesInTitle = Lib.load("basis", "uialertview_numberOfLinesInTitle", 1);

	public function runsModal():Bool
	{
		return cpp_uialertview_runsModal(_tag);
	}
	private static var cpp_uialertview_runsModal = Lib.load("basis", "uialertview_runsModal", 1);

	public function setRunsModal(arg1:Bool):Void
	{
		cpp_uialertview_setRunsModal(_tag, arg1);
	}
	private static var cpp_uialertview_setRunsModal = Lib.load("basis", "uialertview_setRunsModal", 2);

	public function blocksInteraction():Bool
	{
		return cpp_uialertview_blocksInteraction(_tag);
	}
	private static var cpp_uialertview_blocksInteraction = Lib.load("basis", "uialertview_blocksInteraction", 1);

	public function setBlocksInteraction(arg1:Bool):Void
	{
		cpp_uialertview_setBlocksInteraction(_tag, arg1);
	}
	private static var cpp_uialertview_setBlocksInteraction = Lib.load("basis", "uialertview_setBlocksInteraction", 2);

	public function suspendTag():Int
	{
		return cpp_uialertview_suspendTag(_tag);
	}
	private static var cpp_uialertview_suspendTag = Lib.load("basis", "uialertview_suspendTag", 1);

	public function setSuspendTag(arg1:Int):Void
	{
		cpp_uialertview_setSuspendTag(_tag, arg1);
	}
	private static var cpp_uialertview_setSuspendTag = Lib.load("basis", "uialertview_setSuspendTag", 2);

	public function dimsBackground():Bool
	{
		return cpp_uialertview_dimsBackground(_tag);
	}
	private static var cpp_uialertview_dimsBackground = Lib.load("basis", "uialertview_dimsBackground", 1);

	public function setDimsBackground(arg1:Bool):Void
	{
		cpp_uialertview_setDimsBackground(_tag, arg1);
	}
	private static var cpp_uialertview_setDimsBackground = Lib.load("basis", "uialertview_setDimsBackground", 2);

	public function setAlertSheetStyle(arg1:Int):Void
	{
		cpp_uialertview_setAlertSheetStyle(_tag, arg1);
	}
	private static var cpp_uialertview_setAlertSheetStyle = Lib.load("basis", "uialertview_setAlertSheetStyle", 2);

	public function forceHorizontalButtonsLayout():Bool
	{
		return cpp_uialertview_forceHorizontalButtonsLayout(_tag);
	}
	private static var cpp_uialertview_forceHorizontalButtonsLayout = Lib.load("basis", "uialertview_forceHorizontalButtonsLayout", 1);

	public function setForceHorizontalButtonsLayout(arg1:Bool):Void
	{
		cpp_uialertview_setForceHorizontalButtonsLayout(_tag, arg1);
	}
	private static var cpp_uialertview_setForceHorizontalButtonsLayout = Lib.load("basis", "uialertview_setForceHorizontalButtonsLayout", 2);

	public function alertSheetStyle():Int
	{
		return cpp_uialertview_alertSheetStyle(_tag);
	}
	private static var cpp_uialertview_alertSheetStyle = Lib.load("basis", "uialertview_alertSheetStyle", 1);

	public function numberOfRows():Int
	{
		return cpp_uialertview_numberOfRows(_tag);
	}
	private static var cpp_uialertview_numberOfRows = Lib.load("basis", "uialertview_numberOfRows", 1);

	public function setNumberOfRows(arg1:Int):Void
	{
		cpp_uialertview_setNumberOfRows(_tag, arg1);
	}
	private static var cpp_uialertview_setNumberOfRows = Lib.load("basis", "uialertview_setNumberOfRows", 2);

	public function dismissAnimated(arg1:Bool):Void
	{
		cpp_uialertview_dismissAnimated(_tag, arg1);
	}
	private static var cpp_uialertview_dismissAnimated = Lib.load("basis", "uialertview_dismissAnimated", 2);

	public function dismiss():Void
	{
		cpp_uialertview_dismiss(_tag);
	}
	private static var cpp_uialertview_dismiss = Lib.load("basis", "uialertview_dismiss", 1);

	public function setDimView(arg1:UIView):Void
	{
		cpp_uialertview_setDimView(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setDimView = Lib.load("basis", "uialertview_setDimView", 2);

	public function presentSheetToAboveView(arg1:UIView):Void
	{
		cpp_uialertview_presentSheetToAboveView(_tag, arg1.tag);
	}
	private static var cpp_uialertview_presentSheetToAboveView = Lib.load("basis", "uialertview_presentSheetToAboveView", 2);

	public function presentSheetInView(arg1:UIView):Void
	{
		cpp_uialertview_presentSheetInView(_tag, arg1.tag);
	}
	private static var cpp_uialertview_presentSheetInView = Lib.load("basis", "uialertview_presentSheetInView", 2);

	public function presentSheetFromAboveView(arg1:UIView):Void
	{
		cpp_uialertview_presentSheetFromAboveView(_tag, arg1.tag);
	}
	private static var cpp_uialertview_presentSheetFromAboveView = Lib.load("basis", "uialertview_presentSheetFromAboveView", 2);

	public function presentSheetFromBehindView(arg1:UIView):Void
	{
		cpp_uialertview_presentSheetFromBehindView(_tag, arg1.tag);
	}
	private static var cpp_uialertview_presentSheetFromBehindView = Lib.load("basis", "uialertview_presentSheetFromBehindView", 2);

	public function popupAlertAnimated(arg1:Bool):Void
	{
		cpp_uialertview_popupAlertAnimated(_tag, arg1);
	}
	private static var cpp_uialertview_popupAlertAnimated = Lib.load("basis", "uialertview_popupAlertAnimated", 2);

	public function popupAlertAnimated2(arg1:Bool, arg2:Int):Void
	{
		cpp_uialertview_popupAlertAnimated2(_tag, arg1, arg2);
	}
	private static var cpp_uialertview_popupAlertAnimated2 = Lib.load("basis", "uialertview_popupAlertAnimated2", 3);

	public function isBodyTextTruncated():Bool
	{
		return cpp_uialertview_isBodyTextTruncated(_tag);
	}
	private static var cpp_uialertview_isBodyTextTruncated = Lib.load("basis", "uialertview_isBodyTextTruncated", 1);

	public function layoutAnimated(arg1:Bool):Void
	{
		cpp_uialertview_layoutAnimated(_tag, arg1);
	}
	private static var cpp_uialertview_layoutAnimated = Lib.load("basis", "uialertview_layoutAnimated", 2);

	public function taglineTextLabel():UIView
	{
		return cpp_uialertview_taglineTextLabel(_tag);
	}
	private static var cpp_uialertview_taglineTextLabel = Lib.load("basis", "uialertview_taglineTextLabel", 1);

	public function bodyTextLabel():UIView
	{
		return cpp_uialertview_bodyTextLabel(_tag);
	}
	private static var cpp_uialertview_bodyTextLabel = Lib.load("basis", "uialertview_bodyTextLabel", 1);

	public function titleLabel():UIView
	{
		return cpp_uialertview_titleLabel(_tag);
	}
	private static var cpp_uialertview_titleLabel = Lib.load("basis", "uialertview_titleLabel", 1);

	public function showsOverSpringBoardAlerts():Bool
	{
		return cpp_uialertview_showsOverSpringBoardAlerts(_tag);
	}
	private static var cpp_uialertview_showsOverSpringBoardAlerts = Lib.load("basis", "uialertview_showsOverSpringBoardAlerts", 1);

	public function setShowsOverSpringBoardAlerts(arg1:Bool):Void
	{
		cpp_uialertview_setShowsOverSpringBoardAlerts(_tag, arg1);
	}
	private static var cpp_uialertview_setShowsOverSpringBoardAlerts = Lib.load("basis", "uialertview_setShowsOverSpringBoardAlerts", 2);

	public function tableView():UIView
	{
		return cpp_uialertview_tableView(_tag);
	}
	private static var cpp_uialertview_tableView = Lib.load("basis", "uialertview_tableView", 1);

	public function tableShouldShowMinimumContent():Bool
	{
		return cpp_uialertview_tableShouldShowMinimumContent(_tag);
	}
	private static var cpp_uialertview_tableShouldShowMinimumContent = Lib.load("basis", "uialertview_tableShouldShowMinimumContent", 1);

	public function setTableShouldShowMinimumContent(arg1:Bool):Void
	{
		cpp_uialertview_setTableShouldShowMinimumContent(_tag, arg1);
	}
	private static var cpp_uialertview_setTableShouldShowMinimumContent = Lib.load("basis", "uialertview_setTableShouldShowMinimumContent", 2);

	public function context():UIView
	{
		return cpp_uialertview_context(_tag);
	}
	private static var cpp_uialertview_context = Lib.load("basis", "uialertview_context", 1);

	public function setContext(arg1:UIView):Void
	{
		cpp_uialertview_setContext(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setContext = Lib.load("basis", "uialertview_setContext", 2);

	public function buttonCount():Int
	{
		return cpp_uialertview_buttonCount(_tag);
	}
	private static var cpp_uialertview_buttonCount = Lib.load("basis", "uialertview_buttonCount", 1);

	public function addButtonWithTitle2(arg1:UIView, arg2:UIView):UIView
	{
		return cpp_uialertview_addButtonWithTitle2(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uialertview_addButtonWithTitle2 = Lib.load("basis", "uialertview_addButtonWithTitle2", 3);

	public function destructiveButton():UIView
	{
		return cpp_uialertview_destructiveButton(_tag);
	}
	private static var cpp_uialertview_destructiveButton = Lib.load("basis", "uialertview_destructiveButton", 1);

	public function setDestructiveButton(arg1:UIView):Void
	{
		cpp_uialertview_setDestructiveButton(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setDestructiveButton = Lib.load("basis", "uialertview_setDestructiveButton", 2);

	public function buttonAtIndex(arg1:Int):UIView
	{
		return cpp_uialertview_buttonAtIndex(_tag, arg1);
	}
	private static var cpp_uialertview_buttonAtIndex = Lib.load("basis", "uialertview_buttonAtIndex", 2);

	public function defaultButton():UIView
	{
		return cpp_uialertview_defaultButton(_tag);
	}
	private static var cpp_uialertview_defaultButton = Lib.load("basis", "uialertview_defaultButton", 1);

	public function setDefaultButton(arg1:UIView):Void
	{
		cpp_uialertview_setDefaultButton(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setDefaultButton = Lib.load("basis", "uialertview_setDefaultButton", 2);

	public function keyboard():UIView
	{
		return cpp_uialertview_keyboard(_tag);
	}
	private static var cpp_uialertview_keyboard = Lib.load("basis", "uialertview_keyboard", 1);

	public function setKeyboardShowsOnPopup(arg1:Bool):Void
	{
		cpp_uialertview_setKeyboardShowsOnPopup(_tag, arg1);
	}
	private static var cpp_uialertview_setKeyboardShowsOnPopup = Lib.load("basis", "uialertview_setKeyboardShowsOnPopup", 2);

	public function textField():UIView
	{
		return cpp_uialertview_textField(_tag);
	}
	private static var cpp_uialertview_textField = Lib.load("basis", "uialertview_textField", 1);

	public function textFieldCount():Int
	{
		return cpp_uialertview_textFieldCount(_tag);
	}
	private static var cpp_uialertview_textFieldCount = Lib.load("basis", "uialertview_textFieldCount", 1);

	public function bodyMaxLineCount():Int
	{
		return cpp_uialertview_bodyMaxLineCount(_tag);
	}
	private static var cpp_uialertview_bodyMaxLineCount = Lib.load("basis", "uialertview_bodyMaxLineCount", 1);

	public function setBodyTextMaxLineCount(arg1:Int):Void
	{
		cpp_uialertview_setBodyTextMaxLineCount(_tag, arg1);
	}
	private static var cpp_uialertview_setBodyTextMaxLineCount = Lib.load("basis", "uialertview_setBodyTextMaxLineCount", 2);

	public function titleMaxLineCount():Int
	{
		return cpp_uialertview_titleMaxLineCount(_tag);
	}
	private static var cpp_uialertview_titleMaxLineCount = Lib.load("basis", "uialertview_titleMaxLineCount", 1);

	public function setTitleMaxLineCount(arg1:Int):Void
	{
		cpp_uialertview_setTitleMaxLineCount(_tag, arg1);
	}
	private static var cpp_uialertview_setTitleMaxLineCount = Lib.load("basis", "uialertview_setTitleMaxLineCount", 2);

	public function bodyText():UIView
	{
		return cpp_uialertview_bodyText(_tag);
	}
	private static var cpp_uialertview_bodyText = Lib.load("basis", "uialertview_bodyText", 1);

	public function subtitle():UIView
	{
		return cpp_uialertview_subtitle(_tag);
	}
	private static var cpp_uialertview_subtitle = Lib.load("basis", "uialertview_subtitle", 1);

	public function setSubtitle(arg1:UIView):Void
	{
		cpp_uialertview_setSubtitle(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setSubtitle = Lib.load("basis", "uialertview_setSubtitle", 2);

	public function setTaglineText(arg1:UIView):Void
	{
		cpp_uialertview_setTaglineText(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setTaglineText = Lib.load("basis", "uialertview_setTaglineText", 2);

	public function setBodyText(arg1:UIView):Void
	{
		cpp_uialertview_setBodyText(_tag, arg1.tag);
	}
	private static var cpp_uialertview_setBodyText = Lib.load("basis", "uialertview_setBodyText", 2);

	public function buttons():UIView
	{
		return cpp_uialertview_buttons(_tag);
	}
	private static var cpp_uialertview_buttons = Lib.load("basis", "uialertview_buttons", 1);

	public function requiresPortraitOrientation():Bool
	{
		return cpp_uialertview_requiresPortraitOrientation(_tag);
	}
	private static var cpp_uialertview_requiresPortraitOrientation = Lib.load("basis", "uialertview_requiresPortraitOrientation", 1);

	public function setGroupsTextFields(arg1:Bool):Void
	{
		cpp_uialertview_setGroupsTextFields(_tag, arg1);
	}
	private static var cpp_uialertview_setGroupsTextFields = Lib.load("basis", "uialertview_setGroupsTextFields", 2);

	public function groupsTextFields():Bool
	{
		return cpp_uialertview_groupsTextFields(_tag);
	}
	private static var cpp_uialertview_groupsTextFields = Lib.load("basis", "uialertview_groupsTextFields", 1);

	public function addTextFieldWithValue(arg1:UIView, arg2:UIView):UIView
	{
		return cpp_uialertview_addTextFieldWithValue(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uialertview_addTextFieldWithValue = Lib.load("basis", "uialertview_addTextFieldWithValue", 3);

}