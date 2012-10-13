package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIView extends UIResponder
{
	public function new(?type:Int = 0)
	{
		super(type);
	}
	
	

	public function canHandleSwipes():Bool
	{
		return cpp_uiview_canHandleSwipes(_tag);
	}
	private static var cpp_uiview_canHandleSwipes = Lib.load("basis", "uiview_canHandleSwipes", 1);

	public function tapDelegate():UIView
	{
		return cpp_uiview_tapDelegate(_tag);
	}
	private static var cpp_uiview_tapDelegate = Lib.load("basis", "uiview_tapDelegate", 1);

	public function setTapDelegate(arg1:UIView):Void
	{
		cpp_uiview_setTapDelegate(_tag, arg1.tag);
	}
	private static var cpp_uiview_setTapDelegate = Lib.load("basis", "uiview_setTapDelegate", 2);

	public function nsli_contentHeightVariable():UIView
	{
		return cpp_uiview_nsli_contentHeightVariable(_tag);
	}
	private static var cpp_uiview_nsli_contentHeightVariable = Lib.load("basis", "uiview_nsli_contentHeightVariable", 1);

	public function nsli_contentWidthVariable():UIView
	{
		return cpp_uiview_nsli_contentWidthVariable(_tag);
	}
	private static var cpp_uiview_nsli_contentWidthVariable = Lib.load("basis", "uiview_nsli_contentWidthVariable", 1);

	public function nsli_minYVariable():UIView
	{
		return cpp_uiview_nsli_minYVariable(_tag);
	}
	private static var cpp_uiview_nsli_minYVariable = Lib.load("basis", "uiview_nsli_minYVariable", 1);

	public function nsli_minXVariable():UIView
	{
		return cpp_uiview_nsli_minXVariable(_tag);
	}
	private static var cpp_uiview_nsli_minXVariable = Lib.load("basis", "uiview_nsli_minXVariable", 1);

	public function nsli_boundsHeightVariable():UIView
	{
		return cpp_uiview_nsli_boundsHeightVariable(_tag);
	}
	private static var cpp_uiview_nsli_boundsHeightVariable = Lib.load("basis", "uiview_nsli_boundsHeightVariable", 1);

	public function nsli_boundsWidthVariable():UIView
	{
		return cpp_uiview_nsli_boundsWidthVariable(_tag);
	}
	private static var cpp_uiview_nsli_boundsWidthVariable = Lib.load("basis", "uiview_nsli_boundsWidthVariable", 1);

	public function retain():UIView
	{
		return cpp_uiview_retain(_tag);
	}
	private static var cpp_uiview_retain = Lib.load("basis", "uiview_retain", 1);

	public function setBounds(arg1:Array<Float>):Void
	{
		cpp_uiview_setBounds(_tag, arg1);
	}
	private static var cpp_uiview_setBounds = Lib.load("basis", "uiview_setBounds", 2);

	public function sizeToFit():Void
	{
		cpp_uiview_sizeToFit(_tag);
	}
	private static var cpp_uiview_sizeToFit = Lib.load("basis", "uiview_sizeToFit", 1);

	public function setAutoresizingMask(arg1:Int):Void
	{
		cpp_uiview_setAutoresizingMask(_tag, arg1);
	}
	private static var cpp_uiview_setAutoresizingMask = Lib.load("basis", "uiview_setAutoresizingMask", 2);

	public function autoresizesSubviews():Bool
	{
		return cpp_uiview_autoresizesSubviews(_tag);
	}
	private static var cpp_uiview_autoresizesSubviews = Lib.load("basis", "uiview_autoresizesSubviews", 1);

	public function setAutoresizesSubviews(arg1:Bool):Void
	{
		cpp_uiview_setAutoresizesSubviews(_tag, arg1);
	}
	private static var cpp_uiview_setAutoresizesSubviews = Lib.load("basis", "uiview_setAutoresizesSubviews", 2);

	public function setFrame(arg1:Array<Float>, arg2:Int):Void
	{
		cpp_uiview_setFrame(_tag, arg1, arg2);
	}
	private static var cpp_uiview_setFrame = Lib.load("basis", "uiview_setFrame", 3);

	public function isExclusiveTouch():Bool
	{
		return cpp_uiview_isExclusiveTouch(_tag);
	}
	private static var cpp_uiview_isExclusiveTouch = Lib.load("basis", "uiview_isExclusiveTouch", 1);

	public function setExclusiveTouch(arg1:Bool):Void
	{
		cpp_uiview_setExclusiveTouch(_tag, arg1);
	}
	private static var cpp_uiview_setExclusiveTouch = Lib.load("basis", "uiview_setExclusiveTouch", 2);

	public function isMultipleTouchEnabled():Bool
	{
		return cpp_uiview_isMultipleTouchEnabled(_tag);
	}
	private static var cpp_uiview_isMultipleTouchEnabled = Lib.load("basis", "uiview_isMultipleTouchEnabled", 1);

	public function setMultipleTouchEnabled(arg1:Bool):Void
	{
		cpp_uiview_setMultipleTouchEnabled(_tag, arg1);
	}
	private static var cpp_uiview_setMultipleTouchEnabled = Lib.load("basis", "uiview_setMultipleTouchEnabled", 2);

	public function setFrame2(arg1:Array<Float>):Void
	{
		cpp_uiview_setFrame2(_tag, arg1);
	}
	private static var cpp_uiview_setFrame2 = Lib.load("basis", "uiview_setFrame2", 2);

	public function layoutBelowIfNeeded():Void
	{
		cpp_uiview_layoutBelowIfNeeded(_tag);
	}
	private static var cpp_uiview_layoutBelowIfNeeded = Lib.load("basis", "uiview_layoutBelowIfNeeded", 1);

	public function layoutIfNeeded():Void
	{
		cpp_uiview_layoutIfNeeded(_tag);
	}
	private static var cpp_uiview_layoutIfNeeded = Lib.load("basis", "uiview_layoutIfNeeded", 1);

	public function setNeedsLayout():Void
	{
		cpp_uiview_setNeedsLayout(_tag);
	}
	private static var cpp_uiview_setNeedsLayout = Lib.load("basis", "uiview_setNeedsLayout", 1);

	public function viewWithTag(arg1:Int):UIView
	{
		return cpp_uiview_viewWithTag(_tag, arg1);
	}
	private static var cpp_uiview_viewWithTag = Lib.load("basis", "uiview_viewWithTag", 2);

	public function isDescendantOfView(arg1:UIView):Bool
	{
		return cpp_uiview_isDescendantOfView(_tag, arg1.tag);
	}
	private static var cpp_uiview_isDescendantOfView = Lib.load("basis", "uiview_isDescendantOfView", 2);

	public function movedToWindow(arg1:UIView):Void
	{
		cpp_uiview_movedToWindow(_tag, arg1.tag);
	}
	private static var cpp_uiview_movedToWindow = Lib.load("basis", "uiview_movedToWindow", 2);

	public function movedFromWindow(arg1:UIView):Void
	{
		cpp_uiview_movedFromWindow(_tag, arg1.tag);
	}
	private static var cpp_uiview_movedFromWindow = Lib.load("basis", "uiview_movedFromWindow", 2);

	public function viewDidMoveToSuperview():Void
	{
		cpp_uiview_viewDidMoveToSuperview(_tag);
	}
	private static var cpp_uiview_viewDidMoveToSuperview = Lib.load("basis", "uiview_viewDidMoveToSuperview", 1);

	public function viewWillMoveToSuperview(arg1:UIView):Void
	{
		cpp_uiview_viewWillMoveToSuperview(_tag, arg1.tag);
	}
	private static var cpp_uiview_viewWillMoveToSuperview = Lib.load("basis", "uiview_viewWillMoveToSuperview", 2);

	public function movedToSuperview(arg1:UIView):Void
	{
		cpp_uiview_movedToSuperview(_tag, arg1.tag);
	}
	private static var cpp_uiview_movedToSuperview = Lib.load("basis", "uiview_movedToSuperview", 2);

	public function movedFromSuperview(arg1:UIView):Void
	{
		cpp_uiview_movedFromSuperview(_tag, arg1.tag);
	}
	private static var cpp_uiview_movedFromSuperview = Lib.load("basis", "uiview_movedFromSuperview", 2);

	public function deferredBecomeFirstResponder():Void
	{
		cpp_uiview_deferredBecomeFirstResponder(_tag);
	}
	private static var cpp_uiview_deferredBecomeFirstResponder = Lib.load("basis", "uiview_deferredBecomeFirstResponder", 1);

	public function insertSubview(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_insertSubview(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_insertSubview = Lib.load("basis", "uiview_insertSubview", 3);

	public function insertSubview2(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_insertSubview2(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_insertSubview2 = Lib.load("basis", "uiview_insertSubview2", 3);

	public function didMoveToWindow():Void
	{
		cpp_uiview_didMoveToWindow(_tag);
	}
	private static var cpp_uiview_didMoveToWindow = Lib.load("basis", "uiview_didMoveToWindow", 1);

	public function willMoveToWindow(arg1:UIView):Void
	{
		cpp_uiview_willMoveToWindow(_tag, arg1.tag);
	}
	private static var cpp_uiview_willMoveToWindow = Lib.load("basis", "uiview_willMoveToWindow", 2);

	public function didMoveToSuperview():Void
	{
		cpp_uiview_didMoveToSuperview(_tag);
	}
	private static var cpp_uiview_didMoveToSuperview = Lib.load("basis", "uiview_didMoveToSuperview", 1);

	public function willMoveToSuperview(arg1:UIView):Void
	{
		cpp_uiview_willMoveToSuperview(_tag, arg1.tag);
	}
	private static var cpp_uiview_willMoveToSuperview = Lib.load("basis", "uiview_willMoveToSuperview", 2);

	public function willRemoveSubview(arg1:UIView):Void
	{
		cpp_uiview_willRemoveSubview(_tag, arg1.tag);
	}
	private static var cpp_uiview_willRemoveSubview = Lib.load("basis", "uiview_willRemoveSubview", 2);

	public function didAddSubview(arg1:UIView):Void
	{
		cpp_uiview_didAddSubview(_tag, arg1.tag);
	}
	private static var cpp_uiview_didAddSubview = Lib.load("basis", "uiview_didAddSubview", 2);

	public function sendSubviewToBack(arg1:UIView):Void
	{
		cpp_uiview_sendSubviewToBack(_tag, arg1.tag);
	}
	private static var cpp_uiview_sendSubviewToBack = Lib.load("basis", "uiview_sendSubviewToBack", 2);

	public function bringSubviewToFront(arg1:UIView):Void
	{
		cpp_uiview_bringSubviewToFront(_tag, arg1.tag);
	}
	private static var cpp_uiview_bringSubviewToFront = Lib.load("basis", "uiview_bringSubviewToFront", 2);

	public function insertSubview3(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_insertSubview3(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_insertSubview3 = Lib.load("basis", "uiview_insertSubview3", 3);

	public function insertSubview4(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_insertSubview4(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_insertSubview4 = Lib.load("basis", "uiview_insertSubview4", 3);

	public function addSubview(arg1:UIView):Void
	{
		cpp_uiview_addSubview(_tag, arg1.tag);
	}
	private static var cpp_uiview_addSubview = Lib.load("basis", "uiview_addSubview", 2);

	public function exchangeSubviewAtIndex(arg1:Int, arg2:Int):Void
	{
		cpp_uiview_exchangeSubviewAtIndex(_tag, arg1, arg2);
	}
	private static var cpp_uiview_exchangeSubviewAtIndex = Lib.load("basis", "uiview_exchangeSubviewAtIndex", 3);

	public function insertSubview5(arg1:UIView, arg2:Int):Void
	{
		cpp_uiview_insertSubview5(_tag, arg1.tag, arg2);
	}
	private static var cpp_uiview_insertSubview5 = Lib.load("basis", "uiview_insertSubview5", 3);

	public function removeFromSuperview():Void
	{
		cpp_uiview_removeFromSuperview(_tag);
	}
	private static var cpp_uiview_removeFromSuperview = Lib.load("basis", "uiview_removeFromSuperview", 1);

	public function window():UIView
	{
		return cpp_uiview_window(_tag);
	}
	private static var cpp_uiview_window = Lib.load("basis", "uiview_window", 1);

	public function subviews():UIView
	{
		return cpp_uiview_subviews(_tag);
	}
	private static var cpp_uiview_subviews = Lib.load("basis", "uiview_subviews", 1);

	public function superview():UIView
	{
		return cpp_uiview_superview(_tag);
	}
	private static var cpp_uiview_superview = Lib.load("basis", "uiview_superview", 1);

	public function containsView(arg1:UIView):Bool
	{
		return cpp_uiview_containsView(_tag, arg1.tag);
	}
	private static var cpp_uiview_containsView = Lib.load("basis", "uiview_containsView", 2);

	public function recursivelyForceDisplayIfNeeded():Void
	{
		cpp_uiview_recursivelyForceDisplayIfNeeded(_tag);
	}
	private static var cpp_uiview_recursivelyForceDisplayIfNeeded = Lib.load("basis", "uiview_recursivelyForceDisplayIfNeeded", 1);

	public function forceDisplayIfNeeded():Void
	{
		cpp_uiview_forceDisplayIfNeeded(_tag);
	}
	private static var cpp_uiview_forceDisplayIfNeeded = Lib.load("basis", "uiview_forceDisplayIfNeeded", 1);

	public function setContentsPosition(arg1:Int):Void
	{
		cpp_uiview_setContentsPosition(_tag, arg1);
	}
	private static var cpp_uiview_setContentsPosition = Lib.load("basis", "uiview_setContentsPosition", 2);

	public function setClearsContext(arg1:Bool):Void
	{
		cpp_uiview_setClearsContext(_tag, arg1);
	}
	private static var cpp_uiview_setClearsContext = Lib.load("basis", "uiview_setClearsContext", 2);

	public function isHiddenOrHasHiddenAncestor():Bool
	{
		return cpp_uiview_isHiddenOrHasHiddenAncestor(_tag);
	}
	private static var cpp_uiview_isHiddenOrHasHiddenAncestor = Lib.load("basis", "uiview_isHiddenOrHasHiddenAncestor", 1);

	public function isHidden():Bool
	{
		return cpp_uiview_isHidden(_tag);
	}
	private static var cpp_uiview_isHidden = Lib.load("basis", "uiview_isHidden", 1);

	public function setHidden(arg1:Bool):Void
	{
		cpp_uiview_setHidden(_tag, arg1);
	}
	private static var cpp_uiview_setHidden = Lib.load("basis", "uiview_setHidden", 2);

	public function clearsContextBeforeDrawing():Bool
	{
		return cpp_uiview_clearsContextBeforeDrawing(_tag);
	}
	private static var cpp_uiview_clearsContextBeforeDrawing = Lib.load("basis", "uiview_clearsContextBeforeDrawing", 1);

	public function setClearsContextBeforeDrawing(arg1:Bool):Void
	{
		cpp_uiview_setClearsContextBeforeDrawing(_tag, arg1);
	}
	private static var cpp_uiview_setClearsContextBeforeDrawing = Lib.load("basis", "uiview_setClearsContextBeforeDrawing", 2);

	public function isOpaque():Bool
	{
		return cpp_uiview_isOpaque(_tag);
	}
	private static var cpp_uiview_isOpaque = Lib.load("basis", "uiview_isOpaque", 1);

	public function setOpaque(arg1:Bool):Void
	{
		cpp_uiview_setOpaque(_tag, arg1);
	}
	private static var cpp_uiview_setOpaque = Lib.load("basis", "uiview_setOpaque", 2);

	public function setFixedBackgroundPattern(arg1:Bool):Void
	{
		cpp_uiview_setFixedBackgroundPattern(_tag, arg1);
	}
	private static var cpp_uiview_setFixedBackgroundPattern = Lib.load("basis", "uiview_setFixedBackgroundPattern", 2);

	public function clipsToBounds():Bool
	{
		return cpp_uiview_clipsToBounds(_tag);
	}
	private static var cpp_uiview_clipsToBounds = Lib.load("basis", "uiview_clipsToBounds", 1);

	public function setClipsToBounds(arg1:Bool):Void
	{
		cpp_uiview_setClipsToBounds(_tag, arg1);
	}
	private static var cpp_uiview_setClipsToBounds = Lib.load("basis", "uiview_setClipsToBounds", 2);

	public function setNeedsDisplayOnBoundsChange(arg1:Bool):Void
	{
		cpp_uiview_setNeedsDisplayOnBoundsChange(_tag, arg1);
	}
	private static var cpp_uiview_setNeedsDisplayOnBoundsChange = Lib.load("basis", "uiview_setNeedsDisplayOnBoundsChange", 2);

	public function needsDisplayOnBoundsChange():Bool
	{
		return cpp_uiview_needsDisplayOnBoundsChange(_tag);
	}
	private static var cpp_uiview_needsDisplayOnBoundsChange = Lib.load("basis", "uiview_needsDisplayOnBoundsChange", 1);

	public function needsDisplay():Bool
	{
		return cpp_uiview_needsDisplay(_tag);
	}
	private static var cpp_uiview_needsDisplay = Lib.load("basis", "uiview_needsDisplay", 1);

	public function setNeedsDisplayInRect(arg1:Array<Float>):Void
	{
		cpp_uiview_setNeedsDisplayInRect(_tag, arg1);
	}
	private static var cpp_uiview_setNeedsDisplayInRect = Lib.load("basis", "uiview_setNeedsDisplayInRect", 2);

	public function setNeedsDisplay():Void
	{
		cpp_uiview_setNeedsDisplay(_tag);
	}
	private static var cpp_uiview_setNeedsDisplay = Lib.load("basis", "uiview_setNeedsDisplay", 1);

	public function drawRect(arg1:Array<Float>):Void
	{
		cpp_uiview_drawRect(_tag, arg1);
	}
	private static var cpp_uiview_drawRect = Lib.load("basis", "uiview_drawRect", 2);

	public function setContentStretch(arg1:Array<Float>):Void
	{
		cpp_uiview_setContentStretch(_tag, arg1);
	}
	private static var cpp_uiview_setContentStretch = Lib.load("basis", "uiview_setContentStretch", 2);

	public function contentMode():Int
	{
		return cpp_uiview_contentMode(_tag);
	}
	private static var cpp_uiview_contentMode = Lib.load("basis", "uiview_contentMode", 1);

	public function setContentMode(arg1:Int):Void
	{
		cpp_uiview_setContentMode(_tag, arg1);
	}
	private static var cpp_uiview_setContentMode = Lib.load("basis", "uiview_setContentMode", 2);

	public function addAnimation(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_addAnimation(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_addAnimation = Lib.load("basis", "uiview_addAnimation", 3);

	public function setClipsSubviews(arg1:Bool):Void
	{
		cpp_uiview_setClipsSubviews(_tag, arg1);
	}
	private static var cpp_uiview_setClipsSubviews = Lib.load("basis", "uiview_setClipsSubviews", 2);

	public function isEnabled():Bool
	{
		return cpp_uiview_isEnabled(_tag);
	}
	private static var cpp_uiview_isEnabled = Lib.load("basis", "uiview_isEnabled", 1);

	public function removeAllGestureRecognizers():Void
	{
		cpp_uiview_removeAllGestureRecognizers(_tag);
	}
	private static var cpp_uiview_removeAllGestureRecognizers = Lib.load("basis", "uiview_removeAllGestureRecognizers", 1);

	public function removeGestureRecognizer(arg1:UIView):Void
	{
		cpp_uiview_removeGestureRecognizer(_tag, arg1.tag);
	}
	private static var cpp_uiview_removeGestureRecognizer = Lib.load("basis", "uiview_removeGestureRecognizer", 2);

	public function addGestureRecognizer(arg1:UIView):Void
	{
		cpp_uiview_addGestureRecognizer(_tag, arg1.tag);
	}
	private static var cpp_uiview_addGestureRecognizer = Lib.load("basis", "uiview_addGestureRecognizer", 2);

	public function setGestureRecognizers(arg1:UIView):Void
	{
		cpp_uiview_setGestureRecognizers(_tag, arg1.tag);
	}
	private static var cpp_uiview_setGestureRecognizers = Lib.load("basis", "uiview_setGestureRecognizers", 2);

	public function gestureRecognizers():UIView
	{
		return cpp_uiview_gestureRecognizers(_tag);
	}
	private static var cpp_uiview_gestureRecognizers = Lib.load("basis", "uiview_gestureRecognizers", 1);

	public function actionForLayer(arg1:UIView, arg2:UIView):UIView
	{
		return cpp_uiview_actionForLayer(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_actionForLayer = Lib.load("basis", "uiview_actionForLayer", 3);

	public function layoutSublayersOfLayer(arg1:UIView):Void
	{
		cpp_uiview_layoutSublayersOfLayer(_tag, arg1.tag);
	}
	private static var cpp_uiview_layoutSublayersOfLayer = Lib.load("basis", "uiview_layoutSublayersOfLayer", 2);

	public function setValue(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_setValue(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_setValue = Lib.load("basis", "uiview_setValue", 3);

	public function recursiveDescription():UIView
	{
		return cpp_uiview_recursiveDescription(_tag);
	}
	private static var cpp_uiview_recursiveDescription = Lib.load("basis", "uiview_recursiveDescription", 1);

	public function description():UIView
	{
		return cpp_uiview_description(_tag);
	}
	private static var cpp_uiview_description = Lib.load("basis", "uiview_description", 1);

	public function scriptingInfoWithChildren():UIView
	{
		return cpp_uiview_scriptingInfoWithChildren(_tag);
	}
	private static var cpp_uiview_scriptingInfoWithChildren = Lib.load("basis", "uiview_scriptingInfoWithChildren", 1);

	public function useBlockyMagnificationInClassic():Bool
	{
		return cpp_uiview_useBlockyMagnificationInClassic(_tag);
	}
	private static var cpp_uiview_useBlockyMagnificationInClassic = Lib.load("basis", "uiview_useBlockyMagnificationInClassic", 1);

	public function endEditing(arg1:Bool):Bool
	{
		return cpp_uiview_endEditing(_tag, arg1);
	}
	private static var cpp_uiview_endEditing = Lib.load("basis", "uiview_endEditing", 2);

	public function stateForGestureType(arg1:Int):Int
	{
		return cpp_uiview_stateForGestureType(_tag, arg1);
	}
	private static var cpp_uiview_stateForGestureType = Lib.load("basis", "uiview_stateForGestureType", 2);

	public function valueForGestureAttribute(arg1:Int):UIView
	{
		return cpp_uiview_valueForGestureAttribute(_tag, arg1);
	}
	private static var cpp_uiview_valueForGestureAttribute = Lib.load("basis", "uiview_valueForGestureAttribute", 2);

	public function setValue2(arg1:UIView, arg2:Int):Void
	{
		cpp_uiview_setValue2(_tag, arg1.tag, arg2);
	}
	private static var cpp_uiview_setValue2 = Lib.load("basis", "uiview_setValue2", 3);

	public function enabledGestures():Int
	{
		return cpp_uiview_enabledGestures(_tag);
	}
	private static var cpp_uiview_enabledGestures = Lib.load("basis", "uiview_enabledGestures", 1);

	public function setEnabledGestures(arg1:Int):Void
	{
		cpp_uiview_setEnabledGestures(_tag, arg1);
	}
	private static var cpp_uiview_setEnabledGestures = Lib.load("basis", "uiview_setEnabledGestures", 2);

	public function gestureDelegate():UIView
	{
		return cpp_uiview_gestureDelegate(_tag);
	}
	private static var cpp_uiview_gestureDelegate = Lib.load("basis", "uiview_gestureDelegate", 1);

	public function setGestureDelegate(arg1:UIView):Void
	{
		cpp_uiview_setGestureDelegate(_tag, arg1.tag);
	}
	private static var cpp_uiview_setGestureDelegate = Lib.load("basis", "uiview_setGestureDelegate", 2);

	public function canHandleGestures():Bool
	{
		return cpp_uiview_canHandleGestures(_tag);
	}
	private static var cpp_uiview_canHandleGestures = Lib.load("basis", "uiview_canHandleGestures", 1);

	public function animator(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_animator(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_animator = Lib.load("basis", "uiview_animator", 3);

	public function animator2(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_animator2(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_animator2 = Lib.load("basis", "uiview_animator2", 3);

	public function needsWebDocumentViewEventsDirectly():Bool
	{
		return cpp_uiview_needsWebDocumentViewEventsDirectly(_tag);
	}
	private static var cpp_uiview_needsWebDocumentViewEventsDirectly = Lib.load("basis", "uiview_needsWebDocumentViewEventsDirectly", 1);

	public function compareTextEffectsOrdering(arg1:UIView):Int
	{
		return cpp_uiview_compareTextEffectsOrdering(_tag, arg1.tag);
	}
	private static var cpp_uiview_compareTextEffectsOrdering = Lib.load("basis", "uiview_compareTextEffectsOrdering", 2);

	public function textEffectsVisibilityLevelWhenKey():Int
	{
		return cpp_uiview_textEffectsVisibilityLevelWhenKey(_tag);
	}
	private static var cpp_uiview_textEffectsVisibilityLevelWhenKey = Lib.load("basis", "uiview_textEffectsVisibilityLevelWhenKey", 1);

	public function textEffectsVisibilityLevel():Int
	{
		return cpp_uiview_textEffectsVisibilityLevel(_tag);
	}
	private static var cpp_uiview_textEffectsVisibilityLevel = Lib.load("basis", "uiview_textEffectsVisibilityLevel", 1);

	public function drawRect2(arg1:Array<Float>, arg2:UIView):Void
	{
		cpp_uiview_drawRect2(_tag, arg1, arg2.tag);
	}
	private static var cpp_uiview_drawRect2 = Lib.load("basis", "uiview_drawRect2", 3);

	public function viewPrintFormatter():UIView
	{
		return cpp_uiview_viewPrintFormatter(_tag);
	}
	private static var cpp_uiview_viewPrintFormatter = Lib.load("basis", "uiview_viewPrintFormatter", 1);

	public function exerciseAmbiguityInLayout():Void
	{
		cpp_uiview_exerciseAmbiguityInLayout(_tag);
	}
	private static var cpp_uiview_exerciseAmbiguityInLayout = Lib.load("basis", "uiview_exerciseAmbiguityInLayout", 1);

	public function hasAmbiguousLayout():Bool
	{
		return cpp_uiview_hasAmbiguousLayout(_tag);
	}
	private static var cpp_uiview_hasAmbiguousLayout = Lib.load("basis", "uiview_hasAmbiguousLayout", 1);

	public function constraintsAffectingLayoutForAxis(arg1:Int):UIView
	{
		return cpp_uiview_constraintsAffectingLayoutForAxis(_tag, arg1);
	}
	private static var cpp_uiview_constraintsAffectingLayoutForAxis = Lib.load("basis", "uiview_constraintsAffectingLayoutForAxis", 2);

	public function removeConstraints(arg1:UIView):Void
	{
		cpp_uiview_removeConstraints(_tag, arg1.tag);
	}
	private static var cpp_uiview_removeConstraints = Lib.load("basis", "uiview_removeConstraints", 2);

	public function removeConstraint(arg1:UIView):Void
	{
		cpp_uiview_removeConstraint(_tag, arg1.tag);
	}
	private static var cpp_uiview_removeConstraint = Lib.load("basis", "uiview_removeConstraint", 2);

	public function addConstraints(arg1:UIView):Void
	{
		cpp_uiview_addConstraints(_tag, arg1.tag);
	}
	private static var cpp_uiview_addConstraints = Lib.load("basis", "uiview_addConstraints", 2);

	public function addConstraint(arg1:UIView):Void
	{
		cpp_uiview_addConstraint(_tag, arg1.tag);
	}
	private static var cpp_uiview_addConstraint = Lib.load("basis", "uiview_addConstraint", 2);

	public function constraints():UIView
	{
		return cpp_uiview_constraints(_tag);
	}
	private static var cpp_uiview_constraints = Lib.load("basis", "uiview_constraints", 1);

	public function nsli_isFlipped():Bool
	{
		return cpp_uiview_nsli_isFlipped(_tag);
	}
	private static var cpp_uiview_nsli_isFlipped = Lib.load("basis", "uiview_nsli_isFlipped", 1);

	public function nsli_descriptionIncludesPointer():Bool
	{
		return cpp_uiview_nsli_descriptionIncludesPointer(_tag);
	}
	private static var cpp_uiview_nsli_descriptionIncludesPointer = Lib.load("basis", "uiview_nsli_descriptionIncludesPointer", 1);

	public function nsli_description():UIView
	{
		return cpp_uiview_nsli_description(_tag);
	}
	private static var cpp_uiview_nsli_description = Lib.load("basis", "uiview_nsli_description", 1);

	public function nsli_superitem():UIView
	{
		return cpp_uiview_nsli_superitem(_tag);
	}
	private static var cpp_uiview_nsli_superitem = Lib.load("basis", "uiview_nsli_superitem", 1);

	public function nsli_layoutEngine():UIView
	{
		return cpp_uiview_nsli_layoutEngine(_tag);
	}
	private static var cpp_uiview_nsli_layoutEngine = Lib.load("basis", "uiview_nsli_layoutEngine", 1);

	public function nsis_valueOfVariableIsUserObservable(arg1:UIView):Bool
	{
		return cpp_uiview_nsis_valueOfVariableIsUserObservable(_tag, arg1.tag);
	}
	private static var cpp_uiview_nsis_valueOfVariableIsUserObservable = Lib.load("basis", "uiview_nsis_valueOfVariableIsUserObservable", 2);

	public function nsis_shouldIntegralizeVariable(arg1:UIView):Bool
	{
		return cpp_uiview_nsis_shouldIntegralizeVariable(_tag, arg1.tag);
	}
	private static var cpp_uiview_nsis_shouldIntegralizeVariable = Lib.load("basis", "uiview_nsis_shouldIntegralizeVariable", 2);

	public function nsis_descriptionOfVariable(arg1:UIView):UIView
	{
		return cpp_uiview_nsis_descriptionOfVariable(_tag, arg1.tag);
	}
	private static var cpp_uiview_nsis_descriptionOfVariable = Lib.load("basis", "uiview_nsis_descriptionOfVariable", 2);

	public function nsis_valueOfVariable(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_nsis_valueOfVariable(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_nsis_valueOfVariable = Lib.load("basis", "uiview_nsis_valueOfVariable", 3);

	public function userInterfaceItemIdentifier():UIView
	{
		return cpp_uiview_userInterfaceItemIdentifier(_tag);
	}
	private static var cpp_uiview_userInterfaceItemIdentifier = Lib.load("basis", "uiview_userInterfaceItemIdentifier", 1);

	public function updateConstraintsIfNeeded():Void
	{
		cpp_uiview_updateConstraintsIfNeeded(_tag);
	}
	private static var cpp_uiview_updateConstraintsIfNeeded = Lib.load("basis", "uiview_updateConstraintsIfNeeded", 1);

	public function setTranslatesAutoresizingMaskIntoConstraints(arg1:Bool):Void
	{
		cpp_uiview_setTranslatesAutoresizingMaskIntoConstraints(_tag, arg1);
	}
	private static var cpp_uiview_setTranslatesAutoresizingMaskIntoConstraints = Lib.load("basis", "uiview_setTranslatesAutoresizingMaskIntoConstraints", 2);

	public function needsLayout():Bool
	{
		return cpp_uiview_needsLayout(_tag);
	}
	private static var cpp_uiview_needsLayout = Lib.load("basis", "uiview_needsLayout", 1);

	public function translatesAutoresizingMaskIntoConstraints():Bool
	{
		return cpp_uiview_translatesAutoresizingMaskIntoConstraints(_tag);
	}
	private static var cpp_uiview_translatesAutoresizingMaskIntoConstraints = Lib.load("basis", "uiview_translatesAutoresizingMaskIntoConstraints", 1);

	public function setNeedsUpdateConstraints():Void
	{
		cpp_uiview_setNeedsUpdateConstraints(_tag);
	}
	private static var cpp_uiview_setNeedsUpdateConstraints = Lib.load("basis", "uiview_setNeedsUpdateConstraints", 1);

	public function needsUpdateConstraints():Bool
	{
		return cpp_uiview_needsUpdateConstraints(_tag);
	}
	private static var cpp_uiview_needsUpdateConstraints = Lib.load("basis", "uiview_needsUpdateConstraints", 1);

}