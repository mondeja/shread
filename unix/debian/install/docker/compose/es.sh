#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCiMhL2Jpbi9iYXNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19VUkw9IlVSTCIKX01TR19FUlJPUj0iRXJyb3IiCl9NU0dfRVJST1JfQ09ERT0iQ8OzZGlnbyBkZSBlcnJvciIKX01TR19OT1RfRk9VTkQ9Ik5vIGVuY29udHJhZG8iCl9NU0dfQ0hFQ0tJTkdfRE9DS0VSX0NPTVBPU0U9IiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIGluZm9ybWFjacOzbiBkZSBsYXMgcmVsZWFzZXMgZGUgRG9ja2VyIGRlIGxhIEFQSSBkZSBHaXRodWIuIgpfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfVkVSU0lPTj0iT2N1cnJpw7MgdW4gZXJyb3IgcGFyc2VhbmRvIGxhIHBlbsO6bHRpbWEgdmVyc2nDs24gZGUgbGFzIHJlbGVhc2VzIGRlIERvY2tlciBDb21wb3NlIGRlIGxhIEFQSSBkZSBHaXRodWIuIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfTEFTVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZGUgRG9ja2VyIENvbXBvc2UgZGUgbGEgQVBJIGRlIEdpdGh1Yi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OPSJPYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZGlzcG9uaWJsZS4uLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRT0iT2N1cnJpw7MgdW4gZXJyb3IgZGVzY2FyZ2FuZG8gRG9ja2VyIENvbXBvc2UiCl9NU0dfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0U9IkRlc2NhcmdhbmRvIERvY2tlciBDb21wb3NlIgpfTVNHX0RPQ0tFUl9DT01QT1NFX0ZPVU5EX0lOU1RBTExFRD0iRW5jb250cmFkbyBEb2NrZXIgQ29tcG9zZSBpbnN0YWxhZG8gZW4gZWwgc2lzdGVtYSIKX01TR19VUERBVElOR19ET0NLRVJfQ09NUE9TRT0iQWN0dWFsaXphbmRvIERvY2tlciBDb21wb3NlIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCkdJVEhVQl9BUElfQ1VSTF9BVVRIPSIiCmlmIFsgLW4gIiRHSVRIVUJfVVNFUk5BTUUiIF0gJiYgWyAtbiAiJEdJVEhVQl9UT0tFTiIgXTsgdGhlbgogIEdJVEhVQl9BUElfQ1VSTF9BVVRIPSIkR0lUSFVCX1VTRVJOQU1FOiRHSVRIVUJfVE9LRU4iCmZpOwpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CnByaW50SW5kZW50CnByaW50ZiAiJXMuLi5cbiIgIiRfTVNHX0NIRUNLSU5HX0RPQ0tFUl9DT01QT1NFIgppZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgaWYgWyAteiAiJF9TQ1JJUFRfRklMRU5BTUUiIF07IHRoZW4KICAgIGZpbGVwYXRoPSJzcmMvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC9tYWluLnNoIgogICAgYmFzaCAiJGZpbGVwYXRoIiA+IC9kZXYvbnVsbAogIGVsc2UKICAgIHVybD0iaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC8kX1NDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7CmZpOwpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAianEiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBwYWNtYW4gLVMgLS0gLXkgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKZG9uZQpfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fSU5ERVg9MQpfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fNDA0X0FUVEVNUFRTPTAKX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFM9MTAKZnVuY3Rpb24gY2hlY2tEb2NrZXJDb21wb3NlVmVyc2lvblRvRG93bmxvYWRFeGlzdHMoKSB7CiAgX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL2RvY2tlci9jb21wb3NlL3JlbGVhc2VzL2Rvd25sb2FkL3YkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTi9kb2NrZXItY29tcG9zZS0kKHVuYW1lIC1zKS0kKHVuYW1lIC1tKSIKICBfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMX0VYSVNUUz0wCiAgaWYgY3VybCAtLW91dHB1dCAvZGV2L251bGwgLS1zaWxlbnQgLS1oZWFkIC0tZmFpbCAiJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkwiOyB0aGVuCiAgICBfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMX0VYSVNUUz0xCiAgZmk7Cn0KX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUz0wCl9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fTUFYX0FUVEVNUFRTPTUKX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9VUkw9Imh0dHBzOi8vYXBpLmdpdGh1Yi5jb20vcmVwb3MvZG9ja2VyL2NvbXBvc2UvcmVsZWFzZXMiCmZ1bmN0aW9uIGdldERvY2tlckNvbXBvc2VMYXRlc3RWZXJzaW9uKCkgewogIF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPPSIkKGN1cmwgLXNMICIkR0lUSFVCX0FQSV9DVVJMX0FVVEgiICIkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9VUkwiIDI+JjEpIgogIF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPX01FU1NBR0U9IiQoZWNobyAiJF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPIiB8IGpxIC1yICcubWVzc2FnZScgMj4mMSkiCiAgX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREU9JD8KICBpZiBbICRfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERSAtZXEgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19ET0NLRVJfQ09NUE9TRV9SRUxFQVNFUyIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GT19NRVNTQUdFIiA+JjIKICAgIGV4aXQgJF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFCiAgZmk7CiAgX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTj0kKAogICAgZWNobyAiJF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPIiB8IFwKICAgIGpxIC1yICIuWyRfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fSU5ERVhdLm5hbWUiIDI+JjEKICApCiAgX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREU9JD8KICBpZiBbICRfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUEFSU0lOR19QRU5VTFRJTUFURV9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgcHJpbnRmICIlczogJXMiICIkX01TR19FUlJPUiIgIiRfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIGV4aXQgJF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFCiAgZmk7CiAgX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTj0iJChlY2hvICIkX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIgfCBjdXQgLWQndicgLWYyIDI+JjEpIgogIF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgKCggX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUysrICkpCiAgICBpZiBbICRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTIC1nZSAkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnQgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfTEFTVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXMiICIkX01TR19FUlJPUiIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgZXhpdCAkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUKICAgIGVsc2UKICAgICAgZ2V0RG9ja2VyQ29tcG9zZUxhdGVzdFZlcnNpb24KICAgIGZpOwogIGZpOwogIGNoZWNrRG9ja2VyQ29tcG9zZVZlcnNpb25Ub0Rvd25sb2FkRXhpc3RzCiAgaWYgWyAkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTF9FWElTVFMgLW5lIDEgXTsgdGhlbgogICAgKCggX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAoKCBfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fSU5ERVgrKyApKQogICAgZ2V0RG9ja2VyQ29tcG9zZUxhdGVzdFZlcnNpb24KICBlbHNlCiAgICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIgogIGZpOwp9CnByaW50SW5kZW50CnByaW50ZiAiICAlcyIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfTEFTVF9BVkFJTEFCTEVfVkVSU0lPTiIKZ2V0RG9ja2VyQ29tcG9zZUxhdGVzdFZlcnNpb24KX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgZG9ja2VyLWNvbXBvc2UpIgpfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEhfRVhJVF9DT0RFPSQ/CmlmIFsgJF9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogIF9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSD0iIgpmaTsKZnVuY3Rpb24gZG93bmxvYWREb2NrZXJDb21wb3NlKCkgewogIF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9kb2NrZXIvY29tcG9zZS9yZWxlYXNlcy9kb3dubG9hZC92JF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04vZG9ja2VyLWNvbXBvc2UtJCh1bmFtZSAtcyktJCh1bmFtZSAtbSkiCiAgX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX09VVFBVVD0iJChzdWRvIGN1cmwgLXNMICIkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTCIgLW8gIiQxIiAyPiYxKSIKICBfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfRVhJVF9DT0RFPSQ/CiAgaWYgIFsgJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMgKHYlcylcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX0RPQ0tFUl9DT01QT1NFIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfT1VUUFVUIiA+JjIKICAgIGV4aXQgJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9FWElUX0NPREUKICBmaTsKICBfRE9DS0VSX0NPTVBPU0VfQklOQVJZX0NPTlRFTlQ9JChzdWRvIGNhdCAiJDEiIHwgdHIgLWQgJ1wwJykKICBpZiBbICIkX0RPQ0tFUl9DT01QT1NFX0JJTkFSWV9DT05URU5UIiA9ICJOb3QgRm91bmQiIF07IHRoZW4KICAgIGlmIFsgJF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl80MDRfQVRURU1QVFMgLWdlICRfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fNDA0X01BWF9BVFRFTVBUUyBdOyB0aGVuCiAgICAgIHN1ZG8gcm0gLWYgIiQxIgogICAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICJcbiVzICh2JXMpXG4iICIkX01TR19FUlJPUl9ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRSIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMIiA+JjIKICAgICAgcHJpbnRmICIlczogNDA0XG4iICIkX01TR19FUlJPUl9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET0NLRVJfQ09NUE9TRV9CSU5BUllfQ09OVEVOVCIgPiYyCiAgICAgIGV4aXQgMQogICAgZWxzZQogICAgICBwcmludGYgIiAoJXMpIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiAiJF9NU0dfTk9UX0ZPVU5EIgogICAgICAoKCBfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fNDA0X0FUVEVNUFRTKysgKSkKICAgICAgKCggX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX0lOREVYKysgKSkKICAgICAgZ2V0RG9ja2VyQ29tcG9zZUxhdGVzdFZlcnNpb24KICAgICAgZG93bmxvYWREb2NrZXJDb21wb3NlICIkMSIKICAgIGZpOwogIGZpOwogIHN1ZG8gY2htb2QgK3ggIiQxIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmlmIFsgIiRfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0UiICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIKICBkb3dubG9hZERvY2tlckNvbXBvc2UgL3Vzci9sb2NhbC9iaW4vZG9ja2VyLWNvbXBvc2UKZWxzZQogIF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX09VVFBVVD0iJChkb2NrZXItY29tcG9zZSAtLXZlcnNpb24pIgogIF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX09VVFBVVF9FWElUX0NPREU9JD8KICBpZiBbICRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9PVVRQVVRfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHN1ZG8gcm0gLWYgIiQoY29tbWFuZCAtdiBkb2NrZXItY29tcG9zZSkiCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0UiICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIKICAgIGRvd25sb2FkRG9ja2VyQ29tcG9zZSAvdXNyL2xvY2FsL2Jpbi9kb2NrZXItY29tcG9zZQogIGVsc2UKICAgIF9ET0NLRVJfQ09NUE9TRV9JTlNUQUxMRURfVkVSU0lPTj0iJChlY2hvICIkX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fT1VUUFVUIiB8IGN1dCAtYzI0LTI5KSIKICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19ET0NLRVJfQ09NUE9TRV9GT1VORF9JTlNUQUxMRUQiICIkX0RPQ0tFUl9DT01QT1NFX0lOU1RBTExFRF9WRVJTSU9OIgogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgICBpZiBbICIkX0RPQ0tFUl9DT01QT1NFX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iIF07IHRoZW4KICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIgICVzICh2JXMiICIkX01TR19VUERBVElOR19ET0NLRVJfQ09NUE9TRSIgIiRfRE9DS0VSX0NPTVBPU0VfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgIHByaW50ZiAiIC0+IHYlcykuLi4iICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIKICAgICAgc3VkbyBybSAtZiAkX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRICiAgICAgIGRvd25sb2FkRG9ja2VyQ29tcG9zZSAkX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRICiAgICBmaTsKICBmaTsKZmk7'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
