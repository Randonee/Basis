void textFieldInitEventListeners(int tag)
{
	controlInitEventListeners(tag);
	
	UITextField *view = [views objectForKey:[NSNumber numberWithInt:tag]];
	
	[[NSNotificationCenter defaultCenter] addObserver:eventManager
											selector:@selector(onUITextFieldTextDidBeginEditingNotification:) 
											name:UITextFieldTextDidBeginEditingNotification
											object:view];
											
	[[NSNotificationCenter defaultCenter] addObserver:eventManager
											selector:@selector(onUITextFieldTextDidChangeNotification:) 
											name:UITextFieldTextDidChangeNotification
											object:view];
											
	[[NSNotificationCenter defaultCenter] addObserver:eventManager
											selector:@selector(onUITextFieldTextDidEndEditingNotification:) 
											name:UITextFieldTextDidEndEditingNotification
											object:view];
	
}


void textField_setText(value tag, value text)
{
	UITextField  *field = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	field.text = [NSString stringWithCString:val_string(text) encoding:NSUTF8StringEncoding];
}
DEFINE_PRIM (textField_setText, 2);

value textField_getText(value tag)
{
	UITextField  *field = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	
	if(field.text == nil)
		return alloc_string("");
	
	return alloc_string([field.text cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (textField_getText, 1);