
void controlInitEventListeners(int tag)
{
	UIControl *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	[view addTarget:eventManager action:@selector(onUIControlEventTouchDown::) forControlEvents: UIControlEventTouchDown];
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




