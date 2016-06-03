/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001129021917_2964965119_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    work_m_00000000002532142504_1345247661_init();
    work_m_00000000000785352562_2366470599_init();
    work_m_00000000000611242954_1411027795_init();
    work_m_00000000001487645604_1966250310_init();
    work_m_00000000003092640686_0200225743_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003092640686_0200225743");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
