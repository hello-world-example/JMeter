# 基础概念



## 测试分类



## 测试指标







## 测试指标项说明

- `min`、`max`、`avg`、`last`：调用时的最小、最大、平均、最近一次的响应时间（一般平均响应时间不应超过2s）

- `cnt` 总调用次数、请求数

- `tps` 平均每秒调用次数

- `bytes` 接口处理的字符数；

- `bps` 平均每秒接口处理的字符数、吞吐率

- `err` 报错次数；

- `rat` 报错次数/执行次数 错误率

具体的测试指标并没有强制的要求。对于不同的业务服务有不同的指标要求。单对于错误率要特别注意。

# 测试策略

## Simple Strategy

简单策略适合线性测试，确定服务的基本性能，验证有没有线程和资源锁问题。可以设置的参数为：测试持续时间/次数，线程数，测试延迟，随机延迟值。

## Variable Load Strategies

可变负载策略持续测试，更接近真实的服务流量变化,可以验证服务的稳定性发现潜在问题。

## Variance Strategy

可以指定区间时间内的压力变化差值。例如我们设置20个线程，间隔设置为60s，方差为0.8，线程数将在15s内从20增加到36，然后再减少到20. 45s后继续下降到4个线程，最后60s又回到初始值。

## Burst Strategy

可以设置峰值线程和峰值间隔和峰值持续时间来模拟突发流量情况。

## Thread Strategy

线程策略可以设置开始线程数和结束线程数。可以通过线程数的变化来确认服务可以承受的压力和出现错误的情况。长时间持续的测试可能发现隐藏的问题。

以上策略是soapUI中的内置策略，在测试过程中可以参考以上策略来做测试。





















































