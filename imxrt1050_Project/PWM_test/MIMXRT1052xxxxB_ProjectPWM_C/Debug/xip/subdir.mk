################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../xip/evkbimxrt1050_flexspi_nor_config.c \
../xip/evkbimxrt1050_sdram_ini_dcd.c \
../xip/fsl_flexspi_nor_boot.c 

OBJS += \
./xip/evkbimxrt1050_flexspi_nor_config.o \
./xip/evkbimxrt1050_sdram_ini_dcd.o \
./xip/fsl_flexspi_nor_boot.o 

C_DEPS += \
./xip/evkbimxrt1050_flexspi_nor_config.d \
./xip/evkbimxrt1050_sdram_ini_dcd.d \
./xip/fsl_flexspi_nor_boot.d 


# Each subdirectory must supply rules for building sources it contributes
xip/%.o: ../xip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../device -I../CMSIS -I../xip -I../component/uart -I../component/serial_manager -I../component/lists -I../utilities -I../board/boards -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


