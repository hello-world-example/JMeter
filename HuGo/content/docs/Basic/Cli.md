# JMeter Cli






## 非 gui 模式运行

``` bash
$ ./bin/jmeter -n -t [jmx file] -l [results file] -e -o [Path to web report folder]
```



## 参数

| 参数                             | Mark |                                |      |
| -------------------------------- | :--: | ------------------------------ | ---- |
| `-h`                             |      | 使用帮助                       |      |
|                                  |      |                                |      |
| `-n`                             |  ❤   | 非 GUI 方式运行脚本            |      |
| `-t [jmx file]`                  |  ❤   | jmx 测试计划文件               |      |
| `-l [results file]`              |      | 测试结果 jtl 文件              |      |
| `-p [conf.properties]`           |  ❤   | 自定义配置文件                 |      |
|                                  |      |                                |      |
| `-e`                             |  ❤   | 测试结束后，生成 HTML 测试报告 |      |
| `-o [Path to web report folder]` |      | HTML 测试报告 的存放位置       |      |
| `-g [jtl file]`                  |      | 根据 jtl 文件生成 HTML 报告    |      |
|                                  |      |                                |      |
| `-j [log file]`                  |      | 日志文件                       |      |
| `-r`                             |      |                                |      |



## 示例

```bash
$ ./bin/jmeter.sh -h

...

--------------------------------------------------

To run Apache JMeter in GUI mode, open a command prompt and type:

jmeter.bat(Windows)/jmeter.sh(Linux) [-p property-file]

--------------------------------------------------

To run Apache JMeter in NON_GUI mode:

jmeter.bat(Windows)/jmeter.sh(Linux) -n -t test-file [-p property-file] [-l results-file] [-j log-file]

--------------------------------------------------

To run Apache JMeter in NON_GUI mode and generate a report at end :

jmeter.bat(Windows)/jmeter.sh(Linux) -n -t test-file [-p property-file] [-l results-file] [-j log-file] -e -o [Path to output folder]

--------------------------------------------------
To generate a Report from existing CSV file:

jmeter.bat(Windows)/jmeter.sh(Linux) -g [csv results file] -o [path to output folder (empty or not existing)]

--------------------------------------------------

To tell Apache JMeter to use a proxy server:

jmeter.bat(Windows)/jmeter.sh(Linux) -H [your.proxy.server] -P [your proxy server port]
```



## Read More

- [1.4 Running JMeter](https://jmeter.apache.org/usermanual/get-started.html#running)
  - [1.4.4 CLI Mode (Command Line mode was called NON GUI mode)](https://jmeter.apache.org/usermanual/get-started.html#non_gui)
  - 