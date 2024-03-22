/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18LF46J13
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include "pcf857x_driver_basic.h"

#include "mcc_generated_files/examples/i2c2_master_example.h"


uint8_t i2c_write(uint8_t addr, uint8_t *pBuf, uint8_t length);
uint8_t i2c_read(uint8_t addr, uint8_t *pBuf, uint8_t length);
void print(char *const buf, uint8_t length);

uint16_t data;
/*
                         Main application
 */
void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
     err = pcf857x_basic_initialize(PCF8575_VARIANT,PCF857X_ADDRESS_A000);
     pcf857x_interface_debug_print("init err: %d\r", err);
    /**< configure driver info */
    pcf857x_info(&pcf857x_handler);
   
    pcf857x_interface_debug_print("Chip Name: \t%s\r\n", pcf857x_handler.info.chip_name);
    pcf857x_interface_debug_print("Manufacturer: \t%s\r\n",pcf857x_handler.info.manufacturer_name);
    pcf857x_interface_debug_print("Interface Protocol: \t%s\r\n", pcf857x_handler.info.interface);
    pcf857x_interface_debug_print("Supply Volt Max: \t%.1f V\r\n",pcf857x_handler.info.supply_voltage_max_v);
    pcf857x_interface_debug_print("Supply Volt Min: \t%.1f V\r\n",pcf857x_handler.info.supply_voltage_min_v);
    pcf857x_interface_debug_print("Maximum Current: \t%.1f uA\r\n",pcf857x_handler.info.max_current_ma);
    pcf857x_interface_debug_print("Max Temperature: \t%.1f C\r\n",pcf857x_handler.info.temperature_max);
    pcf857x_interface_debug_print("Diver Version: \t\tV%.1f.%.2d\r\n",(pcf857x_handler.info.driver_version /1000), (uint8_t)(pcf857x_handler.info.driver_version - (uint8_t)(pcf857x_handler.info.driver_version / 100)*100));
    pcf857x_interface_debug_print("\nRecommended MCU flash: \t%dkB\r\n",pcf857x_handler.info.flash_size_min);
    pcf857x_interface_debug_print("Recommended MCU RAM: \t%dkB\r\n",pcf857x_handler.info.ram_size_min);

//    pcf857x_basic_gpio_write_all(LOW);
    while (1)
    {
//      user_led_Toggle();
//      pcf857x_basic_gpio_toggle(PCF857X_GPIO_PIN_7);
////        pcf857x_basic_gpio_write_all(HIGH);
////               data = pcf857x_basic_gpio_read_all();
////        pcf857x_interface_debug_print("read: %d\r", data);
////        pcf857x_interface_delay_ms(500); 
////        pcf857x_basic_gpio_write_all(LOW);
//        data = pcf857x_basic_gpio_read_all();
//        pcf857x_interface_debug_print("read: %.4x\r", data);
//        pcf857x_interface_delay_ms(500); 
        
        
        /**< Test raed and write statement*/
       if(!pcf857x_basic_gpio_read(PCF857X_GPIO_PIN_3)) {               /**< check button press */
          pcf857x_interface_delay_ms(10);                               /**< debounce the button */
          if(!pcf857x_basic_gpio_read(PCF857X_GPIO_PIN_3)) {
             pcf857x_basic_gpio_write(PCF857X_GPIO_PIN_0, HIGH); 
          }
       }else{
           pcf857x_basic_gpio_write(PCF857X_GPIO_PIN_0, LOW); 
       }
//         Add your application code
    }
}

uint8_t i2c_write(uint8_t addr, uint8_t *pBuf, uint8_t length){ 
    I2C2_WriteNBytes(addr, (uint8_t *)pBuf, length);
    return 0;
}

uint8_t i2c_read(uint8_t addr, uint8_t *pBuf, uint8_t length){
    I2C2_ReadNBytes(addr, (uint8_t *)pBuf, length);
    return 0;
}

void print(char *const buf, uint8_t length){
    for (int index = 0; index < length; index++) {
        EUSART1_Write(buf[index]);
    }
}
/**
 End of File
*/