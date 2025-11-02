################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/BARRERA_IR.c \
../Core/Src/BOTONES.c \
../Core/Src/DC_MOTOR.c \
../Core/Src/DC_MOTOR_cfg.c \
../Core/Src/HX711.c \
../Core/Src/I2C_LCD.c \
../Core/Src/I2C_LCD_cfg.c \
../Core/Src/SERVO.c \
../Core/Src/SERVO_cfg.c \
../Core/Src/Util.c \
../Core/Src/main.c \
../Core/Src/stm32f1xx_hal_msp.c \
../Core/Src/stm32f1xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f1xx.c 

OBJS += \
./Core/Src/BARRERA_IR.o \
./Core/Src/BOTONES.o \
./Core/Src/DC_MOTOR.o \
./Core/Src/DC_MOTOR_cfg.o \
./Core/Src/HX711.o \
./Core/Src/I2C_LCD.o \
./Core/Src/I2C_LCD_cfg.o \
./Core/Src/SERVO.o \
./Core/Src/SERVO_cfg.o \
./Core/Src/Util.o \
./Core/Src/main.o \
./Core/Src/stm32f1xx_hal_msp.o \
./Core/Src/stm32f1xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f1xx.o 

C_DEPS += \
./Core/Src/BARRERA_IR.d \
./Core/Src/BOTONES.d \
./Core/Src/DC_MOTOR.d \
./Core/Src/DC_MOTOR_cfg.d \
./Core/Src/HX711.d \
./Core/Src/I2C_LCD.d \
./Core/Src/I2C_LCD_cfg.d \
./Core/Src/SERVO.d \
./Core/Src/SERVO_cfg.d \
./Core/Src/Util.d \
./Core/Src/main.d \
./Core/Src/stm32f1xx_hal_msp.d \
./Core/Src/stm32f1xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/BARRERA_IR.cyclo ./Core/Src/BARRERA_IR.d ./Core/Src/BARRERA_IR.o ./Core/Src/BARRERA_IR.su ./Core/Src/BOTONES.cyclo ./Core/Src/BOTONES.d ./Core/Src/BOTONES.o ./Core/Src/BOTONES.su ./Core/Src/DC_MOTOR.cyclo ./Core/Src/DC_MOTOR.d ./Core/Src/DC_MOTOR.o ./Core/Src/DC_MOTOR.su ./Core/Src/DC_MOTOR_cfg.cyclo ./Core/Src/DC_MOTOR_cfg.d ./Core/Src/DC_MOTOR_cfg.o ./Core/Src/DC_MOTOR_cfg.su ./Core/Src/HX711.cyclo ./Core/Src/HX711.d ./Core/Src/HX711.o ./Core/Src/HX711.su ./Core/Src/I2C_LCD.cyclo ./Core/Src/I2C_LCD.d ./Core/Src/I2C_LCD.o ./Core/Src/I2C_LCD.su ./Core/Src/I2C_LCD_cfg.cyclo ./Core/Src/I2C_LCD_cfg.d ./Core/Src/I2C_LCD_cfg.o ./Core/Src/I2C_LCD_cfg.su ./Core/Src/SERVO.cyclo ./Core/Src/SERVO.d ./Core/Src/SERVO.o ./Core/Src/SERVO.su ./Core/Src/SERVO_cfg.cyclo ./Core/Src/SERVO_cfg.d ./Core/Src/SERVO_cfg.o ./Core/Src/SERVO_cfg.su ./Core/Src/Util.cyclo ./Core/Src/Util.d ./Core/Src/Util.o ./Core/Src/Util.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/stm32f1xx_hal_msp.cyclo ./Core/Src/stm32f1xx_hal_msp.d ./Core/Src/stm32f1xx_hal_msp.o ./Core/Src/stm32f1xx_hal_msp.su ./Core/Src/stm32f1xx_it.cyclo ./Core/Src/stm32f1xx_it.d ./Core/Src/stm32f1xx_it.o ./Core/Src/stm32f1xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f1xx.cyclo ./Core/Src/system_stm32f1xx.d ./Core/Src/system_stm32f1xx.o ./Core/Src/system_stm32f1xx.su

.PHONY: clean-Core-2f-Src

