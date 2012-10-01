void label_setText(value tag, value text)
{
	UILabel  *label = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	label.text = [NSString stringWithCString:val_string(text) encoding:NSUTF8StringEncoding];
}
DEFINE_PRIM (label_setText, 2);

value label_getText(value tag)
{
	UILabel  *label = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	
	if(label.text == nil)
		return alloc_string("");
		
	return alloc_string([label.text cStringUsingEncoding:NSUTF8StringEncoding]);
}
DEFINE_PRIM (label_getText, 1);