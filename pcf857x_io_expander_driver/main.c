#include "pcf857x_driver_basic.h"

int main()
{

    err = pcf857x_basic_initialize(PCF8574A_VARIANT,PCF857X_ADDRESS_PIN_A000);
    if(err != PCF857X_DRV_OK){
        pcf857x_interface_debug_print("initialize failed, error code: %d\r", err);
    }
    /**< configure driver info */
    err = pcf857x_info(&pcf857x_handler);

    pcf857x_interface_debug_print("Chip Name: \t%s\r\n", pcf857x_handler.info.chip_name);
    pcf857x_interface_debug_print("Manufacturer: \t%s\r\n",pcf857x_handler.info.manufacturer_name);
    pcf857x_interface_debug_print("Interface Protocol: \t%s\r\n", pcf857x_handler.info.interface);
    pcf857x_interface_debug_print("Supply Volt Max: \t%.1f V\r\n",pcf857x_handler.info.supply_voltage_max_v);
    pcf857x_interface_debug_print("Supply Volt Min: \t%.1f V\r\n",pcf857x_handler.info.supply_voltage_min_v);
    pcf857x_interface_debug_print("Maximum Current: \t%.1f mA\r\n",pcf857x_handler.info.max_current_ma);
    pcf857x_interface_debug_print("Max Temperature: \t%.1f C\r\n",pcf857x_handler.info.temperature_max);
    pcf857x_interface_debug_print("Diver Version: \t\tV%.1f.%.2d\r\n",(pcf857x_handler.info.driver_version /1000), (uint8_t)(pcf857x_handler.info.driver_version - (uint8_t)(pcf857x_handler.info.driver_version / 100)*100));
    pcf857x_interface_debug_print("\nRecommended min MCU flash: \t%dkB\r\n",pcf857x_handler.info.flash_size_min);
    pcf857x_interface_debug_print("Recommended min MCU RAM: \t%dkB\r\n",pcf857x_handler.info.ram_size_min);

    return 0;
}
