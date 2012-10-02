
void buttonInitEventListeners(int tag)
{
	controlInitEventListeners(tag);
}

void button_setLabel(value tag, value text)
{
	UIButton  *button = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[button setTitle:[NSString stringWithCString:val_string(text) encoding:NSUTF8StringEncoding] forState:UIControlStateNormal];
}
DEFINE_PRIM (button_setLabel, 2);



void button_setImageForState(value tag, value assetName)
{
	UIButton  *button = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
	[button setImage:[UIImage imageNamed: [NSString stringWithCString:val_string(assetName) encoding:NSUTF8StringEncoding]]  forState:UIControlStateNormal];
}
DEFINE_PRIM (button_setImageForState, 2);