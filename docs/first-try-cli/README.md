[back](../README.md)

# 初试 CLI

环境变量：

* Windows 10
  * Simplicity Studio 4
* Ubuntu 18.04 bionic
* EFR32™ Mighty Gecko Wireless Starter Kit (SLWSTK6000B)
  * BRD4161A Rev A02 (EFR32MG12P432F1024GL125)
  * BRD4001A Rev A01

Silicon Labs 的 ZigBee 应用框架包含了一个 CLI（command line interface），该 CLI 实现了一些常用的命令和 Cluster 特定的命令。

> 解：在 ZigBee 网络中，Cluster 是一组属性（attribute）和命令（command）的集合，其定义了设备间通信的接口。

本文假定读者已构建了示例应用 Z3Light 和示例网关，并且已将固件刷写到设备上。

本文将介绍如何通过 CLI 使网关创建一个网络，并通过 CLI 将 Z3Light 加入到该网络中，然后在网关上使用 CLI 发送 ZCL 命令到 Z3Light 设备，以控制设备上的 LED。

# 启动网关应用

将 NCP 设备连接到 Linux 主机上，并切换到 Host 应用的工程目录下，运行 Host 应用：
```
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

# 打开 Z3Light 设备的控制台

1. 将 Z3Light 设备连接到 Windows 10 主机上。
2. 启动 Simplicity Studio，在 `Debug Adapters` 窗口中右键设备名，选择 `Connect`，以连接设备。
3. 再次右键设备名，选择 `Launch Console` 以打开设备的控制台。
4. 在设备名页面中选择 `Serial 1` 页面。
5. 在输入栏中输入回车键，控制台会打印出命令提示符，如：`Z3LightSoc>`。

# CLI 命令

CLI 命令有两种形式：带参数的和无参数的。

其中带参数的命令在输入参数时有格式要求：

* int 类型参数可以为直接的十进制数或带 `0x` 前缀的十六进制数，如 `123` 或 `0xABC`。
* string 类型参数需要使用双引号或大括号包含，如 `"foo"` 或 {0A 1B 2C}。

若参数输入有误，控制台会打印出响应的提示以帮助输入。

后文中，`Z3GatewayHost>` 表示在 Host 应用中的操作；`Z3LightSoc>` 表示在示例应用 Z3Light 中的操作。

# help 命令

`help` 命令将打印出设备可用的命令集，如：

```
Z3GatewayHost>help
bsend
changekey
debugprint
echo
endpoint
events
help
info
interpan
keys
libs
network
option
plugin
print
raw
read
reset
security
send
send-using-multicast-binding
send_multicast
timesync
version
write
zcl
zdo
custom
```
# info 命令

`info` 命令将打印设备的一些基本信息和网络信息，如：

```
Z3GatewayHost>info
MFG String: 
AppBuilder MFG Code: 0x1002
node [(>)90FD9FFFFE19B7AB] chan [14] pwr [10]
panID [0xFFFF] nodeID [0xFFFE] xpan [0x(>)3CAFE3F47A0CB75E]
ezsp ver 0x07 stack type 0x02 stack ver. [6.6.0 GA build 69]
nodeType [0x0C]
Security level [05]
network state [00] Buffs: 59 / 72
Ep cnt: 2
ep 1 [endpoint enabled, device enabled] nwk [0] profile [0x0104] devId [0x0007] ver [0x00]
    out(client) cluster: 0x0000 (Basic)
    in (server) cluster: 0x0000 (Basic)
    out(client) cluster: 0x0003 (Identify)
    in (server) cluster: 0x0003 (Identify)
    out(client) cluster: 0x0004 (Groups)
    out(client) cluster: 0x0005 (Scenes)
    out(client) cluster: 0x0006 (On/off)
    in (server) cluster: 0x0006 (On/off)
    ......
ep 242 [endpoint enabled, device enabled] nwk [0] profile [0xA1E0] devId [0x0061] ver [0x00]
    out(client) cluster: 0x0021 (Green Power)
Nwk cnt: 1
nwk 0 [Primary (pro)]
  nodeType [0x01]
  securityProfile [0x05]
```

可以看到，此时 Z3GatewayHost 的 `network state` 为 `00`，即未加入到任何网络。 `network state` 的可能值为以下枚举：

```c
enum {
    /** The node is not associated with a network in any way. */
    EMBER_NO_NETWORK,
    /** The node is currently attempting to join a network. */
    EMBER_JOINING_NETWORK,
    /** The node is joined to a network. */
    EMBER_JOINED_NETWORK,
    /** The node is an end device joined to a network but its parent
        is not responding. */
    EMBER_JOINED_NETWORK_NO_PARENT,
    /** The node is in the process of leaving its current network. */
    EMBER_LEAVING_NETWORK
};
```

# 创建集中式安全网络

在协调器设备中可以使用 `plugin network-creator form` 命令创建一个集中式安全网络，该命令的使用提示如下：

```
plugin network-creator form (args) 
   <uint8_t>  Whether or not to form a centralized network ...
   <uint16_t> PanID of the network to be formed
   <int8_t>   Tx power of the network to be formed
   <uint8_t>  channel of the network to be formed

 - Form a network with specified parameters.
```

现在使用该命令在 12 信道上创建一个 PAN ID 为 0xABCD 的集中式安全网络，其中网关的发射功率设置为 10dBm：

```
Z3GatewayHost>plugin network-creator form 1 0xABCD 10 12
NWK Creator Security: Start: 0x00
NWK Creator: Form. Channel: 12. Status: 0x00
NWK Creator: Form: 0x00
EMBER_NETWORK_UP 0x0000
```

可以看到，`EMBER_NETWORK_UP 0x0000`，这表示网络创建成功。此时，可以使用 `info` 命令查看网络信息：

```
Z3GatewayHost>info
MFG String: 
AppBuilder MFG Code: 0x1002
node [(>)90FD9FFFFE19B7AB] chan [12] pwr [10]
panID [0xABCD] nodeID [0x0000] xpan [0x(>)331C3F2B2195FEFF]
ezsp ver 0x07 stack type 0x02 stack ver. [6.6.0 GA build 69]
nodeType [0x01]
Security level [05]
network state [02] Buffs: 59 / 72
Ep cnt: 2
ep 1 [endpoint enabled, device enabled] nwk [0] profile [0x0104] devId [0x0007] ver [0x00]
    out(client) cluster: 0x0000 (Basic)
    in (server) cluster: 0x0000 (Basic)
    out(client) cluster: 0x0003 (Identify)
    in (server) cluster: 0x0003 (Identify)
    out(client) cluster: 0x0004 (Groups)
    out(client) cluster: 0x0005 (Scenes)
    out(client) cluster: 0x0006 (On/off)
    in (server) cluster: 0x0006 (On/off)
    ......
ep 242 [endpoint enabled, device enabled] nwk [0] profile [0xA1E0] devId [0x0061] ver [0x00]
    out(client) cluster: 0x0021 (Green Power)
Nwk cnt: 1
nwk 0 [Primary (pro)]
  nodeType [0x01]
  securityProfile [0x05]
```

从打印的信息可以获知：

* `chan [12]` - 网络信道为 12。
* `pwr [10]` - 发射功率为 10dBm。
* `panID [0xABCD]` - PAN ID 为 0xABCD。
* `nodeID [0x0000]` - 节点的网络短地址为 0x0000，即集中式安全网络的协调器地址。
* `nodeType [0x01]` - 该节点的类型为协调器。
* `network state [02]` - 该节点已加入到一个网络中。

`nodeType` 的可能值也是一个枚举：

```c
enum {
    /** The device is not joined. */
    EMBER_UNKNOWN_DEVICE = 0,
    /** Will relay messages and can act as a parent to other nodes. */
    EMBER_COORDINATOR = 1,
    /** Will relay messages and can act as a parent to other nodes. */
    EMBER_ROUTER = 2,
    /** Communicates only with its parent and will not relay messages. */
    EMBER_END_DEVICE = 3,
    /** An end device whose radio can be turned off to save power.
     *  The application must call ::emberPollForData() to receive messages.
     */
    EMBER_SLEEPY_END_DEVICE = 4,
};
```

# 加入到集中式安全网络

使用 `info` 命令查看 Z3LightSoc 设备的信息：

```
Z3LightSoc>info
MFG String: 
AppBuilder MFG Code: 0x1002
node [(>)90FD9FFFFE19B80F] chan [20] pwr [3]
panID [0xC705] nodeID [0x3B21] xpan [0x(>)A4E3748B40A0D068]
parentID [0xFFFF] parentRssi [0]
stack ver. [6.6.0 GA build 69]
nodeType [0x02]
Security level [05]
network state [02] Buffs: 75 / 75
Ep cnt: 3
ep 1 [endpoint enabled, device enabled] nwk [0] profile [0x0104] devId [0x0101] ver [0x00]
    in (server) cluster: 0x0000 (Basic)
    in (server) cluster: 0x0003 (Identify)
    in (server) cluster: 0x0004 (Groups)
    in (server) cluster: 0x0005 (Scenes)
    in (server) cluster: 0x0006 (On/off)
    in (server) cluster: 0x0008 (Level Control)
ep 2 [endpoint enabled, device enabled] nwk [0] profile [0x0104] devId [0x010D] ver [0x00]
    in (server) cluster: 0x0000 (Basic)
    in (server) cluster: 0x0003 (Identify)
    in (server) cluster: 0x0004 (Groups)
    in (server) cluster: 0x0005 (Scenes)
    in (server) cluster: 0x0006 (On/off)
    in (server) cluster: 0x0008 (Level Control)
    in (server) cluster: 0x0300 (Color Control)
    in (server) cluster: 0x1000 (ZLL Commissioning)
ep 242 [endpoint enabled, device enabled] nwk [0] profile [0xA1E0] devId [0x0061] ver [0x00]
    out(client) cluster: 0x0021 (Green Power)
Nwk cnt: 1
nwk 0 [Primary (pro)]
  nodeType [0x02]
  securityProfile [0x05]
```

从打印的信息可知，Z3LightSoc 设备在 PAN ID 为 0xC705 的网络中。

> 注：若 Z3LightSoc 不在网络中，可以跳过后文的离网操作。

为了让 Z3LightSoc 设备加入到网关所在的网络中，可以使用 `network leave` 命令使 Z3LightSoc 设备离开当前的网络：

```
Z3LightSoc>leave 0x00
Z3LightSoc>EMBER_NETWORK_DOWN
```

`EMBER_NETWORK_DOWN` 指示设备已离开网络。

在网关中使用 `plugin network-creator-security open-network` 命令可以开放网络 180 秒：

```
Z3GatewayHost>plugin network-creator-security open-network
NWK Creator Security: Open network: 0x00
Z3GatewayHost>Ezsp Policy: set Trust Center Policy to "Allow preconfigured key joins":Success: set
pJoin for 180 sec: 0x00
NWK Creator Security: Open network: 0x00
```

此时，在 Z3LightSoc 设备中使用 `plugin network-steering start 0` 命令，使其搜索可用网络并尝试加入到网络中：

```
Z3LightSoc>plugin network-steering start 0
NWK Steering State: Scan Primary Channels and use Install Code
Error: NWK Steering could not setup security: 0xB7
NWK Steering State: Scan Secondary Channels and use Install Code
Error: NWK Steering could not setup security: 0xB7
NWK Steering State: Scan Primary Channels and Use Centralized Key
Starting scan on channel 11
NWK Steering: Start: 0x00
Z3LightSoc>Starting scan on channel 14
Starting scan on channel 15
Starting scan on channel 19
Starting scan on channel 20
Starting scan on channel 24
Starting scan on channel 25
NWK Steering State: Scan Secondary Channels and Use Centralized Key
Starting scan on channel 13
Starting scan on channel 14
Starting scan on channel 15
Starting scan on channel 16
Starting scan on channel 17
Starting scan on channel 18
Starting scan on channel 19
Starting scan on channel 20
Starting scan on channel 21
Starting scan on channel 22
Starting scan on channel 23
Starting scan on channel 24
Starting scan on channel 25
Starting scan on channel 26
Starting scan on channel 11
Starting scan on channel 12
NWK Steering joining 0xABCD
EMBER_NETWORK_UP 0x028D
NWK Steering network joined.
Find and Bind Target: Start target: 0x00
Find and bind target start: 0x00
RX: ZDO, command 0x0013, status: 0x00
Device Announce: 0x028D
Update TC Link Key: Starting update trust center link key process: 0x00
RX: ZDO, command 0x8002, status: 0x00
RX: Node Desc Resp, Matches: 0x0000
Update TC Link Key: New key established: 0x03
Partner: AB B7 19 FE FF 9F FD 90 
NWK Steering: Trust center link key update status: 0x03
Update TC Link Key: New key established: 0x65
Partner: AB B7 19 FE FF 9F FD 90 
NWK Steering: Trust center link key update status: 0x65
pJoin for 180 sec: 0x00
NWK Steering: Broadcasting permit join: 0x00
NWK Steering Stop.  Cleaning up.
Join network complete: 0x00
```

可以看到，当设备搜索到 12 信道时，它发现了网关开放的网络，然后它尝试加入到网络中。由于使用的密钥符合要求，所以网关同意了设备的加入请求。在设备加入后，它还发出了一个更新链路密钥的请求，而网关同意了该请求并发送了新的链路密钥给设备。最后设备打印出了 `Join network complete: 0x00` 表示加入网络完成。

在设备加入网络的同时，网关的控制台也打印出了一些信息：

```
Z3GatewayHost>Trust Center Join Handler: status = UNsecured join, decision = use preconfigured key (00), shortid 0x028D
```

由于设备加入时使用的是一个公开密钥，所以这里显示 `status = UNsecured join` 表示设备是非安全的加入。`shortid 0x028D` 指示的是设备加入网络后所获得的网络短地址。

# 发送 ZCL 命令

示例应用 Z3LightSoc 在 endpoint 1 上提供了 on/off cluster 接口，通过该接口可以控制开发板底板上的 LED0。

在网关上填充 ZCL 命令：

```
Z3GatewayHost>zcl on-off toggle 
Msg: clus 0x0006, cmd 0x02, len 3
buffer: 01 02 02
```

使用 `send` 命令，将填充好的 ZCL 命令发送到 Z3LightSoc 上：

```
Z3GatewayHost>send 0x028D 1 1
Z3GatewayHost>T00004D07:RX len 5, ep 01, clus 0x0006 (On/off) FC 08 seq 02 cmd 0B payload[02 00 ]
```

观察到开发板底板上的 LED0 的状态发生了变化。

以下是上述两个命令的说明：

```
zcl on-off... - 
  off - Command description for Off
  offeffect - Command description for OffWithEffect
  on - Command description for On
  onrecall - Command description for OnWithRecallGlobalScene
  ontimedoff - Command description for OnWithTimedOff
  toggle - Command description for Toggle
```

```
send (args) 
   <uint16_t>  short id of the device to send the message to
   <uint8_t>  The endpoint to send the message from
   <uint8_t>  The endpoint to send the message to

 - Send a pre-buffered message from a given endpoint to an endpoint on a  ...
```
