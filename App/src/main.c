

/**
 * main.c
 */

#include "driverlib.h"
#include "device.h"
#include "f28004x_device.h"     // f28004x Headerfile Include File
//#include "board.h"    //sys图形化软件生成代码使用

//
// Main
//
void main(void)
{
    //
    // Initializes system control, device clock, and peripherals
    // 初始化系统控制，设备时钟，外设
    //
    Device_init();

    //
    // Initializes PIE and clear PIE registers. Disables CPU interrupts.
    // and clear all CPU interrupt flags.
    // 初始化PIE并清除PIE寄存器。禁用CPU中断。
    // 并清除所有CPU中断标志。
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell interrupt
    // Service Routines (ISR).
    // 用指向shell中断服务例程（ISR）的指针初始化PIE向量表。
    //
    Interrupt_initVectorTable();

    //
    // Board Initialization
    // 初始化sys软件配置
    //
    // Board_init();

    //IO口初始化
    GPIO_setPinConfig(GPIO_23_GPIO23);

    //myyGPIOOutput0 initialization
    GPIO_setDirectionMode(23, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(23, GPIO_PIN_TYPE_STD);
    GPIO_setMasterCore(23, GPIO_CORE_CPU1);
    GPIO_setQualificationMode(23,GPIO_QUAL_SYNC);


    GPIO_setPinConfig(GPIO_34_GPIO34);

    //myyGPIOOutput0 initialization
    GPIO_setDirectionMode(34, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(34, GPIO_PIN_TYPE_STD);
    GPIO_setMasterCore(34, GPIO_CORE_CPU1);
    GPIO_setQualificationMode(34,GPIO_QUAL_SYNC);
    //
    // Enables CPU interrupts
    //
    Interrupt_enableMaster();

    GpioDataRegs.GPASET.bit.GPIO23 = 1;
    GpioDataRegs.GPBCLEAR.bit.GPIO34 = 1;
    //
    // Loop.
    //
    for(;;)
    {
        GpioDataRegs.GPATOGGLE.bit.GPIO23 = 1;
        GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;
//        GPIO_togglePin(23);
        DEVICE_DELAY_US(500000);
    }
}

