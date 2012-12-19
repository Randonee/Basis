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
void uialertview_setDelegate(value tag, value tag1)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.delegate = (arg1);
	
}
DEFINE_PRIM (uialertview_setDelegate, 2);
value uialertview_getDelegate(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)view.delegate;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uialertview_getDelegate, 1);
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
value uialertview_getVisible(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.visible;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uialertview_getVisible, 1);
void uialertview_show(value tag)
{
	UIAlertView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view show];
	
}
DEFINE_PRIM (uialertview_show, 1);
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
value uibutton_getCurrentTitle(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.currentTitle;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uibutton_getCurrentTitle, 1);
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
value uibutton_getTitleLabel(value tag)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel* returnVar = (UILabel*)view.titleLabel;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uibutton_getTitleLabel, 1);
value uibutton_backgroundRectForBounds(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view backgroundRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uibutton_backgroundRectForBounds, 2);
value uibutton_contentRectForBounds(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view contentRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uibutton_contentRectForBounds, 2);
value uibutton_imageRectForContentRect(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view imageRectForContentRect:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uibutton_imageRectForContentRect, 2);
void uibutton_setTitle(value tag, value arg1, value arg2)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTitle:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] forState:val_int(arg2) ];
	
}
DEFINE_PRIM (uibutton_setTitle, 3);
value uibutton_titleForState(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)[view titleForState:val_int(arg1) ];
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uibutton_titleForState, 2);
value uibutton_titleRectForContentRect(value tag, value arg1)
{
	UIButton *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view titleRectForContentRect:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uibutton_titleRectForContentRect, 2);
value uicollectionreusableview_getReuseIdentifier(value tag)
{
	UICollectionReusableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.reuseIdentifier;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uicollectionreusableview_getReuseIdentifier, 1);
void uicollectionreusableview_prepareForReuse(value tag)
{
	UICollectionReusableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view prepareForReuse];
	
}
DEFINE_PRIM (uicollectionreusableview_prepareForReuse, 1);
void uicollectionview_setAllowsMultipleSelection(value tag, value arg1)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsMultipleSelection = val_bool(arg1);
	
}
DEFINE_PRIM (uicollectionview_setAllowsMultipleSelection, 2);
value uicollectionview_getAllowsMultipleSelection(value tag)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsMultipleSelection;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicollectionview_getAllowsMultipleSelection, 1);
void uicollectionview_setAllowsSelection(value tag, value arg1)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsSelection = val_bool(arg1);
	
}
DEFINE_PRIM (uicollectionview_setAllowsSelection, 2);
value uicollectionview_getAllowsSelection(value tag)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsSelection;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicollectionview_getAllowsSelection, 1);
void uicollectionview_setBackgroundView(value tag, value tag1)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.backgroundView = (arg1);
	
}
DEFINE_PRIM (uicollectionview_setBackgroundView, 2);
value uicollectionview_getBackgroundView(value tag)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.backgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uicollectionview_getBackgroundView, 1);
void uicollectionview_reloadData(value tag)
{
	UICollectionView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadData];
	
}
DEFINE_PRIM (uicollectionview_reloadData, 1);
void uicollectionviewcell_setBackgroundView(value tag, value tag1)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.backgroundView = (arg1);
	
}
DEFINE_PRIM (uicollectionviewcell_setBackgroundView, 2);
value uicollectionviewcell_getBackgroundView(value tag)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.backgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uicollectionviewcell_getBackgroundView, 1);
value uicollectionviewcell_getContentView(value tag)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.contentView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uicollectionviewcell_getContentView, 1);
void uicollectionviewcell_setHighlighted(value tag, value arg1)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.highlighted = val_bool(arg1);
	
}
DEFINE_PRIM (uicollectionviewcell_setHighlighted, 2);
value uicollectionviewcell_getHighlighted(value tag)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.highlighted;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicollectionviewcell_getHighlighted, 1);
void uicollectionviewcell_setSelected(value tag, value arg1)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.selected = val_bool(arg1);
	
}
DEFINE_PRIM (uicollectionviewcell_setSelected, 2);
value uicollectionviewcell_getSelected(value tag)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.selected;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicollectionviewcell_getSelected, 1);
void uicollectionviewcell_setSelectedBackgroundView(value tag, value tag1)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.selectedBackgroundView = (arg1);
	
}
DEFINE_PRIM (uicollectionviewcell_setSelectedBackgroundView, 2);
value uicollectionviewcell_getSelectedBackgroundView(value tag)
{
	UICollectionViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.selectedBackgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uicollectionviewcell_getSelectedBackgroundView, 1);
void uicontrol_setEnabled(value tag, value arg1)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.enabled = val_bool(arg1);
	
}
DEFINE_PRIM (uicontrol_setEnabled, 2);
value uicontrol_getEnabled(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.enabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getEnabled, 1);
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
value uicontrol_getTouchInside(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.touchInside;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getTouchInside, 1);
value uicontrol_getTracking(value tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.tracking;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uicontrol_getTracking, 1);
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
value uiimageview_isAnimating(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isAnimating];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiimageview_isAnimating, 1);
void uiimageview_startAnimating(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view startAnimating];
	
}
DEFINE_PRIM (uiimageview_startAnimating, 1);
void uiimageview_stopAnimating(value tag)
{
	UIImageView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view stopAnimating];
	
}
DEFINE_PRIM (uiimageview_stopAnimating, 1);
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
void uilabel_setEnabled(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.enabled = val_bool(arg1);
	
}
DEFINE_PRIM (uilabel_setEnabled, 2);
value uilabel_getEnabled(value tag)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.enabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uilabel_getEnabled, 1);
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
void uilabel_drawTextInRect(value tag, value arg1)
{
	UILabel *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawTextInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uilabel_drawTextInRect, 2);
void uipagecontrol_setDefersCurrentPageDisplay(value tag, value arg1)
{
	UIPageControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.defersCurrentPageDisplay = val_bool(arg1);
	
}
DEFINE_PRIM (uipagecontrol_setDefersCurrentPageDisplay, 2);
value uipagecontrol_getDefersCurrentPageDisplay(value tag)
{
	UIPageControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.defersCurrentPageDisplay;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uipagecontrol_getDefersCurrentPageDisplay, 1);
void uipagecontrol_setHidesForSinglePage(value tag, value arg1)
{
	UIPageControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.hidesForSinglePage = val_bool(arg1);
	
}
DEFINE_PRIM (uipagecontrol_setHidesForSinglePage, 2);
value uipagecontrol_getHidesForSinglePage(value tag)
{
	UIPageControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.hidesForSinglePage;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uipagecontrol_getHidesForSinglePage, 1);
void uipagecontrol_updateCurrentPageDisplay(value tag)
{
	UIPageControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view updateCurrentPageDisplay];
	
}
DEFINE_PRIM (uipagecontrol_updateCurrentPageDisplay, 1);
void uipickerview_setShowsSelectionIndicator(value tag, value arg1)
{
	UIPickerView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsSelectionIndicator = val_bool(arg1);
	
}
DEFINE_PRIM (uipickerview_setShowsSelectionIndicator, 2);
value uipickerview_getShowsSelectionIndicator(value tag)
{
	UIPickerView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsSelectionIndicator;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uipickerview_getShowsSelectionIndicator, 1);
void uipickerview_reloadAllComponents(value tag)
{
	UIPickerView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadAllComponents];
	
}
DEFINE_PRIM (uipickerview_reloadAllComponents, 1);
value uirefreshcontrol_getRefreshing(value tag)
{
	UIRefreshControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.refreshing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uirefreshcontrol_getRefreshing, 1);
void uirefreshcontrol_beginRefreshing(value tag)
{
	UIRefreshControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view beginRefreshing];
	
}
DEFINE_PRIM (uirefreshcontrol_beginRefreshing, 1);
void uirefreshcontrol_endRefreshing(value tag)
{
	UIRefreshControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view endRefreshing];
	
}
DEFINE_PRIM (uirefreshcontrol_endRefreshing, 1);
value uiresponder_becomeFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view becomeFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_becomeFirstResponder, 1);
value uiresponder_canBecomeFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view canBecomeFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_canBecomeFirstResponder, 1);
value uiresponder_canResignFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view canResignFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_canResignFirstResponder, 1);
value uiresponder_isFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_isFirstResponder, 1);
void uiresponder_reloadInputViews(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadInputViews];
	
}
DEFINE_PRIM (uiresponder_reloadInputViews, 1);
value uiresponder_resignFirstResponder(value tag)
{
	UIResponder *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view resignFirstResponder];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiresponder_resignFirstResponder, 1);
void uiscrollview_setAlwaysBounceHorizontal(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.alwaysBounceHorizontal = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setAlwaysBounceHorizontal, 2);
value uiscrollview_getAlwaysBounceHorizontal(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.alwaysBounceHorizontal;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getAlwaysBounceHorizontal, 1);
void uiscrollview_setAlwaysBounceVertical(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.alwaysBounceVertical = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setAlwaysBounceVertical, 2);
value uiscrollview_getAlwaysBounceVertical(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.alwaysBounceVertical;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getAlwaysBounceVertical, 1);
void uiscrollview_setBounces(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.bounces = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setBounces, 2);
value uiscrollview_getBounces(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.bounces;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getBounces, 1);
void uiscrollview_setBouncesZoom(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.bouncesZoom = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setBouncesZoom, 2);
value uiscrollview_getBouncesZoom(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.bouncesZoom;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getBouncesZoom, 1);
void uiscrollview_setCanCancelContentTouches(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.canCancelContentTouches = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setCanCancelContentTouches, 2);
value uiscrollview_getCanCancelContentTouches(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.canCancelContentTouches;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getCanCancelContentTouches, 1);
value uiscrollview_getDecelerating(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.decelerating;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getDecelerating, 1);
void uiscrollview_setDelaysContentTouches(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.delaysContentTouches = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setDelaysContentTouches, 2);
value uiscrollview_getDelaysContentTouches(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.delaysContentTouches;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getDelaysContentTouches, 1);
void uiscrollview_setDirectionalLockEnabled(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.directionalLockEnabled = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setDirectionalLockEnabled, 2);
value uiscrollview_getDirectionalLockEnabled(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.directionalLockEnabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getDirectionalLockEnabled, 1);
value uiscrollview_getDragging(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.dragging;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getDragging, 1);
void uiscrollview_setPagingEnabled(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.pagingEnabled = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setPagingEnabled, 2);
value uiscrollview_getPagingEnabled(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.pagingEnabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getPagingEnabled, 1);
void uiscrollview_setScrollEnabled(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.scrollEnabled = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setScrollEnabled, 2);
value uiscrollview_getScrollEnabled(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.scrollEnabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getScrollEnabled, 1);
void uiscrollview_setScrollsToTop(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.scrollsToTop = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setScrollsToTop, 2);
value uiscrollview_getScrollsToTop(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.scrollsToTop;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getScrollsToTop, 1);
void uiscrollview_setShowsHorizontalScrollIndicator(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsHorizontalScrollIndicator = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setShowsHorizontalScrollIndicator, 2);
value uiscrollview_getShowsHorizontalScrollIndicator(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsHorizontalScrollIndicator;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getShowsHorizontalScrollIndicator, 1);
void uiscrollview_setShowsVerticalScrollIndicator(value tag, value arg1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsVerticalScrollIndicator = val_bool(arg1);
	
}
DEFINE_PRIM (uiscrollview_setShowsVerticalScrollIndicator, 2);
value uiscrollview_getShowsVerticalScrollIndicator(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsVerticalScrollIndicator;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getShowsVerticalScrollIndicator, 1);
value uiscrollview_getTracking(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.tracking;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getTracking, 1);
value uiscrollview_getZoomBouncing(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.zoomBouncing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getZoomBouncing, 1);
value uiscrollview_getZooming(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.zooming;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_getZooming, 1);
void uiscrollview_flashScrollIndicators(value tag)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view flashScrollIndicators];
	
}
DEFINE_PRIM (uiscrollview_flashScrollIndicators, 1);
void uiscrollview_scrollRectToVisible(value tag, value arg1, value arg2)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view scrollRectToVisible:arrayToCGRect(arg1) animated:val_bool(arg2) ];
	
}
DEFINE_PRIM (uiscrollview_scrollRectToVisible, 3);
value uiscrollview_touchesShouldCancelInContentView(value tag, value tag1)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view touchesShouldCancelInContentView:arg1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiscrollview_touchesShouldCancelInContentView, 2);
void uiscrollview_zoomToRect(value tag, value arg1, value arg2)
{
	UIScrollView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view zoomToRect:arrayToCGRect(arg1) animated:val_bool(arg2) ];
	
}
DEFINE_PRIM (uiscrollview_zoomToRect, 3);
void uisearchbar_setPlaceholder(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.placeholder = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uisearchbar_setPlaceholder, 2);
value uisearchbar_getPlaceholder(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.placeholder;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uisearchbar_getPlaceholder, 1);
void uisearchbar_setPrompt(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.prompt = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uisearchbar_setPrompt, 2);
value uisearchbar_getPrompt(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.prompt;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uisearchbar_getPrompt, 1);
void uisearchbar_setSearchResultsButtonSelected(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.searchResultsButtonSelected = val_bool(arg1);
	
}
DEFINE_PRIM (uisearchbar_setSearchResultsButtonSelected, 2);
value uisearchbar_getSearchResultsButtonSelected(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.searchResultsButtonSelected;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisearchbar_getSearchResultsButtonSelected, 1);
void uisearchbar_setShowsBookmarkButton(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsBookmarkButton = val_bool(arg1);
	
}
DEFINE_PRIM (uisearchbar_setShowsBookmarkButton, 2);
value uisearchbar_getShowsBookmarkButton(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsBookmarkButton;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisearchbar_getShowsBookmarkButton, 1);
void uisearchbar_setShowsCancelButton(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsCancelButton = val_bool(arg1);
	
}
DEFINE_PRIM (uisearchbar_setShowsCancelButton, 2);
value uisearchbar_getShowsCancelButton(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsCancelButton;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisearchbar_getShowsCancelButton, 1);
void uisearchbar_setShowsScopeBar(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsScopeBar = val_bool(arg1);
	
}
DEFINE_PRIM (uisearchbar_setShowsScopeBar, 2);
value uisearchbar_getShowsScopeBar(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsScopeBar;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisearchbar_getShowsScopeBar, 1);
void uisearchbar_setShowsSearchResultsButton(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsSearchResultsButton = val_bool(arg1);
	
}
DEFINE_PRIM (uisearchbar_setShowsSearchResultsButton, 2);
value uisearchbar_getShowsSearchResultsButton(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsSearchResultsButton;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisearchbar_getShowsSearchResultsButton, 1);
void uisearchbar_setText(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.text = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uisearchbar_setText, 2);
value uisearchbar_getText(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.text;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uisearchbar_getText, 1);
void uisearchbar_setTranslucent(value tag, value arg1)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.translucent = val_bool(arg1);
	
}
DEFINE_PRIM (uisearchbar_setTranslucent, 2);
value uisearchbar_getTranslucent(value tag)
{
	UISearchBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.translucent;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisearchbar_getTranslucent, 1);
void uisegmentedcontrol_setApportionsSegmentWidthsByContent(value tag, value arg1)
{
	UISegmentedControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.apportionsSegmentWidthsByContent = val_bool(arg1);
	
}
DEFINE_PRIM (uisegmentedcontrol_setApportionsSegmentWidthsByContent, 2);
value uisegmentedcontrol_getApportionsSegmentWidthsByContent(value tag)
{
	UISegmentedControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.apportionsSegmentWidthsByContent;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisegmentedcontrol_getApportionsSegmentWidthsByContent, 1);
void uisegmentedcontrol_setMomentary(value tag, value arg1)
{
	UISegmentedControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.momentary = val_bool(arg1);
	
}
DEFINE_PRIM (uisegmentedcontrol_setMomentary, 2);
value uisegmentedcontrol_getMomentary(value tag)
{
	UISegmentedControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.momentary;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uisegmentedcontrol_getMomentary, 1);
void uisegmentedcontrol_removeAllSegments(value tag)
{
	UISegmentedControl *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view removeAllSegments];
	
}
DEFINE_PRIM (uisegmentedcontrol_removeAllSegments, 1);
void uislider_setContinuous(value tag, value arg1)
{
	UISlider *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.continuous = val_bool(arg1);
	
}
DEFINE_PRIM (uislider_setContinuous, 2);
value uislider_getContinuous(value tag)
{
	UISlider *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.continuous;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uislider_getContinuous, 1);
value uislider_maximumValueImageRectForBounds(value tag, value arg1)
{
	UISlider *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view maximumValueImageRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uislider_maximumValueImageRectForBounds, 2);
value uislider_minimumValueImageRectForBounds(value tag, value arg1)
{
	UISlider *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view minimumValueImageRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uislider_minimumValueImageRectForBounds, 2);
value uislider_trackRectForBounds(value tag, value arg1)
{
	UISlider *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view trackRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uislider_trackRectForBounds, 2);
void uistepper_setAutorepeat(value tag, value arg1)
{
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.autorepeat = val_bool(arg1);
	
}
DEFINE_PRIM (uistepper_setAutorepeat, 2);
value uistepper_getAutorepeat(value tag)
{
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.autorepeat;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uistepper_getAutorepeat, 1);
void uistepper_setContinuous(value tag, value arg1)
{
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.continuous = val_bool(arg1);
	
}
DEFINE_PRIM (uistepper_setContinuous, 2);
value uistepper_getContinuous(value tag)
{
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.continuous;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uistepper_getContinuous, 1);
void uistepper_setWraps(value tag, value arg1)
{
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.wraps = val_bool(arg1);
	
}
DEFINE_PRIM (uistepper_setWraps, 2);
value uistepper_getWraps(value tag)
{
	UIStepper *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.wraps;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uistepper_getWraps, 1);
void uiswitch_setOn(value tag, value arg1)
{
	UISwitch *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.on = val_bool(arg1);
	
}
DEFINE_PRIM (uiswitch_setOn, 2);
value uiswitch_getOn(value tag)
{
	UISwitch *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.on;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiswitch_getOn, 1);
value uitabbar_endCustomizingAnimated(value tag, value arg1)
{
	UITabBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view endCustomizingAnimated:val_bool(arg1) ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitabbar_endCustomizingAnimated, 2);
value uitabbar_isCustomizing(value tag)
{
	UITabBar *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view isCustomizing];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitabbar_isCustomizing, 1);
void uitableview_setAllowsMultipleSelection(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsMultipleSelection = val_bool(arg1);
	
}
DEFINE_PRIM (uitableview_setAllowsMultipleSelection, 2);
value uitableview_getAllowsMultipleSelection(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsMultipleSelection;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableview_getAllowsMultipleSelection, 1);
void uitableview_setAllowsMultipleSelectionDuringEditing(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsMultipleSelectionDuringEditing = val_bool(arg1);
	
}
DEFINE_PRIM (uitableview_setAllowsMultipleSelectionDuringEditing, 2);
value uitableview_getAllowsMultipleSelectionDuringEditing(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsMultipleSelectionDuringEditing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableview_getAllowsMultipleSelectionDuringEditing, 1);
void uitableview_setAllowsSelection(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsSelection = val_bool(arg1);
	
}
DEFINE_PRIM (uitableview_setAllowsSelection, 2);
value uitableview_getAllowsSelection(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsSelection;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableview_getAllowsSelection, 1);
void uitableview_setAllowsSelectionDuringEditing(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsSelectionDuringEditing = val_bool(arg1);
	
}
DEFINE_PRIM (uitableview_setAllowsSelectionDuringEditing, 2);
value uitableview_getAllowsSelectionDuringEditing(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsSelectionDuringEditing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableview_getAllowsSelectionDuringEditing, 1);
void uitableview_setBackgroundView(value tag, value tag1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.backgroundView = (arg1);
	
}
DEFINE_PRIM (uitableview_setBackgroundView, 2);
value uitableview_getBackgroundView(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.backgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableview_getBackgroundView, 1);
void uitableview_setEditing(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.editing = val_bool(arg1);
	
}
DEFINE_PRIM (uitableview_setEditing, 2);
value uitableview_getEditing(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.editing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableview_getEditing, 1);
void uitableview_setTableFooterView(value tag, value tag1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.tableFooterView = (arg1);
	
}
DEFINE_PRIM (uitableview_setTableFooterView, 2);
value uitableview_getTableFooterView(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.tableFooterView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableview_getTableFooterView, 1);
void uitableview_setTableHeaderView(value tag, value tag1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.tableHeaderView = (arg1);
	
}
DEFINE_PRIM (uitableview_setTableHeaderView, 2);
value uitableview_getTableHeaderView(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.tableHeaderView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableview_getTableHeaderView, 1);
void uitableview_beginUpdates(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view beginUpdates];
	
}
DEFINE_PRIM (uitableview_beginUpdates, 1);
value uitableview_dequeueReusableCellWithIdentifier(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view dequeueReusableCellWithIdentifier:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] ];
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableview_dequeueReusableCellWithIdentifier, 2);
value uitableview_dequeueReusableHeaderFooterViewWithIdentifier(value tag, value arg1)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id returnVar = (id)[view dequeueReusableHeaderFooterViewWithIdentifier:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] ];
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableview_dequeueReusableHeaderFooterViewWithIdentifier, 2);
void uitableview_endUpdates(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view endUpdates];
	
}
DEFINE_PRIM (uitableview_endUpdates, 1);
void uitableview_reloadData(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadData];
	
}
DEFINE_PRIM (uitableview_reloadData, 1);
void uitableview_reloadSectionIndexTitles(value tag)
{
	UITableView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reloadSectionIndexTitles];
	
}
DEFINE_PRIM (uitableview_reloadSectionIndexTitles, 1);
void uitableviewcell_setBackgroundView(value tag, value tag1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.backgroundView = (arg1);
	
}
DEFINE_PRIM (uitableviewcell_setBackgroundView, 2);
value uitableviewcell_getBackgroundView(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.backgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getBackgroundView, 1);
value uitableviewcell_getContentView(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.contentView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getContentView, 1);
value uitableviewcell_getDetailTextLabel(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel* returnVar = (UILabel*)view.detailTextLabel;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getDetailTextLabel, 1);
void uitableviewcell_setEditing(value tag, value arg1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.editing = val_bool(arg1);
	
}
DEFINE_PRIM (uitableviewcell_setEditing, 2);
value uitableviewcell_getEditing(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.editing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableviewcell_getEditing, 1);
void uitableviewcell_setEditingAccessoryView(value tag, value tag1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.editingAccessoryView = (arg1);
	
}
DEFINE_PRIM (uitableviewcell_setEditingAccessoryView, 2);
value uitableviewcell_getEditingAccessoryView(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.editingAccessoryView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getEditingAccessoryView, 1);
void uitableviewcell_setMultipleSelectionBackgroundView(value tag, value tag1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.multipleSelectionBackgroundView = (arg1);
	
}
DEFINE_PRIM (uitableviewcell_setMultipleSelectionBackgroundView, 2);
value uitableviewcell_getMultipleSelectionBackgroundView(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.multipleSelectionBackgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getMultipleSelectionBackgroundView, 1);
value uitableviewcell_getReuseIdentifier(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.reuseIdentifier;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uitableviewcell_getReuseIdentifier, 1);
void uitableviewcell_setSelected(value tag, value arg1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.selected = val_bool(arg1);
	
}
DEFINE_PRIM (uitableviewcell_setSelected, 2);
value uitableviewcell_getSelected(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.selected;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableviewcell_getSelected, 1);
void uitableviewcell_setSelectedBackgroundView(value tag, value tag1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.selectedBackgroundView = (arg1);
	
}
DEFINE_PRIM (uitableviewcell_setSelectedBackgroundView, 2);
value uitableviewcell_getSelectedBackgroundView(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.selectedBackgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getSelectedBackgroundView, 1);
void uitableviewcell_setShouldIndentWhileEditing(value tag, value arg1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.shouldIndentWhileEditing = val_bool(arg1);
	
}
DEFINE_PRIM (uitableviewcell_setShouldIndentWhileEditing, 2);
value uitableviewcell_getShouldIndentWhileEditing(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.shouldIndentWhileEditing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableviewcell_getShouldIndentWhileEditing, 1);
value uitableviewcell_getShowingDeleteConfirmation(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showingDeleteConfirmation;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableviewcell_getShowingDeleteConfirmation, 1);
void uitableviewcell_setShowsReorderControl(value tag, value arg1)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.showsReorderControl = val_bool(arg1);
	
}
DEFINE_PRIM (uitableviewcell_setShowsReorderControl, 2);
value uitableviewcell_getShowsReorderControl(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.showsReorderControl;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitableviewcell_getShowsReorderControl, 1);
value uitableviewcell_getTextLabel(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel* returnVar = (UILabel*)view.textLabel;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewcell_getTextLabel, 1);
void uitableviewcell_prepareForReuse(value tag)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view prepareForReuse];
	
}
DEFINE_PRIM (uitableviewcell_prepareForReuse, 1);
void uitableviewcell_setHighlighted(value tag, value arg1, value arg2)
{
	UITableViewCell *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setHighlighted:val_bool(arg1) animated:val_bool(arg2) ];
	
}
DEFINE_PRIM (uitableviewcell_setHighlighted, 3);
void uitableviewheaderfooterview_setBackgroundView(value tag, value tag1)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.backgroundView = (arg1);
	
}
DEFINE_PRIM (uitableviewheaderfooterview_setBackgroundView, 2);
value uitableviewheaderfooterview_getBackgroundView(value tag)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.backgroundView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewheaderfooterview_getBackgroundView, 1);
value uitableviewheaderfooterview_getContentView(value tag)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.contentView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewheaderfooterview_getContentView, 1);
value uitableviewheaderfooterview_getDetailTextLabel(value tag)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel* returnVar = (UILabel*)view.detailTextLabel;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewheaderfooterview_getDetailTextLabel, 1);
value uitableviewheaderfooterview_getReuseIdentifier(value tag)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.reuseIdentifier;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uitableviewheaderfooterview_getReuseIdentifier, 1);
value uitableviewheaderfooterview_getTextLabel(value tag)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UILabel* returnVar = (UILabel*)view.textLabel;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitableviewheaderfooterview_getTextLabel, 1);
void uitableviewheaderfooterview_prepareForReuse(value tag)
{
	UITableViewHeaderFooterView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view prepareForReuse];
	
}
DEFINE_PRIM (uitableviewheaderfooterview_prepareForReuse, 1);
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
value uitextfield_getEditing(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.editing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextfield_getEditing, 1);
void uitextfield_setLeftView(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.leftView = (arg1);
	
}
DEFINE_PRIM (uitextfield_setLeftView, 2);
value uitextfield_getLeftView(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.leftView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitextfield_getLeftView, 1);
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
void uitextfield_setRightView(value tag, value tag1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	view.rightView = (arg1);
	
}
DEFINE_PRIM (uitextfield_setRightView, 2);
value uitextfield_getRightView(value tag)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.rightView;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uitextfield_getRightView, 1);
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
value uitextfield_borderRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view borderRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_borderRectForBounds, 2);
value uitextfield_clearButtonRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view clearButtonRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_clearButtonRectForBounds, 2);
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
value uitextfield_editingRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view editingRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_editingRectForBounds, 2);
value uitextfield_leftViewRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view leftViewRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_leftViewRectForBounds, 2);
value uitextfield_placeholderRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view placeholderRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_placeholderRectForBounds, 2);
value uitextfield_rightViewRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view rightViewRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_rightViewRectForBounds, 2);
value uitextfield_textRectForBounds(value tag, value arg1)
{
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view textRectForBounds:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uitextfield_textRectForBounds, 2);
void uitextview_setAllowsEditingTextAttributes(value tag, value arg1)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.allowsEditingTextAttributes = val_bool(arg1);
	
}
DEFINE_PRIM (uitextview_setAllowsEditingTextAttributes, 2);
value uitextview_getAllowsEditingTextAttributes(value tag)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.allowsEditingTextAttributes;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextview_getAllowsEditingTextAttributes, 1);
void uitextview_setClearsOnInsertion(value tag, value arg1)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.clearsOnInsertion = val_bool(arg1);
	
}
DEFINE_PRIM (uitextview_setClearsOnInsertion, 2);
value uitextview_getClearsOnInsertion(value tag)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.clearsOnInsertion;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextview_getClearsOnInsertion, 1);
void uitextview_setEditable(value tag, value arg1)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.editable = val_bool(arg1);
	
}
DEFINE_PRIM (uitextview_setEditable, 2);
value uitextview_getEditable(value tag)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.editable;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextview_getEditable, 1);
void uitextview_setText(value tag, value arg1)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.text = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uitextview_setText, 2);
value uitextview_getText(value tag)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.text;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uitextview_getText, 1);
value uitextview_hasText(value tag)
{
	UITextView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasText];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uitextview_hasText, 1);
void uiview_setAutoresizesSubviews(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.autoresizesSubviews = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setAutoresizesSubviews, 2);
value uiview_getAutoresizesSubviews(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.autoresizesSubviews;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getAutoresizesSubviews, 1);
void uiview_setBounds(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.bounds = arrayToCGRect(arg1);
	
}
DEFINE_PRIM (uiview_setBounds, 2);
value uiview_getBounds(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)view.bounds;
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uiview_getBounds, 1);
void uiview_setClearsContextBeforeDrawing(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.clearsContextBeforeDrawing = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setClearsContextBeforeDrawing, 2);
value uiview_getClearsContextBeforeDrawing(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.clearsContextBeforeDrawing;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getClearsContextBeforeDrawing, 1);
void uiview_setClipsToBounds(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.clipsToBounds = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setClipsToBounds, 2);
value uiview_getClipsToBounds(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.clipsToBounds;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getClipsToBounds, 1);
void uiview_setExclusiveTouch(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.exclusiveTouch = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setExclusiveTouch, 2);
value uiview_getExclusiveTouch(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.exclusiveTouch;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getExclusiveTouch, 1);
void uiview_setFrame(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.frame = arrayToCGRect(arg1);
	
}
DEFINE_PRIM (uiview_setFrame, 2);
value uiview_getFrame(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)view.frame;
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uiview_getFrame, 1);
void uiview_setHidden(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.hidden = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setHidden, 2);
value uiview_getHidden(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.hidden;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getHidden, 1);
void uiview_setMultipleTouchEnabled(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.multipleTouchEnabled = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setMultipleTouchEnabled, 2);
value uiview_getMultipleTouchEnabled(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.multipleTouchEnabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getMultipleTouchEnabled, 1);
void uiview_setOpaque(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.opaque = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setOpaque, 2);
value uiview_getOpaque(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.opaque;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getOpaque, 1);
void uiview_setRestorationIdentifier(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.restorationIdentifier = [NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding];
	
}
DEFINE_PRIM (uiview_setRestorationIdentifier, 2);
value uiview_getRestorationIdentifier(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)view.restorationIdentifier;
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uiview_getRestorationIdentifier, 1);
value uiview_getSuperview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)view.superview;
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uiview_getSuperview, 1);
void uiview_setUserInteractionEnabled(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.userInteractionEnabled = val_bool(arg1);
	
}
DEFINE_PRIM (uiview_setUserInteractionEnabled, 2);
value uiview_getUserInteractionEnabled(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.userInteractionEnabled;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_getUserInteractionEnabled, 1);
void uiview_addSubview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view addSubview:arg1 ];
	
}
DEFINE_PRIM (uiview_addSubview, 2);
value uiview_alignmentRectForFrame(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view alignmentRectForFrame:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uiview_alignmentRectForFrame, 2);
void uiview_bringSubviewToFront(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view bringSubviewToFront:arg1 ];
	
}
DEFINE_PRIM (uiview_bringSubviewToFront, 2);
void uiview_didAddSubview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view didAddSubview:arg1 ];
	
}
DEFINE_PRIM (uiview_didAddSubview, 2);
void uiview_didMoveToSuperview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view didMoveToSuperview];
	
}
DEFINE_PRIM (uiview_didMoveToSuperview, 1);
void uiview_didMoveToWindow(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view didMoveToWindow];
	
}
DEFINE_PRIM (uiview_didMoveToWindow, 1);
void uiview_drawRect(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view drawRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_drawRect, 2);
value uiview_endEditing(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view endEditing:val_bool(arg1) ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_endEditing, 2);
void uiview_exerciseAmbiguityInLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view exerciseAmbiguityInLayout];
	
}
DEFINE_PRIM (uiview_exerciseAmbiguityInLayout, 1);
value uiview_frameForAlignmentRect(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	CGRect returnVar = (CGRect)[view frameForAlignmentRect:arrayToCGRect(arg1) ];
	return cgRectToArray(returnVar);
}
DEFINE_PRIM (uiview_frameForAlignmentRect, 2);
value uiview_hasAmbiguousLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view hasAmbiguousLayout];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_hasAmbiguousLayout, 1);
void uiview_insertSubview(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id arg2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertSubview:arg1 belowSubview:arg2 ];
	
}
DEFINE_PRIM (uiview_insertSubview, 3);
void uiview_insertSubview2(value tag, value tag1, value tag2)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	id arg2 = [views objectForKey:[NSNumber numberWithInt:val_int(tag2)]];
	[view insertSubview:arg1 aboveSubview:arg2 ];
	
}
DEFINE_PRIM (uiview_insertSubview2, 3);
void uiview_invalidateIntrinsicContentSize(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view invalidateIntrinsicContentSize];
	
}
DEFINE_PRIM (uiview_invalidateIntrinsicContentSize, 1);
value uiview_isDescendantOfView(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	BOOL returnVar = (BOOL)(int)[view isDescendantOfView:arg1 ];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_isDescendantOfView, 2);
void uiview_layoutIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layoutIfNeeded];
	
}
DEFINE_PRIM (uiview_layoutIfNeeded, 1);
void uiview_layoutSubviews(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view layoutSubviews];
	
}
DEFINE_PRIM (uiview_layoutSubviews, 1);
value uiview_needsUpdateConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view needsUpdateConstraints];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_needsUpdateConstraints, 1);
void uiview_removeFromSuperview(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view removeFromSuperview];
	
}
DEFINE_PRIM (uiview_removeFromSuperview, 1);
void uiview_sendSubviewToBack(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view sendSubviewToBack:arg1 ];
	
}
DEFINE_PRIM (uiview_sendSubviewToBack, 2);
void uiview_setNeedsDisplay(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsDisplay];
	
}
DEFINE_PRIM (uiview_setNeedsDisplay, 1);
void uiview_setNeedsDisplayInRect(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsDisplayInRect:arrayToCGRect(arg1) ];
	
}
DEFINE_PRIM (uiview_setNeedsDisplayInRect, 2);
void uiview_setNeedsLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsLayout];
	
}
DEFINE_PRIM (uiview_setNeedsLayout, 1);
void uiview_setNeedsUpdateConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setNeedsUpdateConstraints];
	
}
DEFINE_PRIM (uiview_setNeedsUpdateConstraints, 1);
void uiview_setTranslatesAutoresizingMaskIntoConstraints(value tag, value arg1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view setTranslatesAutoresizingMaskIntoConstraints:val_bool(arg1) ];
	
}
DEFINE_PRIM (uiview_setTranslatesAutoresizingMaskIntoConstraints, 2);
void uiview_sizeToFit(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view sizeToFit];
	
}
DEFINE_PRIM (uiview_sizeToFit, 1);
value uiview_translatesAutoresizingMaskIntoConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)[view translatesAutoresizingMaskIntoConstraints];
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiview_translatesAutoresizingMaskIntoConstraints, 1);
void uiview_updateConstraints(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view updateConstraints];
	
}
DEFINE_PRIM (uiview_updateConstraints, 1);
void uiview_updateConstraintsIfNeeded(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view updateConstraintsIfNeeded];
	
}
DEFINE_PRIM (uiview_updateConstraintsIfNeeded, 1);
value uiview_viewForBaselineLayout(value tag)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	UIView* returnVar = (UIView*)[view viewForBaselineLayout];
	return alloc_int((int)[returnVar tag]);
}
DEFINE_PRIM (uiview_viewForBaselineLayout, 1);
void uiview_willMoveToSuperview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willMoveToSuperview:arg1 ];
	
}
DEFINE_PRIM (uiview_willMoveToSuperview, 2);
void uiview_willRemoveSubview(value tag, value tag1)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	id arg1 = [views objectForKey:[NSNumber numberWithInt:val_int(tag1)]];
	[view willRemoveSubview:arg1 ];
	
}
DEFINE_PRIM (uiview_willRemoveSubview, 2);
value uiwebview_getCanGoBack(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.canGoBack;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getCanGoBack, 1);
value uiwebview_getCanGoForward(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.canGoForward;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getCanGoForward, 1);
void uiwebview_setKeyboardDisplayRequiresUserAction(value tag, value arg1)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.keyboardDisplayRequiresUserAction = val_bool(arg1);
	
}
DEFINE_PRIM (uiwebview_setKeyboardDisplayRequiresUserAction, 2);
value uiwebview_getKeyboardDisplayRequiresUserAction(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.keyboardDisplayRequiresUserAction;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getKeyboardDisplayRequiresUserAction, 1);
value uiwebview_getLoading(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.loading;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getLoading, 1);
void uiwebview_setMediaPlaybackAllowsAirPlay(value tag, value arg1)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.mediaPlaybackAllowsAirPlay = val_bool(arg1);
	
}
DEFINE_PRIM (uiwebview_setMediaPlaybackAllowsAirPlay, 2);
value uiwebview_getMediaPlaybackAllowsAirPlay(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.mediaPlaybackAllowsAirPlay;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getMediaPlaybackAllowsAirPlay, 1);
void uiwebview_setMediaPlaybackRequiresUserAction(value tag, value arg1)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.mediaPlaybackRequiresUserAction = val_bool(arg1);
	
}
DEFINE_PRIM (uiwebview_setMediaPlaybackRequiresUserAction, 2);
value uiwebview_getMediaPlaybackRequiresUserAction(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.mediaPlaybackRequiresUserAction;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getMediaPlaybackRequiresUserAction, 1);
void uiwebview_setScalesPageToFit(value tag, value arg1)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.scalesPageToFit = val_bool(arg1);
	
}
DEFINE_PRIM (uiwebview_setScalesPageToFit, 2);
value uiwebview_getScalesPageToFit(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.scalesPageToFit;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getScalesPageToFit, 1);
void uiwebview_setSuppressesIncrementalRendering(value tag, value arg1)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.suppressesIncrementalRendering = val_bool(arg1);
	
}
DEFINE_PRIM (uiwebview_setSuppressesIncrementalRendering, 2);
value uiwebview_getSuppressesIncrementalRendering(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.suppressesIncrementalRendering;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwebview_getSuppressesIncrementalRendering, 1);
void uiwebview_goBack(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view goBack];
	
}
DEFINE_PRIM (uiwebview_goBack, 1);
void uiwebview_goForward(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view goForward];
	
}
DEFINE_PRIM (uiwebview_goForward, 1);
void uiwebview_reload(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view reload];
	
}
DEFINE_PRIM (uiwebview_reload, 1);
void uiwebview_stopLoading(value tag)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view stopLoading];
	
}
DEFINE_PRIM (uiwebview_stopLoading, 1);
value uiwebview_stringByEvaluatingJavaScriptFromString(value tag, value arg1)
{
	UIWebView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	NSString* returnVar = (NSString*)[view stringByEvaluatingJavaScriptFromString:[NSString stringWithCString:val_string(arg1)encoding:NSUTF8StringEncoding] ];
	return alloc_string([returnVar cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (uiwebview_stringByEvaluatingJavaScriptFromString, 2);
value uiwindow_getKeyWindow(value tag)
{
	UIWindow *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	BOOL returnVar = (BOOL)(int)view.keyWindow;
	return alloc_bool(returnVar);
}
DEFINE_PRIM (uiwindow_getKeyWindow, 1);
void uiwindow_becomeKeyWindow(value tag)
{
	UIWindow *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view becomeKeyWindow];
	
}
DEFINE_PRIM (uiwindow_becomeKeyWindow, 1);
void uiwindow_makeKeyAndVisible(value tag)
{
	UIWindow *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view makeKeyAndVisible];
	
}
DEFINE_PRIM (uiwindow_makeKeyAndVisible, 1);
void uiwindow_makeKeyWindow(value tag)
{
	UIWindow *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view makeKeyWindow];
	
}
DEFINE_PRIM (uiwindow_makeKeyWindow, 1);
void uiwindow_resignKeyWindow(value tag)
{
	UIWindow *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[view resignKeyWindow];
	
}
DEFINE_PRIM (uiwindow_resignKeyWindow, 1);
void initUIViewEventListeners(int tag)
{
	initUIResponderEventListeners(tag);
	
}
void initUIButtonEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	
}
void initUIResponderEventListeners(int tag)
{
}
void initUILabelEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	
}
void initUIImageViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
/*
void initMKMapViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	
}
*/
void initUIAlertViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	
}
void initUICollectionReusableViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	
}
void initUICollectionViewEventListeners(int tag)
{
	initUIScrollViewEventListeners(tag);
	
}
void initUICollectionViewCellEventListeners(int tag)
{
	initUICollectionReusableViewEventListeners(tag);
	
}
void initUIDatePickerEventListeners(int tag)
{
	initUIControlEventListeners(tag);
	
}
void initUINavigationBarEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	
}
void initUIPageControlEventListeners(int tag)
{
	initUIViewEventListeners(tag);
	
}
void initUIPickerViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUIPopoverBackgroundViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUIProgressViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUIRefreshControlEventListeners(int tag)
{
	initUIControlEventListeners(tag);
}
void initUIScrollViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUISearchBarEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUISegmentedControlEventListeners(int tag)
{
	initUIControlEventListeners(tag);
}
void initUISliderEventListeners(int tag)
{
	initUIControlEventListeners(tag);
}
void initUIStepperEventListeners(int tag)
{
	initUIControlEventListeners(tag);
}
void initUISwitchEventListeners(int tag)
{
	initUIControlEventListeners(tag);
}
void initUITabBarEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUITableViewEventListeners(int tag)
{
	initUIScrollViewEventListeners(tag);
}
void initUITableViewCellEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUITableViewHeaderFooterViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUITextViewEventListeners(int tag)
{
	initUIScrollViewEventListeners(tag);
}
void initUIWebViewEventListeners(int tag)
{
	initUIViewEventListeners(tag);
}
void initUIWindowEventListeners(int tag)
{
	initUIViewEventListeners(tag);
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
