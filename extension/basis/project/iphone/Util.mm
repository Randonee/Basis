void basis_log(value message)
{
	NSLog(@"%s", val_string(message));
}
DEFINE_PRIM (basis_log, 1);



value cgRectToArray(CGRect rect)
{
	value arr = alloc_array(4); 
	
	val_array_set_i(arr, 0, alloc_float(rect.origin.x));
	val_array_set_i(arr, 1, alloc_float(rect.origin.y));
	val_array_set_i(arr, 2, alloc_float(rect.size.width));
	val_array_set_i(arr, 3, alloc_float(rect.size.height));
	return arr;
}

CGRect arrayToCGRect(value arr)
{
	return CGRectMake(val_float(val_array_i(arr, 0)),
					  val_float(val_array_i(arr, 1)),
					  val_float(val_array_i(arr, 2)),
					  val_float(val_array_i(arr, 3))); 
}

