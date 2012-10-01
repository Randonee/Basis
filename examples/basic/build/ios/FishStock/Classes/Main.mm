/*
 *  Main.mm
 *
 *  Boot code for NME.
 *
 */

#include <stdio.h>

extern "C" const char *hxRunLibrary();
extern "C" void hxcpp_set_top_of_stack();
	

 
     extern "C" int std_register_prims();
 

 
     extern "C" int regexp_register_prims();
 

 
     extern "C" int zlib_register_prims();
 

 
     extern "C" int nme_register_prims();
 

 
     extern "C" int basis_register_prims();
 

 

 

 

 

	
extern "C" int main(int argc, char *argv[])	
{
	//printf("Starting ...\n" );
	hxcpp_set_top_of_stack();

   	
     
      std_register_prims();
     
   	
     
      regexp_register_prims();
     
   	
     
      zlib_register_prims();
     
   	
     
      nme_register_prims();
     
   	
     
      basis_register_prims();
     
   	
     
   	
     
   	
     
   	
     
   	
	
	//printf("Running\n");

	const char *err = NULL;
 		err = hxRunLibrary();
	if (err) {
		printf(" Error %s\n", err );
		return -1;
	}

	//printf("Done!\n");
	return 0;
}
