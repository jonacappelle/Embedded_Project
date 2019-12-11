# Embedded Systems 1 Lab

> Embedded Programming of the AMG8833 IR Thermal Camera on the EFM32HG

![Target device](https://img.shields.io/badge/target%20device-EFM32HG322F64G-yellow.svg)



---

## Table of Contents

- [Code](Embedded_1_AMG8833_Temp_Sensor)
  * [src](Embedded_1_AMG8833_Temp_Sensor/src)
  * [AMG8833](Embedded_1_AMG8833_Temp_Sensor/AMG8833)
  * [Datasheet](Documentation/ADI8000C66.pdf)
  * [Datasheet (advanced)](Documentation/Grid-EYE_SPECIFICATIONS(Reference).pdf)

---

## Doxygen Documentation
[CODE](https://jonacappelle.github.io/Embedded_Project/index.html)

## Installation

- All the `code` required to get started


## Clone

- Clone this repo to your local machine using `git clone https://github.com/jonacappelle/Embedded_Project`

## Sensor

<p align="center">
  <img width="400" src="https://github.com/jonacappelle/Embedded_Project/blob/master/Documentation/amg8833.jpg">
</p>

## Team

- Jona Cappelle
- Thomas Feys

## Energy consumption EFM32HG

[Datasheet](https://www.silabs.com/documents/public/data-sheets/efm32hg-datasheet.pdf)

| Energy Mode   |Current        |
| ------------- |:-------------:|
| EM0           | 148 µA/MHz |
| EM1           | 64 µA/MHz      |
| EM2           | 0.9 µA      |
| EM3           | 0.6 µA |
| EM4           | 0.02 µA |


## Energy consumption AMG8833
[Datasheet](https://cdn-learn.adafruit.com/assets/assets/000/043/261/original/Grid-EYE_SPECIFICATIONS%28Reference%29.pdf?1498680225)

| Energy Mode   |Current        |
| ------------- |:-------------:|
| Normal        | 4.5 mA        |
| Stand-by      | 0.8 mA        |
| Sleep         | 0.2 mA        |

