# Bean Shell



## 内置变量



 JMeter 在 BeanShell 中内置了变量，用户可以通过这些变量与 JMeter 进行交互，其中主要的变量及其使用方法如下:

- log：写入信息到jmeber.log文件，使用方法：log.info(“This is log info!”);

- ctx：该变量引用了当前线程的上下文，使用方法可参考：org.apache.jmeter.threads.JMeterContext。

- vars - (JMeterVariables)：操作jmeter变量，这个变量实际引用了JMeter线程中的局部变量容器（本质上是Map），它是测试用例与BeanShell交互的桥梁，常用方法：
  - a) vars.get(String key)：从jmeter中获得变量值
  - b) vars.put(String key，String value)：数据存到jmeter变量中
  - 参考：`org.apache.jmeter.threads.JMeterVariables`
- props - (JMeterProperties - class java.util.Properties)：操作jmeter属性，该变量引用了JMeter的配置信息，可以获取Jmeter的属性，它的使用方法与vars类似，但是只能put进去String类型的值，而不能是一个对象。对应于java.util.Properties。
  - a) props.get("START.HMS");　　注：START.HMS为属性名，在文件jmeter.properties中定义
  - b) props.put("PROP1","1234"); 
- prev - (SampleResult)：获取前面的sample返回的信息，常用方法：
  - getResponseDataAsString()：获取响应信息
  - getResponseCode() ：获取响应code
  - 参考：`org.apache.jmeter.samplers.SampleResult`
- sampler - (Sampler)：gives access to the current sampler



## Read More

- [Jmeter 之 Bean shell 使用](https://www.cnblogs.com/puresoul/p/4915350.html)