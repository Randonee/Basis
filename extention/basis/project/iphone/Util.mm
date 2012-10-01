void basis_log(value message)
{
	NSLog(@"%s", val_string(message));
}
DEFINE_PRIM (basis_log, 1);