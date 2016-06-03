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
static const char *ng0 = "C:/Users/152/Desktop/AirHockey/AirHockey/display.v";
static int ng1[] = {3, 0};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {14U, 0U};
static unsigned int ng5[] = {192U, 0U};
static unsigned int ng6[] = {249U, 0U};
static int ng7[] = {2, 0};
static unsigned int ng8[] = {164U, 0U};
static unsigned int ng9[] = {176U, 0U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {153U, 0U};
static int ng12[] = {5, 0};
static unsigned int ng13[] = {146U, 0U};
static int ng14[] = {6, 0};
static unsigned int ng15[] = {130U, 0U};
static int ng16[] = {7, 0};
static unsigned int ng17[] = {248U, 0U};
static int ng18[] = {8, 0};
static unsigned int ng19[] = {128U, 0U};
static int ng20[] = {9, 0};
static unsigned int ng21[] = {144U, 0U};
static unsigned int ng22[] = {13U, 0U};
static unsigned int ng23[] = {11U, 0U};
static unsigned int ng24[] = {7U, 0U};



static void Always_36_0(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4872);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB7;

LAB6:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t6) < *((unsigned int *)t7))
        goto LAB9;

LAB8:    *((unsigned int *)t8) = 1;

LAB9:    t12 = (t8 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t8);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 2, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 2, 0LL);

LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t7);
    t20 = (t16 ^ t17);
    t21 = (t15 | t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB17;

LAB14:    if (t24 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t8) = 1;

LAB17:    t10 = (t8 + 4);
    t27 = *((unsigned int *)t10);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t7 = (t5 + 4);
    t9 = (t6 + 4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t6);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t9);
    t20 = (t16 ^ t17);
    t21 = (t15 | t20);
    t22 = *((unsigned int *)t7);
    t23 = *((unsigned int *)t9);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB49;

LAB46:    if (t24 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t8) = 1;

LAB49:    t11 = (t8 + 4);
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2568);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng7)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t9);
    t17 = *((unsigned int *)t10);
    t20 = (t16 ^ t17);
    t21 = (t15 | t20);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t10);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB81;

LAB78:    if (t24 != 0)
        goto LAB80;

LAB79:    *((unsigned int *)t8) = 1;

LAB81:    t12 = (t8 + 4);
    t27 = *((unsigned int *)t12);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB82;

LAB83:    xsi_set_current_line(95, ng0);

LAB110:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng24)));
    t6 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t6, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1688U);
    t6 = *((char **)t2);

LAB111:    t2 = ((char*)((ng2)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB112;

LAB113:    t2 = ((char*)((ng3)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB114;

LAB115:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB116;

LAB117:    t2 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB118;

LAB119:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB120;

LAB121:    t2 = ((char*)((ng12)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB122;

LAB123:    t2 = ((char*)((ng14)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB124;

LAB125:    t2 = ((char*)((ng16)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB126;

LAB127:    t2 = ((char*)((ng18)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB128;

LAB129:    t2 = ((char*)((ng20)));
    t32 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t32 == 1)
        goto LAB130;

LAB131:
LAB133:
LAB132:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng5)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t2, 0, 0, 8, 0LL);

LAB134:
LAB84:
LAB52:
LAB20:    goto LAB2;

LAB7:    t11 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(39, ng0);
    t18 = ((char*)((ng2)));
    t19 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 2, 0LL);
    goto LAB13;

LAB16:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(44, ng0);

LAB21:    xsi_set_current_line(45, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);

LAB22:    t2 = ((char*)((ng2)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng3)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng12)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng14)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng16)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng18)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng20)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t32 == 1)
        goto LAB41;

LAB42:
LAB44:
LAB43:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 8, 0LL);

LAB45:    goto LAB20;

LAB23:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB25:    xsi_set_current_line(48, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB27:    xsi_set_current_line(49, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB29:    xsi_set_current_line(50, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB31:    xsi_set_current_line(51, ng0);
    t4 = ((char*)((ng11)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB33:    xsi_set_current_line(52, ng0);
    t4 = ((char*)((ng13)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB35:    xsi_set_current_line(53, ng0);
    t4 = ((char*)((ng15)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB37:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng17)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB39:    xsi_set_current_line(55, ng0);
    t4 = ((char*)((ng19)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB41:    xsi_set_current_line(56, ng0);
    t4 = ((char*)((ng21)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB45;

LAB48:    t10 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(61, ng0);

LAB53:    xsi_set_current_line(62, ng0);
    t12 = ((char*)((ng22)));
    t18 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t18, t12, 0, 0, 4, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1368U);
    t4 = *((char **)t2);

LAB54:    t2 = ((char*)((ng2)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng3)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng12)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng14)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng16)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB69;

LAB70:    t2 = ((char*)((ng18)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB71;

LAB72:    t2 = ((char*)((ng20)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t32 == 1)
        goto LAB73;

LAB74:
LAB76:
LAB75:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 8, 0LL);

LAB77:    goto LAB52;

LAB55:    xsi_set_current_line(64, ng0);
    t5 = ((char*)((ng5)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB57:    xsi_set_current_line(65, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB59:    xsi_set_current_line(66, ng0);
    t5 = ((char*)((ng8)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB61:    xsi_set_current_line(67, ng0);
    t5 = ((char*)((ng9)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB63:    xsi_set_current_line(68, ng0);
    t5 = ((char*)((ng11)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB65:    xsi_set_current_line(69, ng0);
    t5 = ((char*)((ng13)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB67:    xsi_set_current_line(70, ng0);
    t5 = ((char*)((ng15)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB69:    xsi_set_current_line(71, ng0);
    t5 = ((char*)((ng17)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB71:    xsi_set_current_line(72, ng0);
    t5 = ((char*)((ng19)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB73:    xsi_set_current_line(73, ng0);
    t5 = ((char*)((ng21)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB77;

LAB80:    t11 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB81;

LAB82:    xsi_set_current_line(78, ng0);

LAB85:    xsi_set_current_line(79, ng0);
    t18 = ((char*)((ng23)));
    t19 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 4, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);

LAB86:    t2 = ((char*)((ng2)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB87;

LAB88:    t2 = ((char*)((ng3)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB89;

LAB90:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB91;

LAB92:    t2 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB93;

LAB94:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB95;

LAB96:    t2 = ((char*)((ng12)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB97;

LAB98:    t2 = ((char*)((ng14)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB99;

LAB100:    t2 = ((char*)((ng16)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB101;

LAB102:    t2 = ((char*)((ng18)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB103;

LAB104:    t2 = ((char*)((ng20)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t32 == 1)
        goto LAB105;

LAB106:
LAB108:
LAB107:    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng5)));
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t2, 0, 0, 8, 0LL);

LAB109:    goto LAB84;

LAB87:    xsi_set_current_line(81, ng0);
    t6 = ((char*)((ng5)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB89:    xsi_set_current_line(82, ng0);
    t6 = ((char*)((ng6)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB91:    xsi_set_current_line(83, ng0);
    t6 = ((char*)((ng8)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB93:    xsi_set_current_line(84, ng0);
    t6 = ((char*)((ng9)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB95:    xsi_set_current_line(85, ng0);
    t6 = ((char*)((ng11)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB97:    xsi_set_current_line(86, ng0);
    t6 = ((char*)((ng13)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB99:    xsi_set_current_line(87, ng0);
    t6 = ((char*)((ng15)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB101:    xsi_set_current_line(88, ng0);
    t6 = ((char*)((ng17)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB103:    xsi_set_current_line(89, ng0);
    t6 = ((char*)((ng19)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB105:    xsi_set_current_line(90, ng0);
    t6 = ((char*)((ng21)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB109;

LAB112:    xsi_set_current_line(98, ng0);
    t7 = ((char*)((ng5)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB114:    xsi_set_current_line(99, ng0);
    t7 = ((char*)((ng6)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB116:    xsi_set_current_line(100, ng0);
    t7 = ((char*)((ng8)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB118:    xsi_set_current_line(101, ng0);
    t7 = ((char*)((ng9)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB120:    xsi_set_current_line(102, ng0);
    t7 = ((char*)((ng11)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB122:    xsi_set_current_line(103, ng0);
    t7 = ((char*)((ng13)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB124:    xsi_set_current_line(104, ng0);
    t7 = ((char*)((ng15)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB126:    xsi_set_current_line(105, ng0);
    t7 = ((char*)((ng17)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB128:    xsi_set_current_line(106, ng0);
    t7 = ((char*)((ng19)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

LAB130:    xsi_set_current_line(107, ng0);
    t7 = ((char*)((ng21)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 8, 0LL);
    goto LAB134;

}

static void Cont_112_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5000);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 4888);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_113_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5064);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 4904);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_114_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5128);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 4920);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000611242954_1411027795_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Cont_112_1,(void *)Cont_113_2,(void *)Cont_114_3};
	xsi_register_didat("work_m_00000000000611242954_1411027795", "isim/display_tb_isim_beh.exe.sim/work/m_00000000000611242954_1411027795.didat");
	xsi_register_executes(pe);
}
