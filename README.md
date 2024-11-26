 

<div align=center>
<img src="Document/Image/avento.png" width="400" height="200"/>
</div>

## Library Maters  PCF857x 

The PCF8574/74A/75 are general-purpose I/O expander that connect via the two-wire bidirectional I2C-bus (serial clock (SCL), serial data (SDA)).
The Library masters PCF857x is the full-function driver of the SHT4x sensors series (PCF8574, PCF8574A, PCF8575). The driver is written in C language with Code Blocks.

### Table of Contents

  - [Install](#Install)
  - [Examples](#Examples)
  - [Usage](#Usage)
    - [example basic](#example-basic)
    - [example interface](#example-interface)
  - [Document](#Document)
  - [How to contribute](#Contribute)
  - [License](#License)
  - [Contact Us](#Contact-Us)
  - [Acknowledgements](#Acknowledgements)

  ### Install
  - The interface .C file expects bellow functions to correctly link the driver 
  ```
    - pcf857x_interface_i2c_init function  ( optional )
    - pcf857x_interface_i2c_deinit function ( optional )
    - pcf857x_interface_i2c_read function ( Mandatory )
    - pcf857x_interface_i2c_write function ( Mandatory )
    - pcf857x_interface_delay_ms function ( Mandatory )
    - pcf857x_interface_debug_print function (optional )
  ```
  - refer to the video: "Coming soon..."
  - Use example project 



  ### Examples
  - [STM32L432 (STM32CubeIDE)](https://github.com/LibraryMasters/pcf857x/tree/master/Project%20Example/STM32L434KCU6)
  - [PIC24FJ128GA705 (MPLAB X IDE)](https://github.com/LibraryMasters/pcf857x/tree/master/Project%20Example/PIC24FJ128GA705/pcf857x_io_expander_PIC24F.X)
  - [SAMD21G18 (Atmel studio 7)](https://github.com/LibraryMasters/pcf857x/tree/master/Project%20Example/ATSAMD21G18A/pcf857x_io_expander_SAMD21)
  ### Usage
  #### example basic

  ```C
#include <atmel_start.h>
#include "pcf857x_driver/pcf857x_driver_basic.h"

void serial_print(const char *pString, uint8_t u8Length);
uint8_t i2c_write(uint8_t addr, uint8_t reg, uint8_t *buf, uint16_t len);
uint8_t i2c_read(uint8_t addr, uint8_t reg, uint8_t *buf, uint16_t len);

/**
 * @brief application example state machine
 */
typedef enum
{
	READ_WRITE = 0x00,
	TOGGLE     = 0x01,
	WRITE_ALL  = 0x03

}example_state_t;



int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	
	example_state_t  example_state;
	
	err = pcf857x_basic_initialize(PCF8575_VARIANT,PCF857X_ADDRESS_A001);            /**< i2c pin address (A2, A1, A0) */
     if(err != PCF857X_DRV_OK){
         pcf857x_interface_debug_print("initialize failed, error code: %d\r", err);
     }

     /**< READ ME
      * NOTE THAT PCF8575C VARIANT PINS ARE CURRENT SINK, MEANING ONE CAN NOT WRITE A HIGH AS VDD. PLEASE YOUR DATA SHEET FOR DIFFERENCES BETWEEN PCF8575 VS PCF8575C
      * */

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

     /**< uncomment one of below options to test the driver */
     //example_state = READ_WRITE;
     example_state = TOGGLE;
     //example_state = WRITE_ALL;

	/* Replace with your application code */
	while (1) {
		
		 switch(example_state)
		 {

			 case READ_WRITE:
			 {
				 if(pcf857x_basic_gpio_read(PCF857X_GPIO_PIN_0) == LOW){           /**< read pin 0 and de-bounce button */
					 pcf857x_interface_delay_ms(10);
					 if(pcf857x_basic_gpio_read(PCF857X_GPIO_PIN_0) == LOW)
					 {
						 pcf857x_basic_gpio_write(PCF857X_GPIO_PIN_11, HIGH);
					 }

					 }else{
					 pcf857x_basic_gpio_write(PCF857X_GPIO_PIN_11, LOW);
				 }
				 break;
			 }

			 case TOGGLE:
			 {
				 pcf857x_basic_gpio_toggle(PCF857X_GPIO_PIN_7);               /**< toggle pin 7 every 500 ms */
				 pcf857x_interface_delay_ms(500);
				 break;
			 }

			 case WRITE_ALL:
			 {
				 pcf857x_basic_gpio_write_all(HIGH);               /**< Write high on all port */
				 pcf857x_interface_delay_ms(500);
				 pcf857x_basic_gpio_write_all(LOW);                /**< low high on all port */
				 pcf857x_interface_delay_ms(500);
				 break;
			 }

		 }
	}
}


/**
 * @brief transmit serial data via usb com port
 * @param[in] pTxBuffer point to data to sent
 * @param[in] length is the data size
 * @return
 * @note		none
 * */
void serial_print(const char *pString, uint8_t u8Length)
{
	struct io_descriptor *io;
	usart_sync_get_io_descriptor(&USART_0, &io);
	usart_sync_enable(&USART_0);

	io_write(io, (char *)pString, u8Length);
}

/**
 * @brief i2c data transmit
 * @param[in] addr is the slave address
 * @param[in] reg the register to write
 * @param[in] buf the data to be written
 * @param[in] len size of data
 * @return  status code
 * 			- 0 success
 * 			- 1 failed to write
 * @note	none
 * */
uint8_t i2c_write(uint8_t addr, uint8_t reg, uint8_t *buf, uint16_t len)
{
	struct io_descriptor *I2C_0_io;

	i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
	i2c_m_sync_enable(&I2C_0);
	i2c_m_sync_set_slaveaddr(&I2C_0, addr, I2C_M_SEVEN);
	
	io_write(I2C_0_io, (uint8_t *)buf, len);
	return 0;
}

/**
 * @brief i2c data Read
 * @param[in] addr is the slave address
 * @param[in] reg the register to read
 * @param[out] buf point to data to read
 * @param[in] len size of data
 * @return  status code
 * 			- 0 success
 * 			- 1 failed to read
 * @note	none
 * */

uint8_t i2c_read(uint8_t addr, uint8_t reg, uint8_t *buf, uint16_t len)
{
    	struct io_descriptor *I2C_0_io;

    	i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
    	i2c_m_sync_enable(&I2C_0);
    	i2c_m_sync_set_slaveaddr(&I2C_0, addr, I2C_M_SEVEN);
    	
    	io_read(I2C_0_io, buf,  len);
    	return 0;
}
  ```
  #### example interface
  
  ```C
  ...

/**
 * @brief      interface i2c bus read
 * @param[in]  u8Addr is the i2c device address 7 bit
 * @param[in]  u16Reg is the i2c register address
 * @param[out] *pBuf points to a data buffer
 * @param[in]  u8length is the length of the data buffer
 * @return     status code
 *             - 0 success
 *             - 1 read failed
 * @note       none
 */
uint8_t pcf857x_interface_i2c_read(uint8_t u8Addr, uint16_t u16Reg, uint8_t *pBuf, uint8_t u8Length)
{
    /*call your i2c read function here*/
    /*user code begin */
    if(i2c_read(u8Addr, u16Reg, pBuf, u8Length) !=  0)
    {
    	pcf857x_interface_debug_print("i2c write failed, check the i2c address or wiring\n");
    	return 1;
    }
    /*user code end*/
    return 0; /**< success */
}

/**
 * @brief     interface i2c bus write
 * @param[in] u8Addr is the i2c device address 7 bit
 * @param[in] u16Reg is the i2c register address
 * @param[in] *pBuf points to a data buffer
 * @param[in] u8length is the length of the data buffer
 * @return    status code
 *            - 0 success
 *            - 1 write failed
 * @note      none
 */
uint8_t pcf857x_interface_i2c_write(uint8_t u8Addr, uint16_t u16Reg, uint8_t *pBuf, uint8_t u8Length)
{
    /*call your i2c write function here*/
    /*user code begin */
    if(i2c_write(u8Addr, u16Reg, pBuf, u8Length) !=  0)
    {
    	pcf857x_interface_debug_print("i2c write failed, check the i2c address or wiring\n");
    	return 1;
    }
    /*user code end*/
    return 0; /**< success */
}
  ...
  
  ```

  ### Document
  [datasheet](https://github.com/LibraryMasters/pcf857x/blob/master/Document/Datasheet/PCF8574_PCF8574A.pdf)
  
  ### Contribute
   1. Clone repo and create a new branch: ```https://github.com/LibraryMasters/pcf857x_PR```
   2. Make changes and test
   3. Submit a Pull Request with a comprehensive description of changes
  ### License
  [MIT](https://choosealicense.com/licenses/mit/)
### Contact Us

Email address: cedricmalyam@gmail.com

### Acknowledgements 
- @PeterHenderson https://dribbble.com/peterhenderson for the logo
