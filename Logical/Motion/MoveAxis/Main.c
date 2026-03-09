
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

#define TRUE 1

void _INIT ProgramInit(void)
{
	mpAxisBasic_0.MpLink = &gAxis01;
	mpAxisBasic_0.Enable = TRUE;
	mpAxisBasic_0.Parameters = &Para;
}

void _CYCLIC ProgramCyclic(void)
{
	MpAxisBasic(&mpAxisBasic_0);
}

void _EXIT ProgramExit(void)
{

}

