value uialertview_textFieldAtIndex(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view textFieldAtIndex:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_textFieldAtIndex, 2);
void uialertview_show(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view show];
	
}
DEFINE_PRIM (uialertview_show, 1);
void uialertview_showWithAnimationType(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view showWithAnimationType:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_showWithAnimationType, 2);
void uialertview_dismissWithClickedButtonIndex(value tag, value arg1, value arg2)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view dismissWithClickedButtonIndex:val_int(arg1) animated:val_bool(arg2) ];
	
}
DEFINE_PRIM (uialertview_dismissWithClickedButtonIndex, 3);
void uialertview_setAlertViewStyle(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.alertViewStyle = val_int(arg1);
	
}
DEFINE_PRIM (uialertview_setAlertViewStyle, 2);
value uialertview_getAlertViewStyle(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.alertViewStyle;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_getAlertViewStyle, 1);
value uialertview_getFirstOtherButtonIndex(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.firstOtherButtonIndex;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_getFirstOtherButtonIndex, 1);
void uialertview_setCancelButtonIndex(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.cancelButtonIndex = val_int(arg1);
	
}
DEFINE_PRIM (uialertview_setCancelButtonIndex, 2);
value uialertview_getCancelButtonIndex(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.cancelButtonIndex;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_getCancelButtonIndex, 1);
value uialertview_defaultButtonIndex(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view defaultButtonIndex];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_defaultButtonIndex, 1);
void uialertview_setDefaultButtonIndex(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setDefaultButtonIndex:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_setDefaultButtonIndex, 2);
value uialertview_getVisible(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.visible;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_getVisible, 1);
value uialertview_getNumberOfButtons(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.numberOfButtons;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_getNumberOfButtons, 1);
value uialertview_buttonTitleAtIndex(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view buttonTitleAtIndex:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_buttonTitleAtIndex, 2);
value uialertview_addButtonWithTitle(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	int returnVar = (int)[view addButtonWithTitle:view1 ];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_addButtonWithTitle, 2);
void uialertview_setMessage(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.message = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uialertview_setMessage, 2);
value uialertview_getMessage(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.message;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uialertview_getMessage, 1);
void uialertview_setTitle(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.title = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uialertview_setTitle, 2);
value uialertview_getTitle(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.title;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uialertview_getTitle, 1);
void uialertview_setDelegate(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.delegate = (view1);
	
}
DEFINE_PRIM (uialertview_setDelegate, 2);
value uialertview_getDelegate(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)view.delegate;
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_getDelegate, 1);
void uialertview_removeFromSuperview(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view removeFromSuperview];
	
}
DEFINE_PRIM (uialertview_removeFromSuperview, 1);
value uialertview_becomeFirstResponder(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view becomeFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_becomeFirstResponder, 1);
void uialertview_replaceAlert(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view replaceAlert:view1 ];
	
}
DEFINE_PRIM (uialertview_replaceAlert, 2);
void uialertview_presentSheetFromButtonBar(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view presentSheetFromButtonBar:view1 ];
	
}
DEFINE_PRIM (uialertview_presentSheetFromButtonBar, 2);
void uialertview_layout(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layout];
	
}
DEFINE_PRIM (uialertview_layout, 1);
value uialertview_numberOfLinesInTitle(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view numberOfLinesInTitle];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_numberOfLinesInTitle, 1);
value uialertview_runsModal(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view runsModal];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_runsModal, 1);
void uialertview_setRunsModal(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setRunsModal:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setRunsModal, 2);
value uialertview_blocksInteraction(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view blocksInteraction];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_blocksInteraction, 1);
void uialertview_setBlocksInteraction(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setBlocksInteraction:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setBlocksInteraction, 2);
value uialertview_suspendTag(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view suspendTag];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_suspendTag, 1);
void uialertview_setSuspendTag(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setSuspendTag:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_setSuspendTag, 2);
value uialertview_dimsBackground(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view dimsBackground];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_dimsBackground, 1);
void uialertview_setDimsBackground(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setDimsBackground:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setDimsBackground, 2);
void uialertview_setAlertSheetStyle(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAlertSheetStyle:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_setAlertSheetStyle, 2);
value uialertview_forceHorizontalButtonsLayout(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view forceHorizontalButtonsLayout];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_forceHorizontalButtonsLayout, 1);
void uialertview_setForceHorizontalButtonsLayout(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setForceHorizontalButtonsLayout:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setForceHorizontalButtonsLayout, 2);
value uialertview_alertSheetStyle(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view alertSheetStyle];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_alertSheetStyle, 1);
value uialertview_numberOfRows(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view numberOfRows];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_numberOfRows, 1);
void uialertview_setNumberOfRows(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNumberOfRows:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_setNumberOfRows, 2);
void uialertview_dismissAnimated(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view dismissAnimated:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_dismissAnimated, 2);
void uialertview_dismiss(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view dismiss];
	
}
DEFINE_PRIM (uialertview_dismiss, 1);
void uialertview_setDimView(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setDimView:view1 ];
	
}
DEFINE_PRIM (uialertview_setDimView, 2);
void uialertview_presentSheetToAboveView(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view presentSheetToAboveView:view1 ];
	
}
DEFINE_PRIM (uialertview_presentSheetToAboveView, 2);
void uialertview_presentSheetInView(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view presentSheetInView:view1 ];
	
}
DEFINE_PRIM (uialertview_presentSheetInView, 2);
void uialertview_presentSheetFromAboveView(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view presentSheetFromAboveView:view1 ];
	
}
DEFINE_PRIM (uialertview_presentSheetFromAboveView, 2);
void uialertview_presentSheetFromBehindView(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view presentSheetFromBehindView:view1 ];
	
}
DEFINE_PRIM (uialertview_presentSheetFromBehindView, 2);
void uialertview_popupAlertAnimated(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view popupAlertAnimated:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_popupAlertAnimated, 2);
void uialertview_popupAlertAnimated2(value tag, value arg1, value arg2)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view popupAlertAnimated:val_bool(arg1) animationType:val_int(arg2) ];
	
}
DEFINE_PRIM (uialertview_popupAlertAnimated2, 3);
value uialertview_isBodyTextTruncated(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isBodyTextTruncated];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_isBodyTextTruncated, 1);
void uialertview_layoutAnimated(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layoutAnimated:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_layoutAnimated, 2);
value uialertview_taglineTextLabel(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view taglineTextLabel];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_taglineTextLabel, 1);
value uialertview_bodyTextLabel(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view bodyTextLabel];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_bodyTextLabel, 1);
value uialertview_titleLabel(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view titleLabel];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_titleLabel, 1);
value uialertview_showsOverSpringBoardAlerts(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view showsOverSpringBoardAlerts];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_showsOverSpringBoardAlerts, 1);
void uialertview_setShowsOverSpringBoardAlerts(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setShowsOverSpringBoardAlerts:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setShowsOverSpringBoardAlerts, 2);
value uialertview_tableView(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view tableView];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_tableView, 1);
value uialertview_tableShouldShowMinimumContent(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view tableShouldShowMinimumContent];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_tableShouldShowMinimumContent, 1);
void uialertview_setTableShouldShowMinimumContent(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTableShouldShowMinimumContent:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setTableShouldShowMinimumContent, 2);
value uialertview_context(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view context];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_context, 1);
void uialertview_setContext(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setContext:view1 ];
	
}
DEFINE_PRIM (uialertview_setContext, 2);
value uialertview_buttonCount(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view buttonCount];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_buttonCount, 1);
value uialertview_addButtonWithTitle2(value tag, value tag1, value tag2)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIAlertView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	id returnVar = (id)[view addButtonWithTitle:view1 :view2 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_addButtonWithTitle2, 3);
value uialertview_destructiveButton(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view destructiveButton];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_destructiveButton, 1);
void uialertview_setDestructiveButton(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setDestructiveButton:view1 ];
	
}
DEFINE_PRIM (uialertview_setDestructiveButton, 2);
value uialertview_buttonAtIndex(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view buttonAtIndex:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_buttonAtIndex, 2);
value uialertview_defaultButton(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view defaultButton];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_defaultButton, 1);
void uialertview_setDefaultButton(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setDefaultButton:view1 ];
	
}
DEFINE_PRIM (uialertview_setDefaultButton, 2);
value uialertview_keyboard(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view keyboard];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_keyboard, 1);
void uialertview_setKeyboardShowsOnPopup(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setKeyboardShowsOnPopup:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setKeyboardShowsOnPopup, 2);
value uialertview_textField(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view textField];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_textField, 1);
value uialertview_textFieldCount(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view textFieldCount];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_textFieldCount, 1);
value uialertview_bodyMaxLineCount(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view bodyMaxLineCount];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_bodyMaxLineCount, 1);
void uialertview_setBodyTextMaxLineCount(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setBodyTextMaxLineCount:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_setBodyTextMaxLineCount, 2);
value uialertview_titleMaxLineCount(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view titleMaxLineCount];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uialertview_titleMaxLineCount, 1);
void uialertview_setTitleMaxLineCount(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTitleMaxLineCount:val_int(arg1) ];
	
}
DEFINE_PRIM (uialertview_setTitleMaxLineCount, 2);
value uialertview_bodyText(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view bodyText];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_bodyText, 1);
value uialertview_subtitle(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view subtitle];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_subtitle, 1);
void uialertview_setSubtitle(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setSubtitle:view1 ];
	
}
DEFINE_PRIM (uialertview_setSubtitle, 2);
void uialertview_setTaglineText(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTaglineText:view1 ];
	
}
DEFINE_PRIM (uialertview_setTaglineText, 2);
void uialertview_setBodyText(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setBodyText:view1 ];
	
}
DEFINE_PRIM (uialertview_setBodyText, 2);
value uialertview_buttons(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view buttons];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_buttons, 1);
value uialertview_requiresPortraitOrientation(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view requiresPortraitOrientation];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_requiresPortraitOrientation, 1);
void uialertview_setGroupsTextFields(value tag, value arg1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setGroupsTextFields:val_bool(arg1) ];
	
}
DEFINE_PRIM (uialertview_setGroupsTextFields, 2);
value uialertview_groupsTextFields(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view groupsTextFields];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_groupsTextFields, 1);
value uialertview_addTextFieldWithValue(value tag, value tag1, value tag2)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIAlertView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIAlertView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	id returnVar = (id)[view addTextFieldWithValue:view1 :view2 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uialertview_addTextFieldWithValue, 3);
value uibutton_getCurrentTitle(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.currentTitle;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uibutton_getCurrentTitle, 1);
value uibutton_attributedTitleForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view attributedTitleForState:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_attributedTitleForState, 2);
value uibutton_backgroundImageForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view backgroundImageForState:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_backgroundImageForState, 2);
value uibutton_imageForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view imageForState:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_imageForState, 2);
value uibutton_titleShadowColorForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view titleShadowColorForState:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_titleShadowColorForState, 2);
value uibutton_titleColorForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view titleColorForState:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_titleColorForState, 2);
value uibutton_titleForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view titleForState:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_titleForState, 2);
void uibutton_setAttributedTitle(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setAttributedTitle:view1 forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setAttributedTitle, 3);
void uibutton_setBackgroundImage(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setBackgroundImage:view1 forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setBackgroundImage, 3);
void uibutton_setImage(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setImage:view1 forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setImage, 3);
void uibutton_setTitleShadowColor(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTitleShadowColor:view1 forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitleShadowColor, 3);
void uibutton_setTitleColor(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTitleColor:view1 forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitleColor, 3);
void uibutton_setTitle(value tag, value arg1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTitle:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitle, 3);
value uibutton_getTitleLabel(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel* returnVar = (UILabel*)view.titleLabel;
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_getTitleLabel, 1);
void uibutton_setShowsTouchWhenHighlighted(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsTouchWhenHighlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uibutton_setShowsTouchWhenHighlighted, 2);
value uibutton_getShowsTouchWhenHighlighted(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsTouchWhenHighlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uibutton_getShowsTouchWhenHighlighted, 1);
void uibutton_setAdjustsImageWhenDisabled(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.adjustsImageWhenDisabled = val_bool(arg1);
	
}
DEFINE_PRIM (uibutton_setAdjustsImageWhenDisabled, 2);
value uibutton_getAdjustsImageWhenDisabled(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.adjustsImageWhenDisabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uibutton_getAdjustsImageWhenDisabled, 1);
void uibutton_setAdjustsImageWhenHighlighted(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.adjustsImageWhenHighlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uibutton_setAdjustsImageWhenHighlighted, 2);
value uibutton_getAdjustsImageWhenHighlighted(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.adjustsImageWhenHighlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uibutton_getAdjustsImageWhenHighlighted, 1);
void uibutton_setReversesTitleShadowWhenHighlighted(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.reversesTitleShadowWhenHighlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uibutton_setReversesTitleShadowWhenHighlighted, 2);
value uibutton_getReversesTitleShadowWhenHighlighted(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.reversesTitleShadowWhenHighlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uibutton_getReversesTitleShadowWhenHighlighted, 1);
value uibutton_getButtonType(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.buttonType;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uibutton_getButtonType, 1);
void uibutton_setLineBreakMode(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.lineBreakMode = val_int(arg1);
	
}
DEFINE_PRIM (uibutton_setLineBreakMode, 2);
value uibutton_getLineBreakMode(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.lineBreakMode;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uibutton_getLineBreakMode, 1);
value uibutton_image(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view image];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_image, 1);
void uibutton_setTitle2(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTitle:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] ];
	
}
DEFINE_PRIM (uibutton_setTitle2, 2);
value uibutton_title(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view title];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uibutton_title, 1);
void uibutton_crossfadeToImage(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view crossfadeToImage:view1 forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_crossfadeToImage, 3);
void uibutton_setBackgroundImage2(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setBackgroundImage:view1 forStates:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setBackgroundImage2, 3);
void uibutton_setImage2(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setImage:view1 forStates:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setImage2, 3);
void uibutton_setTitleShadowColor2(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTitleShadowColor:view1 forStates:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitleShadowColor2, 3);
void uibutton_setTitleColor2(value tag, value tag1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIButton *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTitleColor:view1 forStates:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitleColor2, 3);
void uibutton_setTitle3(value tag, value arg1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTitle:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] forStates:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitle3, 3);
void uibutton_setShowPressFeedback(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setShowPressFeedback:val_bool(arg1) ];
	
}
DEFINE_PRIM (uibutton_setShowPressFeedback, 2);
void uibutton_setDisabledDimsImage(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setDisabledDimsImage:val_bool(arg1) ];
	
}
DEFINE_PRIM (uibutton_setDisabledDimsImage, 2);
value uibutton_autosizesToFit(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view autosizesToFit];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uibutton_autosizesToFit, 1);
void uibutton_setAutosizesToFit(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAutosizesToFit:val_bool(arg1) ];
	
}
DEFINE_PRIM (uibutton_setAutosizesToFit, 2);
void uicontrol_sendActionsForControlEvents(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view sendActionsForControlEvents:val_int(arg1) ];
	
}
DEFINE_PRIM (uicontrol_sendActionsForControlEvents, 2);
value uicontrol_actionsForTarget(value tag, value tag1, value arg2)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIControl *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view actionsForTarget:view1 forControlEvent:val_int(arg2) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uicontrol_actionsForTarget, 3);
value uicontrol_allTargets(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view allTargets];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uicontrol_allTargets, 1);
void uicontrol_setSelected(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.selected = val_bool(arg1);
	
}
DEFINE_PRIM (uicontrol_setSelected, 2);
value uicontrol_getSelected(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.selected;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getSelected, 1);
void uicontrol_setContentHorizontalAlignment(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.contentHorizontalAlignment = val_int(arg1);
	
}
DEFINE_PRIM (uicontrol_setContentHorizontalAlignment, 2);
value uicontrol_getContentHorizontalAlignment(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.contentHorizontalAlignment;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uicontrol_getContentHorizontalAlignment, 1);
void uicontrol_setContentVerticalAlignment(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.contentVerticalAlignment = val_int(arg1);
	
}
DEFINE_PRIM (uicontrol_setContentVerticalAlignment, 2);
value uicontrol_getContentVerticalAlignment(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.contentVerticalAlignment;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uicontrol_getContentVerticalAlignment, 1);
void uicontrol_setHighlighted(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.highlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uicontrol_setHighlighted, 2);
value uicontrol_getHighlighted(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.highlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getHighlighted, 1);
void uicontrol_cancelTrackingWithEvent(value tag, value tag1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIControl *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view cancelTrackingWithEvent:view1 ];
	
}
DEFINE_PRIM (uicontrol_cancelTrackingWithEvent, 2);
void uicontrol_endTrackingWithTouch(value tag, value tag1, value tag2)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIControl *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIControl *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view endTrackingWithTouch:view1 :view2 ];
	
}
DEFINE_PRIM (uicontrol_endTrackingWithTouch, 3);
value uicontrol_continueTrackingWithTouch(value tag, value tag1, value tag2)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIControl *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIControl *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	BOOL returnVar = (BOOL)(int)[view continueTrackingWithTouch:view1 :view2 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_continueTrackingWithTouch, 3);
value uicontrol_beginTrackingWithTouch(value tag, value tag1, value tag2)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIControl *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIControl *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	BOOL returnVar = (BOOL)(int)[view beginTrackingWithTouch:view1 :view2 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_beginTrackingWithTouch, 3);
value uicontrol_getTouchInside(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.touchInside;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getTouchInside, 1);
value uicontrol_getState(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.state;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uicontrol_getState, 1);
value uicontrol_getTracking(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.tracking;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getTracking, 1);
void uicontrol_setTracking(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTracking:val_bool(arg1) ];
	
}
DEFINE_PRIM (uicontrol_setTracking, 2);
void uicontrol_removeTarget(value tag, value tag1, value arg2)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIControl *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view removeTarget:view1 forEvents:val_int(arg2) ];
	
}
DEFINE_PRIM (uicontrol_removeTarget, 3);
value uicontrol_hasOneOrMoreTargets(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasOneOrMoreTargets];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_hasOneOrMoreTargets, 1);
value uicontrol_requiresDisplayOnTracking(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view requiresDisplayOnTracking];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_requiresDisplayOnTracking, 1);
void uicontrol_setRequiresDisplayOnTracking(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setRequiresDisplayOnTracking:val_bool(arg1) ];
	
}
DEFINE_PRIM (uicontrol_setRequiresDisplayOnTracking, 2);
value uicontrol_touchDragged(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view touchDragged];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_touchDragged, 1);
value uicontrol_shouldTrack(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view shouldTrack];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_shouldTrack, 1);
value uicontrol_mouseInside(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view mouseInside];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_mouseInside, 1);
void uiimageview_setAnimationRepeatCount(value tag, value arg1)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.animationRepeatCount = val_int(arg1);
	
}
DEFINE_PRIM (uiimageview_setAnimationRepeatCount, 2);
value uiimageview_getAnimationRepeatCount(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.animationRepeatCount;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiimageview_getAnimationRepeatCount, 1);
value uiimageview_isAnimating(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isAnimating];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiimageview_isAnimating, 1);
void uiimageview_stopAnimating(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view stopAnimating];
	
}
DEFINE_PRIM (uiimageview_stopAnimating, 1);
void uiimageview_startAnimating(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view startAnimating];
	
}
DEFINE_PRIM (uiimageview_startAnimating, 1);
void uiimageview_setHighlighted(value tag, value arg1)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.highlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uiimageview_setHighlighted, 2);
value uiimageview_getHighlighted(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.highlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiimageview_getHighlighted, 1);
void uiimageview_setAnimating(value tag, value arg1)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAnimating:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiimageview_setAnimating, 2);
value uiimageview_useBlockyMagnificationInClassic(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view useBlockyMagnificationInClassic];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiimageview_useBlockyMagnificationInClassic, 1);
value uilabel_drawsUnderline(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view drawsUnderline];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_drawsUnderline, 1);
void uilabel_setDrawsUnderline(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setDrawsUnderline:val_bool(arg1) ];
	
}
DEFINE_PRIM (uilabel_setDrawsUnderline, 2);
value uilabel_letterpressStyle(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view letterpressStyle];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uilabel_letterpressStyle, 1);
void uilabel_setLetterpressStyle(value tag, value tag1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setLetterpressStyle:view1 ];
	
}
DEFINE_PRIM (uilabel_setLetterpressStyle, 2);
value uilabel_drawsLetterpress(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view drawsLetterpress];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_drawsLetterpress, 1);
void uilabel_setDrawsLetterpress(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setDrawsLetterpress:val_bool(arg1) ];
	
}
DEFINE_PRIM (uilabel_setDrawsLetterpress, 2);
void uilabel_setMarqueeRunning(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setMarqueeRunning:val_bool(arg1) ];
	
}
DEFINE_PRIM (uilabel_setMarqueeRunning, 2);
value uilabel_marqueeRunning(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view marqueeRunning];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_marqueeRunning, 1);
void uilabel_setMarqueeEnabled(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setMarqueeEnabled:val_bool(arg1) ];
	
}
DEFINE_PRIM (uilabel_setMarqueeEnabled, 2);
void uilabel_drawTextInRect(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawTextInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uilabel_drawTextInRect, 2);
void uilabel_setBaselineAdjustment(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.baselineAdjustment = val_int(arg1);
	
}
DEFINE_PRIM (uilabel_setBaselineAdjustment, 2);
value uilabel_getBaselineAdjustment(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.baselineAdjustment;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uilabel_getBaselineAdjustment, 1);
void uilabel_setAdjustsLetterSpacingToFitWidth(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.adjustsLetterSpacingToFitWidth = val_bool(arg1);
	
}
DEFINE_PRIM (uilabel_setAdjustsLetterSpacingToFitWidth, 2);
value uilabel_getAdjustsLetterSpacingToFitWidth(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.adjustsLetterSpacingToFitWidth;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_getAdjustsLetterSpacingToFitWidth, 1);
void uilabel_setNumberOfLines(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.numberOfLines = val_int(arg1);
	
}
DEFINE_PRIM (uilabel_setNumberOfLines, 2);
value uilabel_getNumberOfLines(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.numberOfLines;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uilabel_getNumberOfLines, 1);
void uilabel_setLineBreakMode(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.lineBreakMode = val_int(arg1);
	
}
DEFINE_PRIM (uilabel_setLineBreakMode, 2);
value uilabel_getLineBreakMode(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.lineBreakMode;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uilabel_getLineBreakMode, 1);
void uilabel_setHighlighted(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.highlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uilabel_setHighlighted, 2);
value uilabel_getHighlighted(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.highlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_getHighlighted, 1);
value uilabel_currentTextColor(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view currentTextColor];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uilabel_currentTextColor, 1);
void uilabel_setTextAlignment(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.textAlignment = val_int(arg1);
	
}
DEFINE_PRIM (uilabel_setTextAlignment, 2);
value uilabel_getTextAlignment(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.textAlignment;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uilabel_getTextAlignment, 1);
void uilabel_setAdjustsFontSizeToFitWidth(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.adjustsFontSizeToFitWidth = val_bool(arg1);
	
}
DEFINE_PRIM (uilabel_setAdjustsFontSizeToFitWidth, 2);
value uilabel_getAdjustsFontSizeToFitWidth(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.adjustsFontSizeToFitWidth;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_getAdjustsFontSizeToFitWidth, 1);
void uilabel_setText(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.text = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uilabel_setText, 2);
value uilabel_getText(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.text;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uilabel_getText, 1);
value uilabel_isTextFieldCenteredLabel(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isTextFieldCenteredLabel];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_isTextFieldCenteredLabel, 1);
void uilabel_drawContentsInRect(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawContentsInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uilabel_drawContentsInRect, 2);
value uilabel_centersHorizontally(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view centersHorizontally];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_centersHorizontally, 1);
void uilabel_setCentersHorizontally(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setCentersHorizontally:val_bool(arg1) ];
	
}
DEFINE_PRIM (uilabel_setCentersHorizontally, 2);
value uilabel_color(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view color];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uilabel_color, 1);
void uilabel_setColor(value tag, value tag1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setColor:view1 ];
	
}
DEFINE_PRIM (uilabel_setColor, 2);
value uilabel_autotrackTextToFit(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view autotrackTextToFit];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_autotrackTextToFit, 1);
void uilabel_setAutotrackTextToFit(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAutotrackTextToFit:val_bool(arg1) ];
	
}
DEFINE_PRIM (uilabel_setAutotrackTextToFit, 2);
value uiresponder_firstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view firstResponder];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiresponder_firstResponder, 1);
value uiresponder_isFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_isFirstResponder, 1);
value uiresponder_becomeFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view becomeFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_becomeFirstResponder, 1);
void uiresponder_remoteControlReceivedWithEvent(value tag, value tag1)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIResponder *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view remoteControlReceivedWithEvent:view1 ];
	
}
DEFINE_PRIM (uiresponder_remoteControlReceivedWithEvent, 2);
void uiresponder_motionCancelled(value tag, value arg1, value tag2)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIResponder *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view motionCancelled:val_int(arg1) :view2 ];
	
}
DEFINE_PRIM (uiresponder_motionCancelled, 3);
void uiresponder_motionEnded(value tag, value arg1, value tag2)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIResponder *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view motionEnded:val_int(arg1) :view2 ];
	
}
DEFINE_PRIM (uiresponder_motionEnded, 3);
void uiresponder_motionBegan(value tag, value arg1, value tag2)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIResponder *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view motionBegan:val_int(arg1) :view2 ];
	
}
DEFINE_PRIM (uiresponder_motionBegan, 3);
void uiresponder_reloadInputViewsWithoutReset(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadInputViewsWithoutReset];
	
}
DEFINE_PRIM (uiresponder_reloadInputViewsWithoutReset, 1);
void uiresponder_reloadInputViews(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadInputViews];
	
}
DEFINE_PRIM (uiresponder_reloadInputViews, 1);
value uiresponder_nextFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nextFirstResponder];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiresponder_nextFirstResponder, 1);
value uiresponder_defaultFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view defaultFirstResponder];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiresponder_defaultFirstResponder, 1);
void uitextfield_setRightViewMode(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.rightViewMode = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setRightViewMode, 2);
value uitextfield_getRightViewMode(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.rightViewMode;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getRightViewMode, 1);
void uitextfield_setLeftViewMode(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.leftViewMode = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setLeftViewMode, 2);
value uitextfield_getLeftViewMode(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.leftViewMode;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getLeftViewMode, 1);
void uitextfield_setClearButtonMode(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.clearButtonMode = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setClearButtonMode, 2);
value uitextfield_getClearButtonMode(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.clearButtonMode;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getClearButtonMode, 1);
void uitextfield_setBorderStyle(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.borderStyle = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setBorderStyle, 2);
value uitextfield_getBorderStyle(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.borderStyle;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getBorderStyle, 1);
void uitextfield_setSelectionGranularity(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setSelectionGranularity:val_int(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setSelectionGranularity, 2);
value uitextfield_selectionGranularity(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view selectionGranularity];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_selectionGranularity, 1);
void uitextfield_setBaseWritingDirection(value tag, value arg1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view setBaseWritingDirection:val_int(arg1) :view2 ];
	
}
DEFINE_PRIM (uitextfield_setBaseWritingDirection, 3);
value uitextfield_baseWritingDirectionForPosition(value tag, value tag1, value arg2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	int returnVar = (int)[view baseWritingDirectionForPosition:view1 inDirection:val_int(arg2) ];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_baseWritingDirectionForPosition, 3);
value uitextfield_characterRangeByExtendingPosition(value tag, value tag1, value arg2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view characterRangeByExtendingPosition:view1 inDirection:val_int(arg2) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_characterRangeByExtendingPosition, 3);
value uitextfield_positionWithinRange(value tag, value tag1, value arg2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view positionWithinRange:view1 farthestInDirection:val_int(arg2) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_positionWithinRange, 3);
value uitextfield_offsetFromPosition(value tag, value tag1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	int returnVar = (int)[view offsetFromPosition:view1 :view2 ];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_offsetFromPosition, 3);
value uitextfield_comparePosition(value tag, value tag1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	int returnVar = (int)[view comparePosition:view1 :view2 ];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_comparePosition, 3);
value uitextfield_positionFromPosition(value tag, value tag1, value arg2, value arg3)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view positionFromPosition:view1 inDirection:val_int(arg2) offset:val_int(arg3) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_positionFromPosition, 4);
value uitextfield_positionFromPosition2(value tag, value tag1, value arg2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view positionFromPosition:view1 offset:val_int(arg2) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_positionFromPosition2, 3);
value uitextfield_textRangeFromPosition(value tag, value tag1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	id returnVar = (id)[view textRangeFromPosition:view1 :view2 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_textRangeFromPosition, 3);
void uitextfield_unmarkText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view unmarkText];
	
}
DEFINE_PRIM (uitextfield_unmarkText, 1);
void uitextfield_replaceRange(value tag, value tag1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view replaceRange:view1 :view2 ];
	
}
DEFINE_PRIM (uitextfield_replaceRange, 3);
value uitextfield_textInRange(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view textInRange:view1 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_textInRange, 2);
value uitextfield_hasText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasText];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_hasText, 1);
value uitextfield_metadataDictionariesForDictationResults(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view metadataDictionariesForDictationResults];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_metadataDictionariesForDictationResults, 1);
void uitextfield_removeDictationResultPlaceholder(value tag, value tag1, value arg2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view removeDictationResultPlaceholder:view1 willInsertResult:val_bool(arg2) ];
	
}
DEFINE_PRIM (uitextfield_removeDictationResultPlaceholder, 3);
value uitextfield_insertDictationResultPlaceholder(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view insertDictationResultPlaceholder];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_insertDictationResultPlaceholder, 1);
void uitextfield_insertDictationResult(value tag, value tag1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertDictationResult:view1 :view2 ];
	
}
DEFINE_PRIM (uitextfield_insertDictationResult, 3);
void uitextfield_insertText(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view insertText:view1 ];
	
}
DEFINE_PRIM (uitextfield_insertText, 2);
void uitextfield_deleteBackward(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view deleteBackward];
	
}
DEFINE_PRIM (uitextfield_deleteBackward, 1);
value uitextfield_inPopover(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view inPopover];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_inPopover, 1);
void uitextfield_replace(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view replace:view1 ];
	
}
DEFINE_PRIM (uitextfield_replace, 2);
void uitextfield_toggleUnderline(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view toggleUnderline:view1 ];
	
}
DEFINE_PRIM (uitextfield_toggleUnderline, 2);
void uitextfield_toggleItalics(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view toggleItalics:view1 ];
	
}
DEFINE_PRIM (uitextfield_toggleItalics, 2);
void uitextfield_toggleBoldface(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view toggleBoldface:view1 ];
	
}
DEFINE_PRIM (uitextfield_toggleBoldface, 2);
void uitextfield_makeTextWritingDirectionLeftToRight(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view makeTextWritingDirectionLeftToRight:view1 ];
	
}
DEFINE_PRIM (uitextfield_makeTextWritingDirectionLeftToRight, 2);
void uitextfield_makeTextWritingDirectionRightToLeft(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view makeTextWritingDirectionRightToLeft:view1 ];
	
}
DEFINE_PRIM (uitextfield_makeTextWritingDirectionRightToLeft, 2);
void uitextfield_selectAll(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view selectAll:view1 ];
	
}
DEFINE_PRIM (uitextfield_selectAll, 2);
void uitextfield_select(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view select:view1 ];
	
}
DEFINE_PRIM (uitextfield_select, 2);
void uitextfield_paste(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view paste:view1 ];
	
}
DEFINE_PRIM (uitextfield_paste, 2);
void uitextfield_copy(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view copy:view1 ];
	
}
DEFINE_PRIM (uitextfield_copy, 2);
void uitextfield_cut(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view cut:view1 ];
	
}
DEFINE_PRIM (uitextfield_cut, 2);
value uitextfield_webView(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view webView];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_webView, 1);
value uitextfield_selectedAttributedText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view selectedAttributedText];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_selectedAttributedText, 1);
value uitextfield_selectedText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view selectedText];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_selectedText, 1);
value uitextfield_selectionRectsForRange(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view selectionRectsForRange:view1 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_selectionRectsForRange, 2);
value uitextfield_selectionView(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view selectionView];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_selectionView, 1);
void uitextfield_cancelAutoscroll(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view cancelAutoscroll];
	
}
DEFINE_PRIM (uitextfield_cancelAutoscroll, 1);
value uitextfield_hasSelection(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasSelection];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_hasSelection, 1);
value uitextfield_isEditable(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isEditable];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_isEditable, 1);
value uitextfield_undoManager(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view undoManager];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_undoManager, 1);
value uitextfield_atomStyle(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view atomStyle];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_atomStyle, 1);
void uitextfield_setAtomStyle(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAtomStyle:val_int(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setAtomStyle, 2);
value uitextfield_drawsAsAtom(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view drawsAsAtom];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_drawsAsAtom, 1);
void uitextfield_setDrawsAsAtom(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setDrawsAsAtom:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setDrawsAsAtom, 2);
value uitextfield_isUndoEnabled(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isUndoEnabled];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_isUndoEnabled, 1);
void uitextfield_setUndoEnabled(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setUndoEnabled:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setUndoEnabled, 2);
void uitextfield_setTextCentersVertically(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTextCentersVertically:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setTextCentersVertically, 2);
void uitextfield_setTextCentersHorizontally(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTextCentersHorizontally:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setTextCentersHorizontally, 2);
void uitextfield_setLabel(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setLabel:view1 ];
	
}
DEFINE_PRIM (uitextfield_setLabel, 2);
value uitextfield_textLabel(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view textLabel];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_textLabel, 1);
value uitextfield_hasMarkedText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasMarkedText];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_hasMarkedText, 1);
void uitextfield_setBecomesFirstResponderOnClearButtonTap(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setBecomesFirstResponderOnClearButtonTap:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setBecomesFirstResponderOnClearButtonTap, 2);
void uitextfield_setIcon(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setIcon:view1 ];
	
}
DEFINE_PRIM (uitextfield_setIcon, 2);
void uitextfield_clearText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view clearText];
	
}
DEFINE_PRIM (uitextfield_clearText, 1);
void uitextfield_layoutTilesNow(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layoutTilesNow];
	
}
DEFINE_PRIM (uitextfield_layoutTilesNow, 1);
void uitextfield_selectAll2(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view selectAll];
	
}
DEFINE_PRIM (uitextfield_selectAll2, 1);
void uitextfield_setInactiveHasDimAppearance(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setInactiveHasDimAppearance:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setInactiveHasDimAppearance, 2);
void uitextfield_setTextFont(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTextFont:view1 ];
	
}
DEFINE_PRIM (uitextfield_setTextFont, 2);
void uitextfield_drawBorder(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawBorder:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uitextfield_drawBorder, 2);
void uitextfield_setClearButtonStyle(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setClearButtonStyle:val_int(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setClearButtonStyle, 2);
void uitextfield_setTextAutorresizesToFit(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTextAutorresizesToFit:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setTextAutorresizesToFit, 2);
void uitextfield_setAutoresizesTextToFit(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAutoresizesTextToFit:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setAutoresizesTextToFit, 2);
value uitextfield_documentFragmentForPasteboardItemAtIndex(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view documentFragmentForPasteboardItemAtIndex:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_documentFragmentForPasteboardItemAtIndex, 2);
value uitextfield_supportedPasteboardTypesForCurrentSelection(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view supportedPasteboardTypesForCurrentSelection];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_supportedPasteboardTypesForCurrentSelection, 1);
value uitextfield_fieldEditor(value tag, value tag1, value tag2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	BOOL returnVar = (BOOL)(int)[view fieldEditor:view1 :view2 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_fieldEditor, 3);
void uitextfield_fieldEditorDidChangeSelection(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view fieldEditorDidChangeSelection:view1 ];
	
}
DEFINE_PRIM (uitextfield_fieldEditorDidChangeSelection, 2);
void uitextfield_selectAllFromFieldEditor(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view selectAllFromFieldEditor:view1 ];
	
}
DEFINE_PRIM (uitextfield_selectAllFromFieldEditor, 2);
void uitextfield_fieldEditorDidChange(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view fieldEditorDidChange:view1 ];
	
}
DEFINE_PRIM (uitextfield_fieldEditorDidChange, 2);
value uitextfield_customOverlayContainer(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view customOverlayContainer];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_customOverlayContainer, 1);
void uitextfield_keyboardInputChangedSelection(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view keyboardInputChangedSelection:view1 ];
	
}
DEFINE_PRIM (uitextfield_keyboardInputChangedSelection, 2);
value uitextfield_keyboardInputChanged(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view keyboardInputChanged:view1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_keyboardInputChanged, 2);
value uitextfield_keyboardInputShouldDelete(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view keyboardInputShouldDelete:view1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_keyboardInputShouldDelete, 2);
value uitextfield_keyboardInput(value tag, value tag1, value tag2, value arg3)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UITextField *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	BOOL returnVar = (BOOL)(int)[view keyboardInput:view1 :view2 isMarkedText:val_bool(arg3) ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_keyboardInput, 4);
void uitextfield_willDetachFieldEditor(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willDetachFieldEditor:view1 ];
	
}
DEFINE_PRIM (uitextfield_willDetachFieldEditor, 2);
void uitextfield_attachFieldEditor(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view attachFieldEditor:view1 ];
	
}
DEFINE_PRIM (uitextfield_attachFieldEditor, 2);
void uitextfield_willAttachFieldEditor(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willAttachFieldEditor:view1 ];
	
}
DEFINE_PRIM (uitextfield_willAttachFieldEditor, 2);
void uitextfield_drawPrefixInRect(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawPrefixInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uitextfield_drawPrefixInRect, 2);
void uitextfield_drawSuffixInRect(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawSuffixInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uitextfield_drawSuffixInRect, 2);
void uitextfield_drawPlaceholderInRect(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawPlaceholderInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uitextfield_drawPlaceholderInRect, 2);
void uitextfield_drawTextInRect(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawTextInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uitextfield_drawTextInRect, 2);
void uitextfield_setAllowsEditingTextAttributes(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsEditingTextAttributes = val_bool(arg1);
	
}
DEFINE_PRIM (uitextfield_setAllowsEditingTextAttributes, 2);
value uitextfield_getAllowsEditingTextAttributes(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsEditingTextAttributes;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getAllowsEditingTextAttributes, 1);
void uitextfield_setAdjustsFontSizeToFitWidth(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.adjustsFontSizeToFitWidth = val_bool(arg1);
	
}
DEFINE_PRIM (uitextfield_setAdjustsFontSizeToFitWidth, 2);
value uitextfield_getAdjustsFontSizeToFitWidth(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.adjustsFontSizeToFitWidth;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getAdjustsFontSizeToFitWidth, 1);
void uitextfield_setClearsPlaceholderOnBeginEditing(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setClearsPlaceholderOnBeginEditing:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setClearsPlaceholderOnBeginEditing, 2);
value uitextfield_clearsPlaceholderOnBeginEditing(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view clearsPlaceholderOnBeginEditing];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_clearsPlaceholderOnBeginEditing, 1);
void uitextfield_setClearsOnBeginEditing(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.clearsOnBeginEditing = val_bool(arg1);
	
}
DEFINE_PRIM (uitextfield_setClearsOnBeginEditing, 2);
value uitextfield_getClearsOnBeginEditing(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.clearsOnBeginEditing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getClearsOnBeginEditing, 1);
void uitextfield_setPlaceholder(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.placeholder = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uitextfield_setPlaceholder, 2);
value uitextfield_getPlaceholder(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.placeholder;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uitextfield_getPlaceholder, 1);
void uitextfield_createPlaceholderIfNecessary(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view createPlaceholderIfNecessary];
	
}
DEFINE_PRIM (uitextfield_createPlaceholderIfNecessary, 1);
void uitextfield_finishedSettingPlaceholder(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view finishedSettingPlaceholder];
	
}
DEFINE_PRIM (uitextfield_finishedSettingPlaceholder, 1);
value uitextfield_createTextLabelWithTextColor(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view createTextLabelWithTextColor:view1 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_createTextLabelWithTextColor, 2);
value uitextfield_createPlaceholderLabelWithFont(value tag, value tag1, value arg2)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view createPlaceholderLabelWithFont:view1 andTextAlignment:val_int(arg2) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_createPlaceholderLabelWithFont, 3);
void uitextfield_setTextAlignment(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.textAlignment = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setTextAlignment, 2);
value uitextfield_getTextAlignment(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.textAlignment;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getTextAlignment, 1);
void uitextfield_disableClearsOnInsertion(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view disableClearsOnInsertion];
	
}
DEFINE_PRIM (uitextfield_disableClearsOnInsertion, 1);
void uitextfield_setClearsOnInsertion(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.clearsOnInsertion = val_bool(arg1);
	
}
DEFINE_PRIM (uitextfield_setClearsOnInsertion, 2);
value uitextfield_getClearsOnInsertion(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.clearsOnInsertion;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getClearsOnInsertion, 1);
value uitextfield_shadowColor(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view shadowColor];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_shadowColor, 1);
void uitextfield_setShadowColor(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setShadowColor:view1 ];
	
}
DEFINE_PRIM (uitextfield_setShadowColor, 2);
void uitextfield_setText(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.text = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uitextfield_setText, 2);
value uitextfield_getText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.text;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uitextfield_getText, 1);
void uitextfield_finishedSettingTextOrAttributedText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view finishedSettingTextOrAttributedText];
	
}
DEFINE_PRIM (uitextfield_finishedSettingTextOrAttributedText, 1);
value uitextfield_searchText(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view searchText];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_searchText, 1);
void uitextfield_setSecureTextEntry(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.secureTextEntry = val_bool(arg1);
	
}
DEFINE_PRIM (uitextfield_setSecureTextEntry, 2);
value uitextfield_getSecureTextEntry(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.secureTextEntry;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getSecureTextEntry, 1);
void uitextfield_forwardInvocation(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UITextField *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view forwardInvocation:view1 ];
	
}
DEFINE_PRIM (uitextfield_forwardInvocation, 2);
value uitextfield_textInputTraits(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view textInputTraits];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_textInputTraits, 1);
value uitextfield_actualFont(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view actualFont];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_actualFont, 1);
value uitextfield_clearButton(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view clearButton];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uitextfield_clearButton, 1);
void uitextfield_setAnimating(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAnimating:val_bool(arg1) ];
	
}
DEFINE_PRIM (uitextfield_setAnimating, 2);
void uitextfield_setAutocapitalizationType(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.autocapitalizationType = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setAutocapitalizationType, 2);
value uitextfield_getAutocapitalizationType(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.autocapitalizationType;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getAutocapitalizationType, 1);
void uitextfield_setAutocorrectionType(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.autocorrectionType = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setAutocorrectionType, 2);
value uitextfield_getAutocorrectionType(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.autocorrectionType;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getAutocorrectionType, 1);
void uitextfield_setEnablesReturnKeyAutomatically(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.enablesReturnKeyAutomatically = val_bool(arg1);
	
}
DEFINE_PRIM (uitextfield_setEnablesReturnKeyAutomatically, 2);
value uitextfield_getEnablesReturnKeyAutomatically(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.enablesReturnKeyAutomatically;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getEnablesReturnKeyAutomatically, 1);
void uitextfield_setKeyboardAppearance(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.keyboardAppearance = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setKeyboardAppearance, 2);
value uitextfield_getKeyboardAppearance(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.keyboardAppearance;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getKeyboardAppearance, 1);
void uitextfield_setKeyboardType(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.keyboardType = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setKeyboardType, 2);
value uitextfield_getKeyboardType(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.keyboardType;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getKeyboardType, 1);
void uitextfield_setReturnKeyType(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.returnKeyType = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setReturnKeyType, 2);
value uitextfield_getReturnKeyType(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.returnKeyType;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getReturnKeyType, 1);
void uitextfield_setSpellCheckingType(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.spellCheckingType = val_int(arg1);
	
}
DEFINE_PRIM (uitextfield_setSpellCheckingType, 2);
value uitextfield_getSpellCheckingType(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.spellCheckingType;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uitextfield_getSpellCheckingType, 1);
void uiview_setTag(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.tag = val_int(arg1);
	
}
DEFINE_PRIM (uiview_setTag, 2);
value uiview_getTag(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)view.tag;
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_getTag, 1);
value uiview_canHandleSwipes(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view canHandleSwipes];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_canHandleSwipes, 1);
value uiview_tapDelegate(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view tapDelegate];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_tapDelegate, 1);
void uiview_setTapDelegate(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setTapDelegate:view1 ];
	
}
DEFINE_PRIM (uiview_setTapDelegate, 2);
value uiview_nsli_contentHeightVariable(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_contentHeightVariable];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_contentHeightVariable, 1);
value uiview_nsli_contentWidthVariable(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_contentWidthVariable];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_contentWidthVariable, 1);
value uiview_nsli_minYVariable(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_minYVariable];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_minYVariable, 1);
value uiview_nsli_minXVariable(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_minXVariable];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_minXVariable, 1);
value uiview_nsli_boundsHeightVariable(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_boundsHeightVariable];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_boundsHeightVariable, 1);
value uiview_nsli_boundsWidthVariable(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_boundsWidthVariable];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_boundsWidthVariable, 1);
value uiview_retain(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view retain];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_retain, 1);
void uiview_setBounds(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setBounds:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_setBounds, 2);
void uiview_sizeToFit(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view sizeToFit];
	
}
DEFINE_PRIM (uiview_sizeToFit, 1);
void uiview_setAutoresizingMask(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAutoresizingMask:val_int(arg1) ];
	
}
DEFINE_PRIM (uiview_setAutoresizingMask, 2);
value uiview_autoresizesSubviews(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view autoresizesSubviews];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_autoresizesSubviews, 1);
void uiview_setAutoresizesSubviews(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setAutoresizesSubviews:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setAutoresizesSubviews, 2);
void uiview_setFrame(value tag, value arg1, value arg2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setFrame:arrayToCGRect(arg1) forFields:val_int(arg2) ];
	
}
DEFINE_PRIM (uiview_setFrame, 3);
value uiview_isExclusiveTouch(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isExclusiveTouch];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isExclusiveTouch, 1);
void uiview_setExclusiveTouch(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setExclusiveTouch:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setExclusiveTouch, 2);
value uiview_isMultipleTouchEnabled(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isMultipleTouchEnabled];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isMultipleTouchEnabled, 1);
void uiview_setMultipleTouchEnabled(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setMultipleTouchEnabled:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setMultipleTouchEnabled, 2);
void uiview_setFrame2(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setFrame:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_setFrame2, 2);
void uiview_layoutBelowIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layoutBelowIfNeeded];
	
}
DEFINE_PRIM (uiview_layoutBelowIfNeeded, 1);
void uiview_layoutIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layoutIfNeeded];
	
}
DEFINE_PRIM (uiview_layoutIfNeeded, 1);
void uiview_setNeedsLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsLayout];
	
}
DEFINE_PRIM (uiview_setNeedsLayout, 1);
value uiview_viewWithTag(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view viewWithTag:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_viewWithTag, 2);
value uiview_isDescendantOfView(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view isDescendantOfView:view1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isDescendantOfView, 2);
void uiview_movedToWindow(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view movedToWindow:view1 ];
	
}
DEFINE_PRIM (uiview_movedToWindow, 2);
void uiview_movedFromWindow(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view movedFromWindow:view1 ];
	
}
DEFINE_PRIM (uiview_movedFromWindow, 2);
void uiview_viewDidMoveToSuperview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view viewDidMoveToSuperview];
	
}
DEFINE_PRIM (uiview_viewDidMoveToSuperview, 1);
void uiview_viewWillMoveToSuperview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view viewWillMoveToSuperview:view1 ];
	
}
DEFINE_PRIM (uiview_viewWillMoveToSuperview, 2);
void uiview_movedToSuperview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view movedToSuperview:view1 ];
	
}
DEFINE_PRIM (uiview_movedToSuperview, 2);
void uiview_movedFromSuperview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view movedFromSuperview:view1 ];
	
}
DEFINE_PRIM (uiview_movedFromSuperview, 2);
void uiview_deferredBecomeFirstResponder(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view deferredBecomeFirstResponder];
	
}
DEFINE_PRIM (uiview_deferredBecomeFirstResponder, 1);
void uiview_insertSubview(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertSubview:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_insertSubview, 3);
void uiview_insertSubview2(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertSubview:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_insertSubview2, 3);
void uiview_didMoveToWindow(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view didMoveToWindow];
	
}
DEFINE_PRIM (uiview_didMoveToWindow, 1);
void uiview_willMoveToWindow(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willMoveToWindow:view1 ];
	
}
DEFINE_PRIM (uiview_willMoveToWindow, 2);
void uiview_didMoveToSuperview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view didMoveToSuperview];
	
}
DEFINE_PRIM (uiview_didMoveToSuperview, 1);
void uiview_willMoveToSuperview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willMoveToSuperview:view1 ];
	
}
DEFINE_PRIM (uiview_willMoveToSuperview, 2);
void uiview_willRemoveSubview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willRemoveSubview:view1 ];
	
}
DEFINE_PRIM (uiview_willRemoveSubview, 2);
void uiview_didAddSubview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view didAddSubview:view1 ];
	
}
DEFINE_PRIM (uiview_didAddSubview, 2);
void uiview_sendSubviewToBack(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view sendSubviewToBack:view1 ];
	
}
DEFINE_PRIM (uiview_sendSubviewToBack, 2);
void uiview_bringSubviewToFront(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view bringSubviewToFront:view1 ];
	
}
DEFINE_PRIM (uiview_bringSubviewToFront, 2);
void uiview_insertSubview3(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertSubview:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_insertSubview3, 3);
void uiview_insertSubview4(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertSubview:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_insertSubview4, 3);
void uiview_addSubview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view addSubview:view1 ];
	
}
DEFINE_PRIM (uiview_addSubview, 2);
void uiview_exchangeSubviewAtIndex(value tag, value arg1, value arg2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view exchangeSubviewAtIndex:val_int(arg1) withSubviewAtIndex:val_int(arg2) ];
	
}
DEFINE_PRIM (uiview_exchangeSubviewAtIndex, 3);
void uiview_insertSubview5(value tag, value tag1, value arg2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view insertSubview:view1 atIndex:val_int(arg2) ];
	
}
DEFINE_PRIM (uiview_insertSubview5, 3);
void uiview_removeFromSuperview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view removeFromSuperview];
	
}
DEFINE_PRIM (uiview_removeFromSuperview, 1);
value uiview_window(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view window];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_window, 1);
value uiview_subviews(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view subviews];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_subviews, 1);
value uiview_superview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view superview];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_superview, 1);
value uiview_containsView(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view containsView:view1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_containsView, 2);
void uiview_recursivelyForceDisplayIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view recursivelyForceDisplayIfNeeded];
	
}
DEFINE_PRIM (uiview_recursivelyForceDisplayIfNeeded, 1);
void uiview_forceDisplayIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view forceDisplayIfNeeded];
	
}
DEFINE_PRIM (uiview_forceDisplayIfNeeded, 1);
void uiview_setContentsPosition(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setContentsPosition:val_int(arg1) ];
	
}
DEFINE_PRIM (uiview_setContentsPosition, 2);
void uiview_setClearsContext(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setClearsContext:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setClearsContext, 2);
value uiview_isHiddenOrHasHiddenAncestor(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isHiddenOrHasHiddenAncestor];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isHiddenOrHasHiddenAncestor, 1);
value uiview_isHidden(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isHidden];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isHidden, 1);
void uiview_setHidden(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setHidden:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setHidden, 2);
value uiview_clearsContextBeforeDrawing(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view clearsContextBeforeDrawing];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_clearsContextBeforeDrawing, 1);
void uiview_setClearsContextBeforeDrawing(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setClearsContextBeforeDrawing:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setClearsContextBeforeDrawing, 2);
value uiview_isOpaque(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isOpaque];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isOpaque, 1);
void uiview_setOpaque(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setOpaque:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setOpaque, 2);
void uiview_setFixedBackgroundPattern(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setFixedBackgroundPattern:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setFixedBackgroundPattern, 2);
value uiview_clipsToBounds(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view clipsToBounds];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_clipsToBounds, 1);
void uiview_setClipsToBounds(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setClipsToBounds:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setClipsToBounds, 2);
void uiview_setNeedsDisplayOnBoundsChange(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsDisplayOnBoundsChange:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setNeedsDisplayOnBoundsChange, 2);
value uiview_needsDisplayOnBoundsChange(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view needsDisplayOnBoundsChange];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_needsDisplayOnBoundsChange, 1);
value uiview_needsDisplay(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view needsDisplay];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_needsDisplay, 1);
void uiview_setNeedsDisplayInRect(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsDisplayInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_setNeedsDisplayInRect, 2);
void uiview_setNeedsDisplay(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsDisplay];
	
}
DEFINE_PRIM (uiview_setNeedsDisplay, 1);
void uiview_drawRect(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_drawRect, 2);
void uiview_setContentStretch(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setContentStretch:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_setContentStretch, 2);
value uiview_contentMode(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view contentMode];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_contentMode, 1);
void uiview_setContentMode(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setContentMode:val_int(arg1) ];
	
}
DEFINE_PRIM (uiview_setContentMode, 2);
void uiview_addAnimation(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view addAnimation:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_addAnimation, 3);
void uiview_setClipsSubviews(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setClipsSubviews:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setClipsSubviews, 2);
value uiview_isEnabled(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isEnabled];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isEnabled, 1);
void uiview_removeAllGestureRecognizers(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view removeAllGestureRecognizers];
	
}
DEFINE_PRIM (uiview_removeAllGestureRecognizers, 1);
void uiview_removeGestureRecognizer(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view removeGestureRecognizer:view1 ];
	
}
DEFINE_PRIM (uiview_removeGestureRecognizer, 2);
void uiview_addGestureRecognizer(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view addGestureRecognizer:view1 ];
	
}
DEFINE_PRIM (uiview_addGestureRecognizer, 2);
void uiview_setGestureRecognizers(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setGestureRecognizers:view1 ];
	
}
DEFINE_PRIM (uiview_setGestureRecognizers, 2);
value uiview_gestureRecognizers(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view gestureRecognizers];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_gestureRecognizers, 1);
value uiview_actionForLayer(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	id returnVar = (id)[view actionForLayer:view1 :view2 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_actionForLayer, 3);
void uiview_layoutSublayersOfLayer(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view layoutSublayersOfLayer:view1 ];
	
}
DEFINE_PRIM (uiview_layoutSublayersOfLayer, 2);
void uiview_setValue(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view setValue:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_setValue, 3);
value uiview_recursiveDescription(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view recursiveDescription];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_recursiveDescription, 1);
value uiview_description(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view description];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_description, 1);
value uiview_scriptingInfoWithChildren(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view scriptingInfoWithChildren];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_scriptingInfoWithChildren, 1);
value uiview_useBlockyMagnificationInClassic(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view useBlockyMagnificationInClassic];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_useBlockyMagnificationInClassic, 1);
value uiview_endEditing(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view endEditing:val_bool(arg1) ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_endEditing, 2);
value uiview_stateForGestureType(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view stateForGestureType:val_int(arg1) ];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_stateForGestureType, 2);
value uiview_valueForGestureAttribute(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view valueForGestureAttribute:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_valueForGestureAttribute, 2);
void uiview_setValue2(value tag, value tag1, value arg2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setValue:view1 forGestureAttribute:val_int(arg2) ];
	
}
DEFINE_PRIM (uiview_setValue2, 3);
value uiview_enabledGestures(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view enabledGestures];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_enabledGestures, 1);
void uiview_setEnabledGestures(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setEnabledGestures:val_int(arg1) ];
	
}
DEFINE_PRIM (uiview_setEnabledGestures, 2);
value uiview_gestureDelegate(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view gestureDelegate];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_gestureDelegate, 1);
void uiview_setGestureDelegate(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view setGestureDelegate:view1 ];
	
}
DEFINE_PRIM (uiview_setGestureDelegate, 2);
value uiview_canHandleGestures(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view canHandleGestures];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_canHandleGestures, 1);
void uiview_animator(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view animator:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_animator, 3);
void uiview_animator2(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view animator:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_animator2, 3);
value uiview_needsWebDocumentViewEventsDirectly(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view needsWebDocumentViewEventsDirectly];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_needsWebDocumentViewEventsDirectly, 1);
value uiview_compareTextEffectsOrdering(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	int returnVar = (int)[view compareTextEffectsOrdering:view1 ];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_compareTextEffectsOrdering, 2);
value uiview_textEffectsVisibilityLevelWhenKey(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view textEffectsVisibilityLevelWhenKey];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_textEffectsVisibilityLevelWhenKey, 1);
value uiview_textEffectsVisibilityLevel(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	int returnVar = (int)[view textEffectsVisibilityLevel];
	return alloc_int(returnVar);
}
DEFINE_PRIM (uiview_textEffectsVisibilityLevel, 1);
void uiview_drawRect2(value tag, value arg1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view drawRect:arrayToCGRect(arg1) :view2 ];
	
}
DEFINE_PRIM (uiview_drawRect2, 3);
value uiview_viewPrintFormatter(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view viewPrintFormatter];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_viewPrintFormatter, 1);
void uiview_exerciseAmbiguityInLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view exerciseAmbiguityInLayout];
	
}
DEFINE_PRIM (uiview_exerciseAmbiguityInLayout, 1);
value uiview_hasAmbiguousLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasAmbiguousLayout];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_hasAmbiguousLayout, 1);
value uiview_constraintsAffectingLayoutForAxis(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view constraintsAffectingLayoutForAxis:val_int(arg1) ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_constraintsAffectingLayoutForAxis, 2);
void uiview_removeConstraints(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view removeConstraints:view1 ];
	
}
DEFINE_PRIM (uiview_removeConstraints, 2);
void uiview_removeConstraint(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view removeConstraint:view1 ];
	
}
DEFINE_PRIM (uiview_removeConstraint, 2);
void uiview_addConstraints(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view addConstraints:view1 ];
	
}
DEFINE_PRIM (uiview_addConstraints, 2);
void uiview_addConstraint(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view addConstraint:view1 ];
	
}
DEFINE_PRIM (uiview_addConstraint, 2);
value uiview_constraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view constraints];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_constraints, 1);
value uiview_nsli_isFlipped(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view nsli_isFlipped];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_nsli_isFlipped, 1);
value uiview_nsli_descriptionIncludesPointer(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view nsli_descriptionIncludesPointer];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_nsli_descriptionIncludesPointer, 1);
value uiview_nsli_description(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_description];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_description, 1);
value uiview_nsli_superitem(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_superitem];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_superitem, 1);
value uiview_nsli_layoutEngine(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view nsli_layoutEngine];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsli_layoutEngine, 1);
value uiview_nsis_valueOfVariableIsUserObservable(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view nsis_valueOfVariableIsUserObservable:view1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_nsis_valueOfVariableIsUserObservable, 2);
value uiview_nsis_shouldIntegralizeVariable(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view nsis_shouldIntegralizeVariable:view1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_nsis_shouldIntegralizeVariable, 2);
value uiview_nsis_descriptionOfVariable(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id returnVar = (id)[view nsis_descriptionOfVariable:view1 ];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_nsis_descriptionOfVariable, 2);
void uiview_nsis_valueOfVariable(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView *view1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	UIView *view2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view nsis_valueOfVariable:view1 :view2 ];
	
}
DEFINE_PRIM (uiview_nsis_valueOfVariable, 3);
value uiview_userInterfaceItemIdentifier(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view userInterfaceItemIdentifier];
	return alloc_int((int)[returnVar getTag]);
}
DEFINE_PRIM (uiview_userInterfaceItemIdentifier, 1);
void uiview_updateConstraintsIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view updateConstraintsIfNeeded];
	
}
DEFINE_PRIM (uiview_updateConstraintsIfNeeded, 1);
void uiview_setTranslatesAutoresizingMaskIntoConstraints(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTranslatesAutoresizingMaskIntoConstraints:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setTranslatesAutoresizingMaskIntoConstraints, 2);
value uiview_needsLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view needsLayout];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_needsLayout, 1);
value uiview_translatesAutoresizingMaskIntoConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view translatesAutoresizingMaskIntoConstraints];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_translatesAutoresizingMaskIntoConstraints, 1);
void uiview_setNeedsUpdateConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsUpdateConstraints];
	
}
DEFINE_PRIM (uiview_setNeedsUpdateConstraints, 1);
value uiview_needsUpdateConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view needsUpdateConstraints];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_needsUpdateConstraints, 1);
void initUIViewEventListeners(int tag)
{
	initUIResponderEventListeners(tag);
	UIView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIButtonEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIResponderEventListeners(int tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUILabelEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIImageViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initMKMapViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	MKMapView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIAlertViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUICollectionReusableViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UICollectionReusableView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUICollectionViewEventListeners(int tag)
{
	initUIScrollViewEventListeners(tag);
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUICollectionViewCellEventListeners(int tag)
{
	initUICollectionReusableViewEventListeners(tag);
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIDatePickerEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UIDatePicker *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUINavigationBarEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UINavigationBar *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIPageControlEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIPageControl *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIPickerViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIPickerView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIPopoverBackgroundViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIPopoverBackgroundView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIProgressViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIProgressView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIRefreshControlEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UIRefreshControl *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIScrollViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUISearchBarEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUISegmentedControlEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UISegmentedControl *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUISliderEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UISlider *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIStepperEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUISwitchEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UISwitch *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUITabBarEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UITabBar *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUITableViewEventListeners(int tag)
{
	initUIScrollViewEventListeners(tag);
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUITableViewCellEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUITableViewHeaderFooterViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUITextViewEventListeners(int tag)
{
	initUIScrollViewEventListeners(tag);
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIWebViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIWindowEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIWindow *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
}
void initUIControlEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchDownRepeat::) forControlEvents: UIControlEventTouchDownRepeat];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchDragInside::) forControlEvents: UIControlEventTouchDragInside];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchDragOutside::) forControlEvents: UIControlEventTouchDragOutside];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchDragEnter::) forControlEvents: UIControlEventTouchDragEnter];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchDragExit::) forControlEvents: UIControlEventTouchDragExit];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchUpInside::) forControlEvents: UIControlEventTouchUpInside];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchUpOutside::) forControlEvents: UIControlEventTouchUpOutside];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchCancel::) forControlEvents: UIControlEventTouchCancel];
	[view addTarget:eventManager action:@selector(onUIControlEventValueChanged::) forControlEvents: UIControlEventValueChanged];
	[view addTarget:eventManager action:@selector(onUIControlEventEditingDidBegin::) forControlEvents: UIControlEventEditingDidBegin];
	[view addTarget:eventManager action:@selector(onUIControlEventEditingChanged::) forControlEvents: UIControlEventEditingChanged];
	[view addTarget:eventManager action:@selector(onUIControlEventEditingDidEnd::) forControlEvents: UIControlEventEditingDidEnd];
	[view addTarget:eventManager action:@selector(onUIControlEventEditingDidEndOnExit::) forControlEvents: UIControlEventEditingDidEndOnExit];
	[view addTarget:eventManager action:@selector(onUIControlEventAllTouchEvents::) forControlEvents: UIControlEventAllTouchEvents];
	[view addTarget:eventManager action:@selector(onUIControlEventAllEditingEvents::) forControlEvents: UIControlEventAllEditingEvents];
	[view addTarget:eventManager action:@selector(onUIControlEventApplicationReserved::) forControlEvents: UIControlEventApplicationReserved];
	[view addTarget:eventManager action:@selector(onUIControlEventSystemReserved::) forControlEvents: UIControlEventSystemReserved];
	[view addTarget:eventManager action:@selector(onUIControlEventAllEvents::) forControlEvents: UIControlEventAllEvents];
	
}
void initUITextFieldEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	[[NSNotificationCenter defaultCenter] addObserver:eventManager selector:@selector(onUITextFieldTextDidBeginEditingNotification:) name:UITextFieldTextDidBeginEditingNotification object:view];
	[[NSNotificationCenter defaultCenter] addObserver:eventManager selector:@selector(onUITextFieldTextDidChangeNotification:) name:UITextFieldTextDidChangeNotification object:view];
	[[NSNotificationCenter defaultCenter] addObserver:eventManager selector:@selector(onUITextFieldTextDidEndEditingNotification:) name:UITextFieldTextDidEndEditingNotification object:view];
	
}
