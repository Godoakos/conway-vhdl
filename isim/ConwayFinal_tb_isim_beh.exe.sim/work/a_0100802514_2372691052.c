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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Docs/Xilinx/ConwayFinal/ConwayFinal_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );


static void work_a_0100802514_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3944);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2776);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3944);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2776);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0100802514_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;

LAB0:    t1 = (t0 + 3216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3024);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1808U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3024);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(97, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_0100802514_2372691052_p_2(char *t0)
{
    char t7[16];
    char t14[8];
    char t16[8];
    char t17[8];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t15;

LAB0:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3784);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 3272);
    t4 = (t0 + 2312U);
    t5 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t3, t4, t5, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 6220);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    std_textio_write7(STD_TEXTIO, t1, t3, t4, t7, (unsigned char)0, 0);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 6221);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    std_textio_write7(STD_TEXTIO, t1, t3, t4, t7, (unsigned char)0, 0);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 1352U);
    t6 = *((char **)t4);
    t2 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t1, t3, t2, (unsigned char)0, 0);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 6222);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    std_textio_write7(STD_TEXTIO, t1, t3, t4, t7, (unsigned char)0, 0);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t2 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t1, t3, t2, (unsigned char)0, 0);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 6223);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    std_textio_write7(STD_TEXTIO, t1, t3, t4, t7, (unsigned char)0, 0);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t11 = (7 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t4 = (t6 + t13);
    memcpy(t14, t4, 3U);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 5;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (5 - 7);
    t15 = (t10 * -1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t1, t3, t14, t7, (unsigned char)0, 0);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 6224);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    std_textio_write7(STD_TEXTIO, t1, t3, t4, t7, (unsigned char)0, 0);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t11 = (7 - 5);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t4 = (t6 + t13);
    memcpy(t16, t4, 4U);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 5;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (2 - 5);
    t15 = (t10 * -1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t1, t3, t16, t7, (unsigned char)0, 0);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 6225);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    std_textio_write7(STD_TEXTIO, t1, t3, t4, t7, (unsigned char)0, 0);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2312U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t11 = (7 - 2);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t4 = (t6 + t13);
    memcpy(t17, t4, 3U);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 2;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 2);
    t15 = (t10 * -1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t1, t3, t17, t7, (unsigned char)0, 0);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3272);
    t3 = (t0 + 2136U);
    t4 = (t0 + 2312U);
    std_textio_writeline(STD_TEXTIO, t1, t3, t4);
    goto LAB3;

}


extern void work_a_0100802514_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0100802514_2372691052_p_0,(void *)work_a_0100802514_2372691052_p_1,(void *)work_a_0100802514_2372691052_p_2};
	xsi_register_didat("work_a_0100802514_2372691052", "isim/ConwayFinal_tb_isim_beh.exe.sim/work/a_0100802514_2372691052.didat");
	xsi_register_executes(pe);
}
