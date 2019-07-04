# 构建示例应用 Z3Light

环境变量：

* Windows 10
  * Simplicity Studio 4
    * Gecko Platform 2.6.0
    * EmberZNet SDK 6.6.0.0
    * GNU ARM Toolchain v7.2.2017.q4
* EFR32™ Mighty Gecko Wireless Starter Kit (SLWSTK6000B)
  * BRD4161A Rev A02 (EFR32MG12P432F1024GL125)
  * BRD4001A Rev A01

# 创建 AppBuilder 配置文件

1. 启动 Simplicity Studio，点击菜单栏中的 `File > New > Project`。
2. 在 `New Project` 窗口中选择 `Silicon Labs AppBuilder Project`，`Next`。
3. 在 `Applications` 窗口中选择 `Silicon Labs Zigbee`，`Next`。
4. 在 `Stacks` 窗口中选择 `EmberZNet 6.6.0.0 GA SoC 6.6.0.0`，`Next`。
5. 在 `Select Application` 窗口中选择 `Z3Light`。
6. 在 `Project Configuration` 窗口中命名项目及选择项目存放位置，`Next`。
7. 在 `Project setup` 窗口中选择开发板型号、芯片型号和工具链：
   1. Boards - BRD4161A Rev A02
   2. Part - EFR32MG12P432F1024GL125
   3. 仅勾选 `GNU ARM`
    > 注：自定义板不必选择开发板型号；工具链列表中的可选项一般有 `IAR` 和 `GNU ARM`，建议只勾选其中之一。
8. `Finish`。
9.  可以在 `Project Explorer` 中看到新创建的 AppBuilder 配置文件 `<project name>.isc`。

# 通过 AppBuilder 配置文件生成代码

1. 双击项目下的 `.isc` 文件，在打开的 `<project name>.isc` 页面中点击 `Generate`。
2. 若弹出 `Generation validation` 窗口，则根据需要选择要覆盖的文件，并点击 `OK`。
3. 生成代码成功后会弹出 `Generation successful` 窗口，点击 `OK` 即可。
4. 可以在 `Project Explorer` 中的 `<project name>` 下看到新生成的代码。

# 构建项目

1. 在 `Project Explorer` 中的选中项目名，并点击构建按钮 ![build](./build.jpg)。
2. 若构建成功，`Console` 窗口会打印出相关信息，如：
    ```
    Running size tool
    arm-none-eabi-size "Z3LightSoc.axf"
    text     data    bss     dec      hex    filename
    247416   1664    23516   272596   428d4  Z3LightSoc.axf

    22:39:31 Build Finished (took 2m:11s.547ms)
    ```

# 刷写固件到设备

1. 当项目构建成功时，`Project Explorer` 中的项目名下有一个 `Binaries` 目录，该目录存放项目的多种不同格式的二进制固件。
2. 右键 `<project name>.hex`，选择 `Flash to Device`。
3. 选择要刷写固件的设备，并点击 `Program`。

# 调试应用

1. 在 `Debug Adapters` 窗口中选中要调试应用的设备。
2. 点击调试按钮 ![debug](./debug.jpg)。
