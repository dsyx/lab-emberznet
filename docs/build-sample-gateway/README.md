[back](../README.md)

# 构建示例网关

环境变量：

* Ubuntu 18.04 bionic
  * Simplicity Studio 4
    * Gecko Platform 2.6.0
    * EmberZNet SDK 6.6.0.0
    * GNU ARM Toolchain v7.2.2017.q4
  * gcc version 7.4.0
  * GNU Make 4.1
* EFR32™ Mighty Gecko Wireless Starter Kit (SLWSTK6000B)
  * BRD4161A Rev A02 (EFR32MG12P432F1024GL125)
  * BRD4001A Rev A01

# 创建 NCP 示例

1. 启动 Simplicity Studio，点击菜单栏中的 `File > New > Project`。
2. 在 `New Project` 窗口中选择 `Silicon Labs AppBuilder Project`，`Next`。
3. 在 `Applications` 窗口中选择 `Customizable network coprocessor (NCP) applications`，`Next`。
4. 在 `Stacks` 窗口中选择 `EmberZNet 6.6.0.0 GA Network Coprocessor (NCP) Application Framework 6.6.0.0`，`Next`。
5. 在 `Select Application` 窗口中选择 `NCP UART HW (Hardware Flow Control)`。
6. 在 `Project Configuration` 窗口中命名项目及选择项目存放位置，`Next`。
7. 在 `Project setup` 窗口中选择开发板型号、芯片型号和工具链：
   1. Boards - BRD4161A Rev A02
   2. Part - EFR32MG12P432F1024GL125
   3. 仅勾选 `GNU ARM`
8. `Finish`，可以在 `Project Explorer` 中看到新创建的 AppBuilder 配置文件 `<project name>.isc`。
9. 在 `Project Explorer` 中的 `<project name>` 下双击 `<project name>.isc`，以打开 `<project name>.isc` 配置页面。
10. 点击配置页面下的 `Generate` 按钮。
11. 若弹出 `Generation validation` 窗口，则根据需要选择要覆盖的文件，并点击 `OK`。
12. 生成代码成功后会弹出 `Generation successful` 窗口，点击 `OK` 即可。
13. 在 `Project Explorer` 中的选中项目名，并点击构建按钮 ![build](./build.jpg)。
14. 若构建成功，`Console` 窗口会打印出相关信息，如：
    ```
    Running size tool
    arm-none-eabi-size "ncp-uart-hw.axf"
    text     data    bss    dec      hex    filename
    200244   1276    49483  251003   3d47b  ncp-uart-hw.axf

    10:25:43 Build Finished (took 17s.636ms)
    ```
15. 当项目构建成功时，`Project Explorer` 中的项目名下有一个 `Binaries` 目录，该目录存放项目的多种不同格式的二进制固件。
16. 右键 `<project name>.hex`，选择 `Flash to Device`。
17. 选择要刷写固件的设备，并点击 `Program`。

# 创建 Host 示例

1. 点击菜单栏中的 `File > New > Project`。
2. 在 `New Project` 窗口中选择 `Silicon Labs AppBuilder Project`，`Next`。
3. 在 `Applications` 窗口中选择 `Silicon Labs Zigbee`，`Next`。
4. 在 `Stacks` 窗口中选择 `EmberZNet 6.6.0.0 GA Host 6.6.0.0`，`Next`。
5. 在 `Select Application` 窗口中选择 `Z3Gateway`。
6. 在 `Project Configuration` 窗口中命名项目及选择项目存放位置，`Next`。
7. 在 `Project setup` 窗口中选择开发板型号、芯片型号和工具链：
   1. Boards - 空，无需选择
   2. Part - None
   3. 仅勾选 `(No toolchain)(v0.0.0)`
8. `Finish`，可以在 `Project Explorer` 中看到新创建的 AppBuilder 配置文件 `<project name>.isc`。
9. 在 `Project Explorer` 中的 `<project name>` 下双击 `<project name>.isc`，以打开 `<project name>.isc` 配置页面。
10. 点击配置页面下的 `Generate` 按钮。
11. 若弹出 `Generation validation` 窗口，则根据需要选择要覆盖的文件，并点击 `OK`。
12. 生成代码成功后会弹出 `Generation successful` 窗口，点击 `OK` 即可。
13. 打开 Linux 终端，并切换到项目的存放位置 `cd */<project name>/`。
14. 使用 `make` 命令构建项目。
15. 若构建成功，终端会打印出提示 `build/exe/<project name> build success`。
16. 将 NCP 设备连接到本主机上，并运行 Host 应用：
    ```bash
    $ sudo build/exe/Z3GatewayHost -b 115200 -p /dev/ttyACM0
    Reset info: 11 (SOFTWARE)
    ezsp ver 0x07 stack type 0x02 stack ver. [6.6.0 GA build 69]
    Ezsp Config: set source route table size to 0x0064:Error: set: 0x35
    Ezsp Config: set security level to 0x0005:Success: set
    Ezsp Config: set address table size to 0x0002:Success: set
    Ezsp Config: set TC addr cache to 0x0002:Success: set
    Ezsp Config: set stack profile to 0x0002:Success: set
    Ezsp Config: set MAC indirect TX timeout to 0x1E00:Success: set
    Ezsp Config: set max hops to 0x001E:Success: set
    Ezsp Config: set tx power mode to 0x8000:Success: set
    Ezsp Config: set supported networks to 0x0001:Success: set
    Ezsp Policy: set binding modify to "allow for valid endpoints & clusters only":Success: set
    Ezsp Policy: set message content in msgSent to "return":Success: set
    Ezsp Value : set maximum incoming transfer size to 0x00000052:Success: set
    Ezsp Value : set maximum outgoing transfer size to 0x00000052:Success: set
    Ezsp Config: set binding table size to 0x0010:Success: set
    Ezsp Config: set key table size to 0x0004:Success: set
    Ezsp Config: set max end device children to 0x0020:Success: set
    Ezsp Config: set aps unicast message count to 0x000A:Success: set
    Ezsp Config: set broadcast table size to 0x000F:Success: set
    Ezsp Config: set neighbor table size to 0x0010:Success: set
    NCP supports maxing out packet buffers
    Ezsp Config: set packet buffers to 72
    Ezsp Config: set end device poll timeout to 0x0008:Success: set
    Ezsp Config: set zll group addresses to 0x0000:Success: set
    Ezsp Config: set zll rssi threshold to 0xFFD8:Success: set
    Ezsp Config: set transient key timeout to 0x00B4:Success: set
    Ezsp Endpoint 1 added, profile 0x0104, in clusters: 8, out clusters 19
    Ezsp Endpoint 242 added, profile 0xA1E0, in clusters: 0, out clusters 1
    Found 0 files

    Z3GatewayHost>
    ```

至此已成功构建示例网关。
