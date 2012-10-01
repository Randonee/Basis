value view_getSuperview(value tag)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
    if(view != nil && view.superview != nil)
        return alloc_int(view.superview.tag);
    
    return alloc_int(-1);
}
DEFINE_PRIM (view_getSuperview, 1);

void viewInitEventLiteners(UIView *view)
{
}


static void onDidMoveToSuperview(void (^listener)(id _self, UIView* subview))
{
    Method didMoveToSuperviewMethod = class_getInstanceMethod([UIView class], @selector(didMoveToSuperview));
    IMP originalImp = method_getImplementation(didMoveToSuperviewMethod);

    void (^block)(id, UIView*) = ^(id _self, UIView* subview) {
        originalImp(_self, @selector(didAddSubview:), subview);
        listener(_self, subview);
    };

    IMP newImp = imp_implementationWithBlock((__bridge void*)block);
    method_setImplementation(addSubviewMethod, newImp);
}


void view_setFrameX(value tag, value amount)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.frame = CGRectMake( val_float(amount), view.frame.origin.y, view.frame.size.width, view.frame.size.height );
}
DEFINE_PRIM (view_setFrameX, 2);

void view_setFrameY(value tag, value amount)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.frame = CGRectMake( view.frame.origin.x, val_float(amount), view.frame.size.width, view.frame.size.height );
}
DEFINE_PRIM (view_setFrameY, 2);

void view_setFrameWidth(value tag, value amount)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.frame = CGRectMake( view.frame.origin.x, view.frame.origin.y, val_float(amount), view.frame.size.height );
}
DEFINE_PRIM (view_setFrameWidth, 2);

void view_setFrameHeight(value tag, value amount)
{
	UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	view.frame = CGRectMake( view.frame.origin.x, view.frame.origin.y, view.frame.size.width, val_float(amount) );
}
DEFINE_PRIM (view_setFrameHeight, 2);


value view_getFrameX(value tag)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
    return alloc_float(view.frame.origin.x);
}
DEFINE_PRIM (view_getFrameX, 1);

value view_getFrameY(value tag)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
    return alloc_float(view.frame.origin.y);
}
DEFINE_PRIM (view_getFrameY, 1);

value view_getFrameWidth(value tag)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
    return alloc_float(view.frame.size.width);
}
DEFINE_PRIM (view_getFrameWidth, 1);

value view_getFrameHeight(value tag)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
    return alloc_float(view.frame.size.height);
}
DEFINE_PRIM (view_getFrameHeight, 1);

void viewSetFrame(int tag, float x, float y, float width, float height)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
    view.frame = CGRectMake(x, y, width, height);
}

void viewSetBounds(int tag, float x, float y, float width, float height)
{
    UIView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
    view.bounds = CGRectMake(x, y, width, height);
}


void view_addSubview(value parentTag, value newChildTag)
{
    UIView *childView = [views objectForKey:[NSNumber numberWithInt:val_int(newChildTag)]];
    if(parentTag > 0)
    {
        UIView *parentView = [views objectForKey:[NSNumber numberWithInt:val_int(parentTag)]];
        [parentView addSubview:childView];
    }
    else if(parentTag == 0)
        [appWindow addSubview:childView];
}
DEFINE_PRIM (view_addSubview, 2);


void view_removeSubview(value tag, value childTag)
{
    UIView *childView = [views objectForKey:[NSNumber numberWithInt:val_int(childTag)]];
    [childView removeFromSuperview];
}
DEFINE_PRIM (view_removeSubview, 2);

