#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX1VSTD0iVVJMIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FUlJPUl9DT0RFPSJDw7NkaWdvIGRlIGVycm9yIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfU0hVTklUX1JFTEVBU0VTX0lORk89Ik9jdXJyacOzIHVuIGVycm9yIG9idGVuaWVuZG8gbGEgaW5mb3JtYWNpw7NuIGRlIGxhcyByZWxlYXNlcyBkZSBzaHVuaXQyIGRlIGxhIEFQSSBkZSBHaXRodWIuIgpfTVNHX0NIRUNLSU5HX1NIVU5JVD0iQ29tcHJvYmFuZG8gc2h1bml0Mi4uLiIKX01TR19SRVRSSUVWSU5HX1NIVU5JVF9MQVNURVNUX1ZFUlNJT049Ik9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzaW9uLi4uIgpfTVNHX0VSUk9SX1BBUlNJTkdfTEFTVEVTVF9TSFVOSVRfUkVMRUFTRT0iT2N1cnJpw7MgdW4gZXJyb3IgcGFyc2VhbmRvIGxhIHZlcnNpw7NuIGRlIGxhIMO6bHRpbWEgcmVsZWFzZSBkZSBzaHVuaXQyIGRlIGxhIEFQSSBkZSBHaXRodWIuIgpfTVNHX0RPV05MT0FESU5HX1NIVU5JVD0iRGVzY2FyZ2FuZG8gc2h1bml0MiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19TSFVOSVQ9Ik9jdXJyacOzIHVuIGVycm9yIGRlc2NhcmdhbmRvIHNodW5pdDIiCl9NU0dfVU5aSVBQSU5HX1NIVU5JVD0iRGVzY29tcHJpbWllbmRvIgpfTVNHX0RFU1RfRVhJU1RTPSJFbCBhcmNoaXZvIGRlIGRlc3Rpbm8geWEgZXhpc3RlIgpfTVNHX0lORElDQVRFX0FOT1RIRVJfREVTVF9XSVRIX1BBUkFNPSJJbmRpY2Egb3RybyBkZXN0aW5vIHBhcmEgc2h1bml0MiBjb24gZWwgcGFyw6FtZXRybyIKSU5ERU5UX1NUUklORz0iIgpfREVTVF9QQVRIPSIkUFdEL3NodW5pdDIiCkdJVEhVQl9BUElfQ1VSTF9BVVRIPSIiCmlmIFsgLW4gIiRHSVRIVUJfVVNFUk5BTUUiIF0gJiYgWyAtbiAiJEdJVEhVQl9UT0tFTiIgXTsgdGhlbgogIEdJVEhVQl9BUElfQ1VSTF9BVVRIPSIkR0lUSFVCX1VTRVJOQU1FOiRHSVRIVUJfVE9LRU4iCmZpOwpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC0tZGVzdC1wYXRoKQogICAgc2hpZnQKICAgIF9ERVNUX1BBVEg9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpfREVTVF9ESVJQQVRIPSIkKGRpcm5hbWUgIiRfREVTVF9QQVRIIikiCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiY3VybCIKICAianEiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQoc3VkbyBkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lOwpfR0VUX1NIVU5JVF9SRUxFQVNFU19VUkw9aHR0cHM6Ly9hcGkuZ2l0aHViLmNvbS9yZXBvcy9rd2FyZC9zaHVuaXQyL3JlbGVhc2VzCmZ1bmN0aW9uIGdldFNodW5pdExhc3Rlc3RWZXJzaW9uKCkgewogIF9TSFVOSVRfUkVMRUFTRVNfSU5GTz0iJChjdXJsIC1zTCAiJEdJVEhVQl9BUElfQ1VSTF9BVVRIIiAiJF9HRVRfU0hVTklUX1JFTEVBU0VTX1VSTCIgMj4mMSkiCiAgX1NIVU5JVF9SRUxFQVNFU19JTkZPX01FU1NBR0U9IiQoZWNobyAiJF9TSFVOSVRfUkVMRUFTRVNfSU5GTyIgfCBqcSAtciAnLm1lc3NhZ2UnIDI+JjEpIgogIF9TSFVOSVRfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9TSFVOSVRfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERSAtZXEgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19TSFVOSVRfUkVMRUFTRVNfSU5GTyIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfU0hVTklUX1JFTEVBU0VTX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX1NIVU5JVF9SRUxFQVNFU19JTkZPX01FU1NBR0UiID4mMgogICAgZXhpdCAkX1NIVU5JVF9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFCiAgZmk7CiAgX1BBUlNFX1NIVU5JVF9MQVNURVNUX1ZFUlNJT049JCgKICAgIGVjaG8gIiRfU0hVTklUX1JFTEVBU0VTX0lORk8iIHwgXAogICAganEgLXIgIi5bMF0ubmFtZSIgMj4mMQogICkKICBfUEFSU0VfU0hVTklUX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREU9JD8KICBpZiBbICRfUEFSU0VfU0hVTklUX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1BBUlNJTkdfTEFTVEVTVF9TSFVOSVRfUkVMRUFTRSIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfU0hVTklUX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlZFxuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfUEFSU0VfU0hVTklUX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgcHJpbnRmICIlczogJXMiICIkX01TR19FUlJPUiIgIiRfUEFSU0VfU0hVTklUX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBleGl0ICRfUEFSU0VfU0hVTklUX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUKICBmaTsKICBfU0hVTklUX0xBU1RFU1RfVkVSU0lPTj0iJChwcmludGYgIiVzIiAiJF9QQVJTRV9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIiB8IGN1dCAtZCcgJyAtZjIpIgp9CmZ1bmN0aW9uIGRvd25sb2FkU2h1bml0KCkgewogIF9ET1dOTE9BRF9TSFVOSVRfVVJMPSJodHRwczovL2dpdGh1Yi5jb20va3dhcmQvc2h1bml0Mi9hcmNoaXZlL3YkMS50YXIuZ3oiCiAgX0RPV05MT0FEX1NIVU5JVF9PVVRQVVQ9IiQoY3VybCAtc0wgIiRfRE9XTkxPQURfU0hVTklUX1VSTCIgLW8gIiQyIiAyPiYxKSIKICBfRE9XTkxPQURfU0hVTklUX0VYSVRfQ09ERT0kPwogIGlmICBbICRfRE9XTkxPQURfU0hVTklUX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyB2JXNcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX1NIVU5JVCIgIiRfU0hVTklUX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9TSFVOSVRfVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9XTkxPQURfU0hVTklUX09VVFBVVCIgPiYyCiAgICBleGl0ICRfRE9XTkxPQURfU0hVTklUX0VYSVRfQ09ERQogIGZpOwp9CmZ1bmN0aW9uIG1haW4oKSB7CiAgaWYgWyAtZiAiJF9ERVNUX1BBVEgiIF0gfHwgWyAtZCAiJF9ERVNUX1BBVEgiIF07IHRoZW4KICAgIHByaW50ZiAiJXMgKCVzKVxuIiAiJF9NU0dfREVTVF9FWElTVFMiICIkX0RFU1RfUEFUSCIgPiYyCiAgICBwcmludGYgIiVzICctLWRlc3QtcGF0aCcuXG4iICIkX01TR19JTkRJQ0FURV9BTk9USEVSX0RFU1RfV0lUSF9QQVJBTSIgPiYyCiAgICBleGl0IDEKICBmaTsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1NIVU5JVCIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyIgIiRfTVNHX1JFVFJJRVZJTkdfU0hVTklUX0xBU1RFU1RfVkVSU0lPTiIKICBnZXRTaHVuaXRMYXN0ZXN0VmVyc2lvbgogIHByaW50ZiAiICh2JXMpIiAiJF9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRE9XTkxPQURJTkdfU0hVTklUIiAiJF9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIgogIGRvd25sb2FkU2h1bml0ICIkX1NIVU5JVF9MQVNURVNUX1ZFUlNJT04iICIkX0RFU1RfRElSUEFUSC9zaHVuaXQyLnRhci5neiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyIgIiRfTVNHX1VOWklQUElOR19TSFVOSVQiCiAgdGFyIHh6ZiAiJF9ERVNUX0RJUlBBVEgvc2h1bml0Mi50YXIuZ3oiIC1DICIkX0RFU1RfRElSUEFUSCIgfHwgZXhpdCAkPwogIG12ICIkX0RFU1RfRElSUEFUSC9zaHVuaXQyLSRfU0hVTklUX0xBU1RFU1RfVkVSU0lPTi9zaHVuaXQyIiAiJF9ERVNUX1BBVEgiCiAgcm0gLXJmICIkX0RFU1RfRElSUEFUSC9zaHVuaXQyLSRfU0hVTklUX0xBU1RFU1RfVkVSU0lPTiIKICBybSAtZiAiJF9ERVNUX0RJUlBBVEgvc2h1bml0Mi50YXIuZ3oiCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KISAocmV0dXJuIDAgMj4vZGV2L251bGwpICYmIG1haW4K' | base64 -d)
