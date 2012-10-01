
value viewGetSuperview(value tag);

value viewGetFrameX(value tag);
value viewGetFrameY(value tag);
value viewGetFrameWidth(value tag);
value viewGetFrameHeight(value tag);

void viewSetFrameX(value tag, value amount);
void viewSetFrameY(value tag, value amount);
void viewSetFrameWidth(value tag, value amount);
void viewSetFrameHeight(value tag, value amount);

void viewSetFrame(value tag, value x, value y, value width, value height);
void viewSetTag(int tag, bool val);

void view_addSubview(value parentTag, value newChildTag);
void view_removeSubview(value tag, value childTag);