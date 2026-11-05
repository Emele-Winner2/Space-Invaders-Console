# STM32 Space Invaders

An interactive arcade game built entirely from scratch on the STM32F103C8T6 (Blue Pill). This project implements a non-blocking, interrupt-driven embedded game engine featuring real-time gyroscope tilt controls, dynamic sprite rendering, slot-based bullet management, and bounding-box collision detection on an SSD1306 OLED display.

## 🚀 Features

- **Hardware-Driven Timing:** Utilizes STM32 advanced-control timers (`TIM1`) and Output Compare interrupts (`Channel 2` & `Channel 3`) to govern background game ticks, enemy movement, and bullet physics without blocking the CPU with `HAL_Delay()`.
- **MPU6050 Tilt Controls:** Maps real-time roll data from an MPU6050 gyroscope/accelerometer via I2C to allow smooth left/right player ship movement.
- **Interrupt-Driven Firing:** Uses GPIO External Interrupts (`EXTI` on `EXTI4_IRQn`) tied to a tactile push switch for instantaneous weapon firing.
- **Dynamic Slot-Based Bullet System:** Manages an independent 4-slot bullet array that handles active projectile rendering, boundary cleanup, and dynamic reuse.
- **PWM Audio Tone Generation:** Features built-in tone synthesis (`Tone`, `noTone`, `playLaser`, `playInvaderStep`) driven by `TIM1` Channel 1 PWM output.
- **Modular Architecture:** Clean separation of concerns across dedicated modules for rendering, physics/collisions, sensors, and sprites.

---

## ⚙️ STM32CubeIDE & Peripherals Configuration

To replicate this project in STM32CubeIDE, configure your `.ioc` file with the following exact settings:

### 1. System Clock (`RCC`)
*   **High Speed Clock (HSE):** Crystal/Ceramic Resonator
*   **PLL Source:** HSE
*   **PLL Multiplier:** `PLL_MUL9` (Achieves a 72 MHz system clock)
*   **AHB Prescaler:** `DIV1` (72 MHz)
*   **APB1 Prescaler:** `DIV2` (36 MHz - Max limit for APB1)
*   **APB2 Prescaler:** `DIV1` (72 MHz)
*   **Flash Latency:** `2 Wait States`

### 2. Timer 1 (`TIM1` - PWM Audio & Output Compare Interrupts)
*   **Clock Source:** Internal Clock
*   **Prescaler (PSC):** `999`
*   **Counter Period (ARR / Period):** `23999`
*   **Channel 1 (Audio Output):** PWM Generation CH1 (Polarity: High)
*   **Channel 2 (Game/Position Tick):** Output Compare Mode (Pulse: `12999`)
*   **Channel 3 (Bullet Physics Tick):** Output Compare Mode (Pulse: `5000`)

### 3. I2C1 (`I2C1` - OLED & MPU6050 Communication)
*   **Peripheral Mode:** I2C Mode
*   **Clock Speed:** `100000 Hz` (Standard Mode)
*   **Addressing Mode:** 7-bit

### 4. USART1 (`USART1` - Debugging & Retargeted `printf`)
*   **Baud Rate:** `115200 Bits/s`
*   **Word Length:** 8 Data Bits
*   **Parity:** None
*   **Stop Bits:** 1

### 5. GPIO (`MX_GPIO_Init`)
*   **Gun Pin (`Gun_Pin`):** Configured as `GPIO_MODE_IT_RISING` (External Interrupt Rising Edge) with **Pull-down** resistor enabled.
*   **NVIC Settings:** Enable `EXTI line4 interrupt` (`EXTI4_IRQn`) with Preemption Priority `0`.

---

## 🛠️ Hardware Requirements

- **STM32F103C8T6 Board** (Blue Pill)
- **MPU6050** 6-Axis Accelerometer/Gyroscope Module (Connected via I2C1: PB6/PB7)
- **SSD1306 OLED Display** (128x64 pixels, I2C1: PB6/PB7)
- **Tactile Push Switch** (`Gun_Pin` connected to PA4 / EXTI4)
- **Piezo Buzzer / Speaker** (Wired to PA8 / TIM1_CH1)

---

## 📂 Project Directory Structure

```text
├── Core/
│   ├── Inc/
│   │   ├── main.h
│   │   ├── Renderer.h
│   │   ├── collision.h
│   │   ├── Sprites.h
│   │   ├── MPU_6050.h
│   │   ├── ssd1306.h
│   │   ├── ssd1306_conf.h
│   │   └── ssd1306_fonts.h
│   └── Src/
│       ├── main.c         # System initialization, EXTI handlers, TIM callbacks, audio stubs
│       ├── Renderer.c     # Main rendering loop and screen state machines
│       ├── collision.c    # Hitbox and bounding-box collision logic
│       ├── Sprites.c      # Bitmap arrays for player ship, enemies, and bullets
│       ├── MPU_6050.c     # I2C driver and roll/pitch extraction routines
│       └── ssd1306.c      # OLED display driver routines

```

---

## 🎯 Roadmap & Future Improvements

1. **Universal STM32 Portability:** Refactor hardware-specific configurations to allow seamless porting and compilation across *all* STM32 microcontroller families (F1, F4, G4, H7, etc.).
2. **Audio Integration:** Fully hook up timer PWM tone functions (`playLaser`, `playInvaderStep`) to trigger dynamically during game events.
3. **Bug Fixes & Polish:** Fine-tune collision boundary edge cases and optimize accelerometer tilt jitter thresholds.
4. **Score Tracking & Win Condition:** Implement an on-screen score counter and a win celebration state.

```

```
