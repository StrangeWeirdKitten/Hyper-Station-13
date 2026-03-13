#ifdef BYOND_TRACY
/proc/init_prof()
	var/lib = TRACY_DLL_PATH
	var/init = call_ext(lib, "init")()
	if(length(init) != 0 && init[1] == ".")
		return init
	else if("0" != init) 
		CRASH("[lib] init error: [init]")

/world/New()
	init_prof()
	. = ..()
#endif

