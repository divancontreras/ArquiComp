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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Practica1/RAM.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_3830602496_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5264U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 1928U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    *((int *)t5) = t6;
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t1 = (t0 + 1928U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t9 = (t6 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t6);
    t11 = (16U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t7 = (t0 + 3304);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t1 = (t0 + 3224);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5264U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t1);
    t7 = (t0 + 1928U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t6;
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1808U);
    t5 = *((char **)t1);
    t1 = (t0 + 1928U);
    t7 = *((char **)t1);
    t6 = *((int *)t7);
    t9 = (t6 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t6);
    t11 = (16U * t10);
    t12 = (0 + t11);
    t1 = (t5 + t12);
    memcpy(t1, t2, 16U);
    goto LAB3;

}


void ieee_p_2592010699_sub_7991387870887201249_503743352();

extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/RAM_TEST_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 4);
}
