# 1 "pcf857x_driver.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-J_DFP/1.5.44/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "pcf857x_driver.c" 2
# 28 "pcf857x_driver.c"
# 1 "./pcf857x_driver.h" 1
# 31 "./pcf857x_driver.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdio.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdio.h" 2 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdio.h" 2 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3





typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 137 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long ssize_t;
# 168 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 246 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long off_t;
# 399 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdio.h" 2 3
# 52 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

__attribute__((__format__(__printf__, 1, 2)))
int printf(const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int fprintf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int sprintf(char *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 3, 4)))
int snprintf(char *restrict, size_t, const char *restrict, ...);

__attribute__((__format__(__printf__, 1, 0)))
int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 2, 0)))
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 3, 0)))
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

__attribute__((__format__(__scanf__, 1, 2)))
int scanf(const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int fscanf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int sscanf(const char *restrict, const char *restrict, ...);

__attribute__((__format__(__scanf__, 1, 0)))
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__scanf__, 2, 0)))
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 31 "./pcf857x_driver.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 1 3
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 173 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 209 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 2 3
# 32 "./pcf857x_driver.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdbool.h" 1 3
# 33 "./pcf857x_driver.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 1 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 34 "./pcf857x_driver.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\string.h" 1 3
# 25 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\string.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 411 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 25 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\string.h" 2 3


void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);
# 65 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\string.h" 3
char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 35 "./pcf857x_driver.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdarg.h" 1 3







# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 8 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdarg.h" 2 3


#pragma intrinsic(__va_start)
#pragma intrinsic(__va_arg)

extern void * __va_start(void);
extern void * __va_arg(void *, ...);
# 36 "./pcf857x_driver.h" 2
# 80 "./pcf857x_driver.h"
 static uint8_t err;

 static uint16_t pcf857x_pin_mask_arr[0x10] = { 0x01,
                                                                    0x02,
                                                                    0x04,
                                                                    0x08,
                                                                    0x10,
                                                                    0x20,
                                                                    0x40,
                                                                    0x80,
                                                                    0x0100,
                                                                    0x0200,
                                                                    0x0400,
                                                                    0x0800,
                                                                    0x1000,
                                                                    0x2000,
                                                                    0x4000,
                                                                    0x8000};






typedef enum
{
    PCF857X_DRV_OK = 0x00,
    PCF857X_DRV_FAILED = 0x01,
    PCF857X_DRV_ERR_HANDLER = 0x02,
    PCF857X_DRV_ERR_INIT = 0x03
} pcf857x_driver_execute_stat_t;





typedef enum
{
    PCF8574_VARIANT = 0x00,
    PCF8574A_VARIANT = 0x01,
    PCF8575_VARIANT = 0x02,
}pcf857x_variant_t;




typedef enum
{
    PCF857X_ADDRESS_DEFAULT = 0x20,
    PCF8574A_ADDRESS_DEFAULT = 0x38,
    PCF857X_ADDRESS_A000 = 0x00,
    PCF857X_ADDRESS_A001 = 0x01,
    PCF857X_ADDRESS_A010 = 0x02,
    PCF857X_ADDRESS_A011 = 0x03,
    PCF857X_ADDRESS_A100 = 0x04,
    PCF857X_ADDRESS_A101 = 0x05,
    PCF857X_ADDRESS_A110 = 0x06,
    PCF857X_ADDRESS_A111 = 0x07
}pcf857x_address_t;




typedef enum
{
    PCF857X_BOOL_FALSE = 0x00,
    PCF857X_BOOL_TRUE = 0x01
}pcf857x_bool_t;




typedef enum {
    PCF857X_GPIO_PIN_0 = 0x00,
    PCF857X_GPIO_PIN_1 = 0x01,
    PCF857X_GPIO_PIN_2 = 0x02,
    PCF857X_GPIO_PIN_3 = 0x03,
    PCF857X_GPIO_PIN_4 = 0x04,
    PCF857X_GPIO_PIN_5 = 0x05,
    PCF857X_GPIO_PIN_6 = 0x06,
    PCF857X_GPIO_PIN_7 = 0x07,

    PCF857X_GPIO_PIN_10 = 0x0A,
    PCF857X_GPIO_PIN_11 = 0x0B,
    PCF857X_GPIO_PIN_12 = 0x0C,
    PCF857X_GPIO_PIN_13 = 0x0D,
    PCF857X_GPIO_PIN_14 = 0x0E,
    PCF857X_GPIO_PIN_15 = 0x0F,
    PCF857X_GPIO_PIN_16 = 0x10,
    PCF857X_GPIO_PIN_17 = 0x11
} pcf857x_gpio_port_t;




typedef enum {
    PCF857X_GPIO_LOW = 0x00,
    PCF857X_GPIO_HIGH = 0x01
} pcf857x_port_logic_level_t;




typedef struct pcf857x_info_s
{
    char chip_name[25];
    char manufacturer_name[25];
    char interface[8];
    float supply_voltage_min_v;
    float supply_voltage_max_v;
    float max_current_ma;
    float temperature_min;
    float temperature_max;
    uint8_t flash_size_min;
    uint8_t ram_size_min;
    float driver_version;
} pcf857x_info_t;




typedef struct pcf857x_handle_s
{
    uint8_t (*i2c_init)(void);
    uint8_t (*i2c_deinit)(void);
    uint8_t (*i2c_read)(uint8_t u8Addr, uint16_t u16Reg, uint8_t *pBuf, uint8_t u8Length);
    uint8_t (*i2c_write)(uint8_t u8Addr, uint16_t u16Reg, uint8_t *pBuf, uint8_t u8Length);
    void (*delay_ms)(uint32_t u32Ms);
    void(*debug_print)(char *fmt, ...);
    void (*receive_callback)(uint8_t u8Flag, uint8_t u8Status);
    pcf857x_info_t info;
    uint8_t i2c_address;
    uint8_t device_variant;
    uint8_t gpio_pin_count;
    uint8_t inited;
} pcf857x_handle_t;
# 314 "./pcf857x_driver.h"
uint8_t pcf857x_info(pcf857x_handle_t *const pHandle);
# 326 "./pcf857x_driver.h"
uint8_t pcf857x_init(pcf857x_handle_t *const pHandle);
# 338 "./pcf857x_driver.h"
uint8_t pcf857x_deinit(pcf857x_handle_t *const pHandle);
# 350 "./pcf857x_driver.h"
uint8_t pcf857x_irq_pHandler(pcf857x_handle_t *const pHandle);
# 362 "./pcf857x_driver.h"
uint8_t pcf857x_set_addr_pin(pcf857x_handle_t *const pHandle, pcf857x_address_t addr_pin);
# 374 "./pcf857x_driver.h"
uint8_t pcf857x_get_addr_pin(pcf857x_handle_t *const pHandle, pcf857x_address_t *pAddr_pin);
# 388 "./pcf857x_driver.h"
uint8_t pcf857x_set_variant(pcf857x_handle_t *const pHandle, pcf857x_variant_t variant);
# 401 "./pcf857x_driver.h"
uint8_t pcf857x_get_variant(pcf857x_handle_t *const pHandle, pcf857x_variant_t *pVariant);
# 416 "./pcf857x_driver.h"
uint8_t pcf857x_pin_write(pcf857x_handle_t *const pHandle, pcf857x_gpio_port_t pin, pcf857x_port_logic_level_t logic_level);
# 430 "./pcf857x_driver.h"
uint8_t pcf857x_pin_write_all(pcf857x_handle_t *const pHandle, pcf857x_port_logic_level_t logic_level);
# 445 "./pcf857x_driver.h"
uint8_t pcf857x_pin_read(pcf857x_handle_t *const pHandle, pcf857x_gpio_port_t pin, pcf857x_port_logic_level_t *logic_level);
# 459 "./pcf857x_driver.h"
uint8_t pcf857x_pin_read_all(pcf857x_handle_t *const pHandle, uint16_t *logic_level);
# 474 "./pcf857x_driver.h"
uint8_t pcf857x_set_reg(pcf857x_handle_t *const pHandle, uint8_t u8Reg, uint8_t *buf, size_t u8Len);
# 489 "./pcf857x_driver.h"
uint8_t pcf857x_get_reg(pcf857x_handle_t *const pHandle, uint8_t u8Reg, uint8_t *buf, size_t u8Len);
# 498 "./pcf857x_driver.h"
void a_pcf857x_print_error_msg(pcf857x_handle_t *const pHandle, char *const pBuffer);
# 28 "pcf857x_driver.c" 2
# 57 "pcf857x_driver.c"
uint8_t a_pcf857x_i2c_write(pcf857x_handle_t *const pHandle, uint8_t u8Reg, uint8_t *pBuf, uint8_t u8Length)
{
    if(pHandle->i2c_write(pHandle->i2c_address, u8Reg, (uint8_t*)pBuf, u8Length) != PCF857X_DRV_OK)
    {
        return 1;
    }
    return 0;
}
# 78 "pcf857x_driver.c"
uint8_t a_pcf857x_i2c_read(pcf857x_handle_t *const pHandle, uint16_t u8Reg, uint8_t *pBuf, uint8_t u8Length)
{
    if(pHandle->i2c_read(pHandle->i2c_address, u8Reg, (uint8_t*)pBuf, u8Length) != PCF857X_DRV_OK)
    {
        return 1;
    }
    return 0;
}
# 94 "pcf857x_driver.c"
void a_pcf857x_print_error_msg(pcf857x_handle_t *const pHandle, char *const pBuffer)
{

    pHandle->debug_print("PCF857X: failed to %s.\r\n", pBuffer);

}
# 111 "pcf857x_driver.c"
uint8_t pcf857x_init(pcf857x_handle_t *const pHandle)
{
    if (pHandle == ((void*)0))
        return 2;
    if (pHandle->debug_print == ((void*)0))
        return 3;
    if (pHandle->i2c_init == ((void*)0))
    {

        pHandle->debug_print("PCF857X: i2c initialize is null\n");

        return 3;
    }
# 158 "pcf857x_driver.c"
    if (pHandle->i2c_init())
    {

        pHandle->debug_print("PCF857X: i2c initialize failed\n");

        return 1;
    }

    pHandle->inited = 1;

    return 0;
}
# 181 "pcf857x_driver.c"
uint8_t pcf857x_deinit(pcf857x_handle_t *const pHandle)
{
    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    if(pHandle->i2c_deinit() != 0)
    {
        a_pcf857x_print_error_msg(pHandle, "de-initialize i2c");
        return 1;
    }

    return 0;
}
# 207 "pcf857x_driver.c"
uint8_t pcf857x_irq_pHandler(pcf857x_handle_t *const pHandle)
{
    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    if(err)
    {

        return 1;
    }

    return 0;
}
# 233 "pcf857x_driver.c"
uint8_t pcf857x_set_addr_pin(pcf857x_handle_t *const pHandle, pcf857x_address_t addr_pin)
{
    uint8_t default_address;

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    if(pHandle->device_variant == PCF8574A_VARIANT)
        default_address = PCF8574A_ADDRESS_DEFAULT;
    else
        default_address = PCF857X_ADDRESS_DEFAULT;

    pHandle->i2c_address = default_address;
    pHandle->i2c_address |= (addr_pin);

    return 0;
}
# 263 "pcf857x_driver.c"
uint8_t pcf857x_get_addr_pin(pcf857x_handle_t *const pHandle, pcf857x_address_t *pAddr_pin)
{
    uint8_t default_address;

    if (pHandle == ((void*)0))
    return 2;

    if(pHandle->device_variant == PCF8574A_VARIANT)
        default_address = PCF8574A_ADDRESS_DEFAULT;
    else
        default_address = PCF857X_ADDRESS_DEFAULT;

    *pAddr_pin = (pcf857x_address_t) (pHandle->i2c_address | (default_address));

     return 0;
}
# 292 "pcf857x_driver.c"
uint8_t pcf857x_set_variant(pcf857x_handle_t *const pHandle, pcf857x_variant_t variant)
{
    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    if(variant > 0x02 || variant < 0 ){
       a_pcf857x_print_error_msg(pHandle, "set variant, invalid");
        return 4;
    }

    pHandle->device_variant = variant;
    if(pHandle->device_variant != variant)
    {
        return 1;
    }

    return 0;
}
# 324 "pcf857x_driver.c"
uint8_t pcf857x_get_variant(pcf857x_handle_t *const pHandle, pcf857x_variant_t *pVariant)
{
     if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    *pVariant = pHandle->device_variant;
    if( *pVariant != pHandle->device_variant)
    {
        return 1;
    }

    return 0;
}
# 353 "pcf857x_driver.c"
uint8_t pcf857x_pin_write(pcf857x_handle_t *const pHandle, pcf857x_gpio_port_t pin, pcf857x_port_logic_level_t logic_level)
{
    uint8_t status[2];
    uint16_t formated_data;

    memset(status, 0, 2);

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;
    if(pin > PCF857X_GPIO_PIN_17 || pin < PCF857X_GPIO_PIN_0)
        return 4;

    switch(pHandle->device_variant)
    {

        case PCF8575_VARIANT:
        {
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 2);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }
            formated_data = (status[1] << 8)|(status[0]);

            if(pin > PCF857X_GPIO_PIN_7)
            {
                pin = pin - 2;
                formated_data &= ~(1 << pin);
                formated_data |= (logic_level << pin);

                status[0] = (formated_data & 0x00ff);
                status[1] = (formated_data & 0xff00) >> 8;

                err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)status, 2);
                if(err)
                {
                    a_pcf857x_print_error_msg(pHandle, "write port register");
                    return 1;
                }
            }else{
                formated_data &= ~(1 << pin);
                formated_data |= (logic_level << pin);

                err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)&formated_data, 2);
                if(err)
                {
                    a_pcf857x_print_error_msg(pHandle, "write port register");
                    return 1;
                }
            }

            break;
        }

        case PCF8574A_VARIANT:
        {
            if(pin > PCF857X_GPIO_PIN_7){

                a_pcf857x_print_error_msg(pHandle, "to write, invalid gpio pin");
                return 4;
            }
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }
            formated_data = status[0];
            formated_data &= ~(1 << pin);
            formated_data |= (logic_level << pin);

            err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)&formated_data, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "write port register");
                return 1;
            }

            break;
        }

        case PCF8574_VARIANT:
        {
             if(pin > PCF857X_GPIO_PIN_7){

                a_pcf857x_print_error_msg(pHandle, "to write pin, invalid gpio");
                return 4;
            }
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }
            formated_data = status[0];
            formated_data &= ~(1 << pin);
            formated_data |= (logic_level << pin);

            err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)&formated_data, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "write port register");
                return 1;
            }

            break;
        }

        default:
            return 1;
        break;

    }

    return 0;
}
# 483 "pcf857x_driver.c"
uint8_t pcf857x_pin_write_all(pcf857x_handle_t *const pHandle, pcf857x_port_logic_level_t logic_level)
{
    uint8_t status[2];

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

   switch(pHandle->device_variant)
    {

        case PCF8575_VARIANT:
        {
            if(logic_level == 0x01){status[0] = 0xff; status[1] = 0xff;}
            else{status[0] = 0x00; status[1] = 0x00; }
            err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)status, 2);
            if (err != PCF857X_DRV_OK){
                return err;
            }
            break;
        }

        case PCF8574A_VARIANT:
        {
          if(logic_level == 0x01){logic_level = 0xff;}
          err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)&logic_level, 1);
          if (err != PCF857X_DRV_OK){
            return err;
          }
            break;
        }

        case PCF8574_VARIANT:
        {
          if(logic_level == 0x01){logic_level = 0xff;}
          err = a_pcf857x_i2c_write(pHandle, ((void*)0), (uint8_t *)&logic_level, 1);
          if (err != PCF857X_DRV_OK){
            return err;
          }
            break;
        }

        default:
            return 1;
        break;

    }

    return 0;
}
# 548 "pcf857x_driver.c"
uint8_t pcf857x_pin_read(pcf857x_handle_t *const pHandle, pcf857x_gpio_port_t pin, pcf857x_port_logic_level_t *logic_level)
{
    uint8_t status[2];
    uint16_t formated_data;

    memset(status, 0, 2);

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;
    if(pin > PCF857X_GPIO_PIN_17 || pin < PCF857X_GPIO_PIN_0)
        return 4;

    err = pcf857x_pin_write(pHandle, pin, 0x01);
    if(err){
        a_pcf857x_print_error_msg(pHandle, "write port before read");
        return 1;
    }

    switch(pHandle->device_variant)
    {

        case PCF8575_VARIANT:
        {
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 2);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }
            formated_data = (status[1] << 8)|(status[0]);

            if(pin > PCF857X_GPIO_PIN_7)
            {
                pin = pin - 2;
            }
            *logic_level = (pcf857x_port_logic_level_t)((formated_data & pcf857x_pin_mask_arr[pin]) >> pin);

            break;
        }

        case PCF8574A_VARIANT:
        {

            if(pin > PCF857X_GPIO_PIN_7){

                a_pcf857x_print_error_msg(pHandle, "to read pin, invalid gpio");
                return 4;
            }

            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }

            formated_data = status[0];
            *logic_level = (pcf857x_port_logic_level_t)((formated_data & pcf857x_pin_mask_arr[pin]) >> pin);

            break;
        }

        case PCF8574_VARIANT:
        {
            if(pin > PCF857X_GPIO_PIN_7){

                a_pcf857x_print_error_msg(pHandle, "to read pin, invalid gpio");
                return 4;
            }

            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }

            formated_data = status[0];
            *logic_level = (pcf857x_port_logic_level_t)((formated_data & pcf857x_pin_mask_arr[pin]) >> pin);

            break;
        }

        default:
            return 1;
        break;

    }

    return 0;
}
# 653 "pcf857x_driver.c"
uint8_t pcf857x_pin_read_all(pcf857x_handle_t *const pHandle, uint16_t *logic_level)
{
    uint16_t status[2];
    uint16_t formated_data;

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    switch(pHandle->device_variant)
    {

        case PCF8575_VARIANT:
        {
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint16_t *)status, 2);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }
            formated_data = (status[0] << 8)|(status[1]);
            *logic_level = formated_data;
            break;
        }

        case PCF8574A_VARIANT:
        {
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }

            *logic_level = status[0];
            break;
        }

        case PCF8574_VARIANT:
        {
            err = a_pcf857x_i2c_read(pHandle, ((void*)0), (uint8_t *)status, 1);
            if(err)
            {
                a_pcf857x_print_error_msg(pHandle, "read port register");
                return 1;
            }

            *logic_level = status[0];
            break;
        }

        default:
            return 1;
        break;

    }

    return 0;
}
# 727 "pcf857x_driver.c"
uint8_t pcf857x_set_reg(pcf857x_handle_t *const pHandle, uint8_t u8Reg, uint8_t *buf, size_t u8Len)
{

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    err = a_pcf857x_i2c_write(pHandle, u8Reg, (uint8_t *)buf, u8Len);
    if(err)
    {
        return 1;
    }

    return 0;
}
# 757 "pcf857x_driver.c"
uint8_t pcf857x_get_reg(pcf857x_handle_t *const pHandle, uint8_t u8Reg, uint8_t *buf, size_t u8Len)
{

    if(pHandle == ((void*)0))
        return 2;
    if(pHandle->inited != 1)
        return 3;

    err = a_pcf857x_i2c_read(pHandle, u8Reg, (uint8_t *)buf, u8Len);
    if(err)
    {
        return 1;
    }

    return 0;
}
# 782 "pcf857x_driver.c"
uint8_t pcf857x_info(pcf857x_handle_t *const pHandle)
{
    strncpy(pHandle->info.chip_name, "PCF857X", 25);
    strncpy(pHandle->info.interface, "I2C", 8);
    strncpy(pHandle->info.manufacturer_name, "NXP", 25);
    pHandle->info.supply_voltage_max_v = 6.0f;
    pHandle->info.supply_voltage_min_v = 2.5f;
    pHandle->info.max_current_ma = 100;
    pHandle->info.temperature_max = 85.0f;
    pHandle->info.temperature_min = -40.0f;
    pHandle->info.flash_size_min = 32;
    pHandle->info.ram_size_min = 2;
    pHandle->info.driver_version = 1000;

    return 0;
}
