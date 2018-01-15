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
static const char *ng0 = "/home/ise/Practica1/ROM.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_2220189930_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4848U);
    t3 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 1608U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t1 = (t0 + 1608U);
    t4 = *((char **)t1);
    t3 = *((int *)t4);
    t6 = (t3 - 0);
    t7 = (t6 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t3);
    t8 = (16U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 2984);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 2904);
    *((int *)t1) = 1;

LAB1:    return;
}


void ieee_p_2592010699_sub_7991387870887201249_503743352();

extern void work_a_2220189930_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2220189930_3212880686_p_0};
	xsi_register_didat("work_a_2220189930_3212880686", "isim/ROM_isim_beh.exe.sim/work/a_2220189930_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 3);
}
