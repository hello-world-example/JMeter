# 分布式测试



## 角色术语

<img src="https://jmeter.apache.org/images/screenshots/distributed-names.svg" style="zoom: 50%;" />

|      术语       | 别名   | 简介                                                         |
| :-------------: | ------ | ------------------------------------------------------------ |
| Controller Node | Client | JMeter GUI 用于给 Worker 节点发送指令                        |
|   Worker Node   | Server | 运行 **jmeter-server** 的机器，接收来自 Controller Node 的指令，压测 Target |
|     Target      |        | 被压测的 Web 服务                                            |



## 启动 Worker 节点

```bash
# [-s] server 模式
$ ./bin/jmeter -s \
	-Dserver_port=1099 \
	-Dserver.rmi.ssl.disable=true \
	-Djava.rmi.server.hostname=10.10.16.160 \
	-j jmeter-server.log
```



## 配置 Controller 节点

```bash
# 修改 jmeter 属性，修改 remote_hosts 为启动 worker 节点
$ vim ./bin/jmeter.properties
remote_hosts=10.10.16.160,10.10.16.161,10.10.16.162
```



### non-GUI 方式运行

```bash
# 启动所有远程节点
$ jmeter -n -r -t meta-data.jmx -l log.jtl
```



### GUI 方式运行

> - 菜单 》 Run 》Remote Start All
> - 菜单 》 Run 》Remote Start 》 指定 Node



## 相关参数

| 参数                                        | 限制      |                                                         |
| ------------------------------------------- | --------- | ------------------------------------------------------- |
| `-s, --server`                              |           | 以 Server 形式运行                                      |
|                                             |           |                                                         |
| `-r, --runremote`                           | `non-GUI` | 启动 `remote_hosts` 配置的所有远程 Server               |
| `-R, --remotestart server1,…`               | `non-GUI` | 启动指定的 Server，此时 `remote_hosts` 和 -r 都无效     |
| `-X, --remoteexit`                          | `non-GUI` | 退出远程 Server                                         |
|                                             |           |                                                         |
| `-J, --jmeterproperty {argument}={value}`   |           | JMeter 本地属性，使用 `${__P(argument)}` 获取           |
| `-G, --globalproperty (argument)[=(value)]` |           | 发送给 Server 的全局属性，开启了远程服务，需要用到 `-G` |



## FAQ

### Cannot start. localhost is a loopback address.

> 指定 `-Djava.rmi.server.hostname=10.10.16.160`



### FileNotFoundException: rmi_keystore.jks

> 指定： `-Dserver.rmi.ssl.disable=true`





## Read More

- [25. Apache JMeter Distributed Testing Step-by-step](https://jmeter.apache.org/usermanual/jmeter_distributed_testing_step_by_step.html)
- [JMeter 分布式集群](https://www.cnblogs.com/mawenqiangios/p/8608890.html)