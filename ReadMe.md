
[![Build status](https://ci.appveyor.com/api/projects/status/bpx32xvwubh2dm72?svg=true)](https://ci.appveyor.com/project/sanjusss/besttrace)
[![](https://img.shields.io/docker/stars/sanjusss/besttrace.svg?logo=docker)](https://hub.docker.com/r/sanjusss/besttrace)
[![GitHub license](https://img.shields.io/github/license/sanjusss/besttrace.svg)](https://github.com/sanjusss/besttrace/blob/master/LICENSE)  
[![GitHub tag](https://img.shields.io/github/tag/sanjusss/besttrace.svg)](https://github.com/sanjusss/besttrace/tags)
[![GitHub issues](https://img.shields.io/github/issues/sanjusss/besttrace.svg)](https://github.com/sanjusss/besttrace/issues)

# besttrace

发起 traceroute 请求，附带链路可视化，兼容性更好，支持 JSON 格式输出。  
[官方网站](https://www.ipip.net/product/client.html#besttrace)

## 使用方法

##### 查看帮助
```bash
docker run -it --rm sanjusss/besttrace -h
```

##### 查询到baidu.com的链路
```bash
docker run -it --rm sanjusss/besttrace baidu.com
```

##### 中文显示到baidu.com的链路
```bash
docker run -it --rm sanjusss/besttrace baidu.com -g cn
```

##### 查询到google.com的IPv6链路
```bash
docker run -it --rm sanjusss/besttrace google.com -6
```