/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_339(char*, char *);
IKI_DLLESPEC extern void execute_340(char*, char *);
IKI_DLLESPEC extern void execute_341(char*, char *);
IKI_DLLESPEC extern void execute_900(char*, char *);
IKI_DLLESPEC extern void execute_901(char*, char *);
IKI_DLLESPEC extern void execute_902(char*, char *);
IKI_DLLESPEC extern void execute_903(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_348(char*, char *);
IKI_DLLESPEC extern void execute_349(char*, char *);
IKI_DLLESPEC extern void execute_347(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_19(char*, char *);
IKI_DLLESPEC extern void execute_20(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_357(char*, char *);
IKI_DLLESPEC extern void execute_358(char*, char *);
IKI_DLLESPEC extern void execute_359(char*, char *);
IKI_DLLESPEC extern void execute_360(char*, char *);
IKI_DLLESPEC extern void execute_53(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_376(char*, char *);
IKI_DLLESPEC extern void execute_377(char*, char *);
IKI_DLLESPEC extern void execute_378(char*, char *);
IKI_DLLESPEC extern void execute_797(char*, char *);
IKI_DLLESPEC extern void execute_799(char*, char *);
IKI_DLLESPEC extern void execute_801(char*, char *);
IKI_DLLESPEC extern void execute_802(char*, char *);
IKI_DLLESPEC extern void execute_808(char*, char *);
IKI_DLLESPEC extern void execute_814(char*, char *);
IKI_DLLESPEC extern void execute_821(char*, char *);
IKI_DLLESPEC extern void execute_827(char*, char *);
IKI_DLLESPEC extern void execute_832(char*, char *);
IKI_DLLESPEC extern void execute_838(char*, char *);
IKI_DLLESPEC extern void execute_408(char*, char *);
IKI_DLLESPEC extern void execute_409(char*, char *);
IKI_DLLESPEC extern void execute_410(char*, char *);
IKI_DLLESPEC extern void execute_413(char*, char *);
IKI_DLLESPEC extern void execute_414(char*, char *);
IKI_DLLESPEC extern void execute_415(char*, char *);
IKI_DLLESPEC extern void execute_416(char*, char *);
IKI_DLLESPEC extern void execute_133(char*, char *);
IKI_DLLESPEC extern void execute_427(char*, char *);
IKI_DLLESPEC extern void execute_428(char*, char *);
IKI_DLLESPEC extern void execute_429(char*, char *);
IKI_DLLESPEC extern void execute_430(char*, char *);
IKI_DLLESPEC extern void execute_431(char*, char *);
IKI_DLLESPEC extern void execute_432(char*, char *);
IKI_DLLESPEC extern void execute_433(char*, char *);
IKI_DLLESPEC extern void execute_434(char*, char *);
IKI_DLLESPEC extern void execute_426(char*, char *);
IKI_DLLESPEC extern void execute_158(char*, char *);
IKI_DLLESPEC extern void execute_508(char*, char *);
IKI_DLLESPEC extern void execute_509(char*, char *);
IKI_DLLESPEC extern void execute_510(char*, char *);
IKI_DLLESPEC extern void execute_511(char*, char *);
IKI_DLLESPEC extern void execute_507(char*, char *);
IKI_DLLESPEC extern void execute_841(char*, char *);
IKI_DLLESPEC extern void execute_842(char*, char *);
IKI_DLLESPEC extern void execute_843(char*, char *);
IKI_DLLESPEC extern void execute_844(char*, char *);
IKI_DLLESPEC extern void execute_845(char*, char *);
IKI_DLLESPEC extern void execute_343(char*, char *);
IKI_DLLESPEC extern void execute_344(char*, char *);
IKI_DLLESPEC extern void execute_345(char*, char *);
IKI_DLLESPEC extern void execute_346(char*, char *);
IKI_DLLESPEC extern void execute_904(char*, char *);
IKI_DLLESPEC extern void execute_905(char*, char *);
IKI_DLLESPEC extern void execute_906(char*, char *);
IKI_DLLESPEC extern void execute_907(char*, char *);
IKI_DLLESPEC extern void execute_908(char*, char *);
IKI_DLLESPEC extern void execute_909(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_187(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_210(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_480(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_483(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_499(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_508(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_540(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_558(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_561(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_577(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_583(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_593(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_601(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[137] = {(funcp)execute_339, (funcp)execute_340, (funcp)execute_341, (funcp)execute_900, (funcp)execute_901, (funcp)execute_902, (funcp)execute_903, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_7, (funcp)execute_348, (funcp)execute_349, (funcp)execute_347, (funcp)execute_10, (funcp)execute_11, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_19, (funcp)execute_20, (funcp)execute_35, (funcp)execute_36, (funcp)execute_38, (funcp)execute_39, (funcp)execute_357, (funcp)execute_358, (funcp)execute_359, (funcp)execute_360, (funcp)execute_53, (funcp)execute_54, (funcp)execute_376, (funcp)execute_377, (funcp)execute_378, (funcp)execute_797, (funcp)execute_799, (funcp)execute_801, (funcp)execute_802, (funcp)execute_808, (funcp)execute_814, (funcp)execute_821, (funcp)execute_827, (funcp)execute_832, (funcp)execute_838, (funcp)execute_408, (funcp)execute_409, (funcp)execute_410, (funcp)execute_413, (funcp)execute_414, (funcp)execute_415, (funcp)execute_416, (funcp)execute_133, (funcp)execute_427, (funcp)execute_428, (funcp)execute_429, (funcp)execute_430, (funcp)execute_431, (funcp)execute_432, (funcp)execute_433, (funcp)execute_434, (funcp)execute_426, (funcp)execute_158, (funcp)execute_508, (funcp)execute_509, (funcp)execute_510, (funcp)execute_511, (funcp)execute_507, (funcp)execute_841, (funcp)execute_842, (funcp)execute_843, (funcp)execute_844, (funcp)execute_845, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_904, (funcp)execute_905, (funcp)execute_906, (funcp)execute_907, (funcp)execute_908, (funcp)execute_909, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_185, (funcp)transaction_186, (funcp)transaction_187, (funcp)transaction_188, (funcp)transaction_189, (funcp)transaction_190, (funcp)transaction_191, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_200, (funcp)transaction_202, (funcp)transaction_204, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_210, (funcp)transaction_211, (funcp)transaction_78, (funcp)transaction_81, (funcp)transaction_84, (funcp)transaction_87, (funcp)transaction_92, (funcp)transaction_94, (funcp)transaction_96, (funcp)transaction_98, (funcp)transaction_480, (funcp)transaction_483, (funcp)transaction_486, (funcp)transaction_489, (funcp)transaction_499, (funcp)transaction_502, (funcp)transaction_505, (funcp)transaction_508, (funcp)transaction_518, (funcp)transaction_521, (funcp)transaction_524, (funcp)transaction_527, (funcp)transaction_530, (funcp)transaction_540, (funcp)transaction_543, (funcp)transaction_546, (funcp)transaction_549, (funcp)transaction_558, (funcp)transaction_561, (funcp)transaction_564, (funcp)transaction_574, (funcp)transaction_577, (funcp)transaction_580, (funcp)transaction_583, (funcp)transaction_593, (funcp)transaction_601};
const int NumRelocateId= 137;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/backandforth_input_test_func_impl/xsim.reloc",  (void **)funcTab, 137);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/backandforth_input_test_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/backandforth_input_test_func_impl/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/backandforth_input_test_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/backandforth_input_test_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/backandforth_input_test_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
