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
static const char *ng0 = "/home/ise/MemoriaDeInstruciones/MemoriaDeInstrucciones1VHDL.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2000233866_3212880686_p_0(char *t0)
{
    char t16[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    int t21;
    char *t22;

LAB0:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1312U);
    t4 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t3 = (t0 + 1312U);
    t4 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:
LAB3:    t3 = (t0 + 3544);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t5 = (t0 + 1512U);
    t12 = *((char **)t5);
    t13 = (31 - 6);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t5 = (t12 + t15);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 6;
    t18 = (t17 + 4U);
    *((int *)t18) = 2;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (2 - 6);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t16);
    t18 = (t0 + 2248U);
    t22 = *((char **)t18);
    t18 = (t22 + 0);
    *((int *)t18) = t21;
    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1672U);
    t5 = *((char **)t3);
    t3 = (t0 + 2128U);
    t6 = *((char **)t3);
    t3 = (t0 + 2248U);
    t9 = *((char **)t3);
    t19 = *((int *)t9);
    t21 = (t19 - 0);
    t13 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t19);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t3 = (t6 + t15);
    memcpy(t3, t5, 32U);
    goto LAB3;

LAB5:    t5 = (t0 + 1032U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)1);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1512U);
    t12 = *((char **)t5);
    t13 = (31 - 6);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t5 = (t12 + t15);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 6;
    t18 = (t17 + 4U);
    *((int *)t18) = 2;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (2 - 6);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t16);
    t18 = (t0 + 2248U);
    t22 = *((char **)t18);
    t18 = (t22 + 0);
    *((int *)t18) = t21;
    xsi_set_current_line(51, ng0);
    t3 = (t0 + 2128U);
    t5 = *((char **)t3);
    t3 = (t0 + 2248U);
    t6 = *((char **)t3);
    t19 = *((int *)t6);
    t21 = (t19 - 0);
    t13 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t19);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t3 = (t5 + t15);
    t9 = (t0 + 3624);
    t12 = (t9 + 56U);
    t17 = *((char **)t12);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    memcpy(t22, t3, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB3;

LAB13:    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)1);
    t1 = t11;
    goto LAB15;

LAB16:    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t2 = t8;
    goto LAB18;

}


void ieee_p_2592010699_sub_7991387870887201249_503743352();

extern void work_a_2000233866_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2000233866_3212880686_p_0};
	xsi_register_didat("work_a_2000233866_3212880686", "isim/MemoriaDeDatosTestBench_isim_beh.exe.sim/work/a_2000233866_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 5);
}
