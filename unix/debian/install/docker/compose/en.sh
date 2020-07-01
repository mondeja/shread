#!/bin/bash
_SCRIPT_FILENAME="$(basename "$0")" source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19VUkw9IlVSTCIKX01TR19FUlJPUj0iRXJyb3IiCl9NU0dfRVJST1JfQ09ERT0iRXJyb3IgY29kZSIKX01TR19OT1RfRk9VTkQ9Ik5vdCBmb3VuZCIKX01TR19DSEVDS0lOR19ET0NLRVJfQ09NUE9TRT0iQ2hlY2tpbmcgRG9ja2VyIENvbXBvc2UiCl9NU0dfRVJST1JfUkVUUklFVklOR19ET0NLRVJfQ09NUE9TRV9SRUxFQVNFUz0iQW4gZXJyb3IgaGFwcGVuIHJldHJpZXZpbmcgRG9ja2VyIENvbXBvc2UgcmVsZWFzZXMgaW5mbyBmcm9tIEdpdGh1YiBBUEkuIgpfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfVkVSU0lPTj0iQW4gZXJyb3IgaGFwcGVuIHBhcnNpbmcgdGhlIHBlbnVsdGltYXRlIERvY2tlciBDb21wb3NlIHJlbGVhc2VzIHZlcnNpb24gZnJvbSBHaXRodWIgQVBJLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTj0iQW4gZXJyb3IgaGFwcGVuIHJldHJpZXZpbmcgbGFzdCBEb2NrZXIgQ29tcG9zZSB2ZXJzaW9uIGZyb20gR2l0aHViIEFQSS4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhc3QgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfRVJST1JfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0U9IkFuIGVycm9yIGhhcHBlbiBkb3dubG9hZGluZyBEb2NrZXIgQ29tcG9zZSIKX01TR19ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRT0iRG93bmxvYWRpbmcgRG9ja2VyIENvbXBvc2UiCl9NU0dfRE9DS0VSX0NPTVBPU0VfRk9VTkRfSU5TVEFMTEVEPSJEb2NrZXIgQ29tcG9zZSBmb3VuZCBpbnN0YWxsZWQgaW4gdGhlIHN5c3RlbSIKX01TR19VUERBVElOR19ET0NLRVJfQ09NUE9TRT0iVXBkYXRpbmcgRG9ja2VyIENvbXBvc2UiCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7CklOREVOVF9TVFJJTkc9IiIKR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiIKaWYgWyAtbiAiJEdJVEhVQl9VU0VSTkFNRSIgXSAmJiBbIC1uICIkR0lUSFVCX1RPS0VOIiBdOyB0aGVuCiAgR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiRHSVRIVUJfVVNFUk5BTUU6JEdJVEhVQl9UT0tFTiIKZmk7CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KcHJpbnRJbmRlbnQKcHJpbnRmICIlcy4uLlxuIiAiJF9NU0dfQ0hFQ0tJTkdfRE9DS0VSX0NPTVBPU0UiCmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbICIkX1NDUklQVF9GSUxFTkFNRSIgPSAibWFpbi5zaCIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7CklOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICJjdXJsIgogICJqcSIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIHBhY21hbiAtUyAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lCl9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9JTkRFWD0xCl9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl80MDRfQVRURU1QVFM9MApfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fNDA0X01BWF9BVFRFTVBUUz0xMApmdW5jdGlvbiBjaGVja0RvY2tlckNvbXBvc2VWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cygpIHsKICBfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMPSJodHRwczovL2dpdGh1Yi5jb20vZG9ja2VyL2NvbXBvc2UvcmVsZWFzZXMvZG93bmxvYWQvdiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OL2RvY2tlci1jb21wb3NlLSQodW5hbWUgLXMpLSQodW5hbWUgLW0pIgogIF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkxfRVhJU1RTPTAKICBpZiBjdXJsIC0tb3V0cHV0IC9kZXYvbnVsbCAtLXNpbGVudCAtLWhlYWQgLS1mYWlsICIkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTCI7IHRoZW4KICAgIF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkxfRVhJU1RTPTEKICBmaTsKfQpfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTPTAKX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9NQVhfQVRURU1QVFM9NQpfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX1VSTD0iaHR0cHM6Ly9hcGkuZ2l0aHViLmNvbS9yZXBvcy9kb2NrZXIvY29tcG9zZS9yZWxlYXNlcyIKZnVuY3Rpb24gZ2V0RG9ja2VyQ29tcG9zZUxhdGVzdFZlcnNpb24oKSB7CiAgX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk89IiQoY3VybCAtc0wgIiRHSVRIVUJfQVBJX0NVUkxfQVVUSCIgIiRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX1VSTCIgMj4mMSkiCiAgX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk9fTUVTU0FHRT0iJChlY2hvICIkX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk8iIHwganEgLXIgJy5tZXNzYWdlJyAyPiYxKSIKICBfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFIC1lcSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPX01FU1NBR0UiID4mMgogICAgZXhpdCAkX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUKICBmaTsKICBfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OPSQoCiAgICBlY2hvICIkX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk8iIHwgXAogICAganEgLXIgIi5bJF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9JTkRFWF0ubmFtZSIgMj4mMQogICkKICBfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9QQVJTSU5HX1BFTlVMVElNQVRFX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX1ZFUlNJT04iID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgZXhpdCAkX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUKICBmaTsKICBfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OPSIkKGVjaG8gIiRfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIiB8IGN1dCAtZCd2JyAtZjIgMj4mMSkiCiAgX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREU9JD8KICBpZiBbICRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAoKCBfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTKysgKSkKICAgIGlmIFsgJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fQVRURU1QVFMgLWdlICRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUyBdOyB0aGVuCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludCAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgICBleGl0ICRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogICAgZWxzZQogICAgICBnZXREb2NrZXJDb21wb3NlTGF0ZXN0VmVyc2lvbgogICAgZmk7CiAgZmk7CiAgY2hlY2tEb2NrZXJDb21wb3NlVmVyc2lvblRvRG93bmxvYWRFeGlzdHMKICBpZiBbICRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMX0VYSVNUUyAtbmUgMSBdOyB0aGVuCiAgICAoKCBfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fNDA0X0FUVEVNUFRTKysgKSkKICAgICgoIF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9JTkRFWCsrICkpCiAgICBnZXREb2NrZXJDb21wb3NlTGF0ZXN0VmVyc2lvbgogIGVsc2UKICAgIHByaW50ZiAiICh2JXMpIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iCiAgZmk7Cn0KcHJpbnRJbmRlbnQKcHJpbnRmICIgICVzIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OIgpnZXREb2NrZXJDb21wb3NlTGF0ZXN0VmVyc2lvbgpfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEg9IiQoY29tbWFuZCAtdiBkb2NrZXItY29tcG9zZSkiCl9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSF9FWElUX0NPREU9JD8KaWYgWyAkX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRIX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRIPSIiCmZpOwpmdW5jdGlvbiBkb3dubG9hZERvY2tlckNvbXBvc2UoKSB7CiAgX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL2RvY2tlci9jb21wb3NlL3JlbGVhc2VzL2Rvd25sb2FkL3YkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTi9kb2NrZXItY29tcG9zZS0kKHVuYW1lIC1zKS0kKHVuYW1lIC1tKSIKICBfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfT1VUUFVUPSIkKHN1ZG8gY3VybCAtc0wgIiRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMIiAtbyAiJDEiIDI+JjEpIgogIF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9FWElUX0NPREU9JD8KICBpZiAgWyAkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyAodiVzKVxuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0UiICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9PVVRQVVQiID4mMgogICAgZXhpdCAkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX0VYSVRfQ09ERQogIGZpOwogIF9ET0NLRVJfQ09NUE9TRV9CSU5BUllfQ09OVEVOVD0kKHN1ZG8gY2F0ICIkMSIgfCB0ciAtZCAnXDAnKQogIGlmIFsgIiRfRE9DS0VSX0NPTVBPU0VfQklOQVJZX0NPTlRFTlQiID0gIk5vdCBGb3VuZCIgXTsgdGhlbgogICAgaWYgWyAkX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OXzQwNF9BVFRFTVBUUyAtZ2UgJF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJDEiCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIlxuJXMgKHYlcylcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX0RPQ0tFUl9DT01QT1NFIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiA0MDRcbiIgIiRfTVNHX0VSUk9SX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0RPQ0tFUl9DT01QT1NFX0JJTkFSWV9DT05URU5UIiA+JjIKICAgICAgZXhpdCAxCiAgICBlbHNlCiAgICAgIHByaW50ZiAiICglcykgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iICIkX01TR19OT1RfRk9VTkQiCiAgICAgICgoIF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl80MDRfQVRURU1QVFMrKyApKQogICAgICAoKCBfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fSU5ERVgrKyApKQogICAgICBnZXREb2NrZXJDb21wb3NlTGF0ZXN0VmVyc2lvbgogICAgICBkb3dubG9hZERvY2tlckNvbXBvc2UgIiQxIgogICAgZmk7CiAgZmk7CiAgc3VkbyBjaG1vZCAreCAiJDEiCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KaWYgWyAiJF9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSCIgPSAiIiBdOyB0aGVuCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRSIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIgogIGRvd25sb2FkRG9ja2VyQ29tcG9zZSAvdXNyL2xvY2FsL2Jpbi9kb2NrZXItY29tcG9zZQplbHNlCiAgX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fT1VUUFVUPSIkKGRvY2tlci1jb21wb3NlIC0tdmVyc2lvbikiCiAgX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fT1VUUFVUX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX09VVFBVVF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgc3VkbyBybSAtZiAiJChjb21tYW5kIC12IGRvY2tlci1jb21wb3NlKSIKICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRSIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIgogICAgZG93bmxvYWREb2NrZXJDb21wb3NlIC91c3IvbG9jYWwvYmluL2RvY2tlci1jb21wb3NlCiAgZWxzZQogICAgX0RPQ0tFUl9DT01QT1NFX0lOU1RBTExFRF9WRVJTSU9OPSIkKGVjaG8gIiRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9PVVRQVVQiIHwgY3V0IC1jMjQtMjkpIgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0RPQ0tFUl9DT01QT1NFX0ZPVU5EX0lOU1RBTExFRCIgIiRfRE9DS0VSX0NPTVBPU0VfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGlmIFsgIiRfRE9DS0VSX0NPTVBPU0VfSU5TVEFMTEVEX1ZFUlNJT04iICE9ICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIgXTsgdGhlbgogICAgICBwcmludEluZGVudAogICAgICBwcmludGYgIiAgJXMgKHYlcyIgIiRfTVNHX1VQREFUSU5HX0RPQ0tFUl9DT01QT1NFIiAiJF9ET0NLRVJfQ09NUE9TRV9JTlNUQUxMRURfVkVSU0lPTiIKICAgICAgcHJpbnRmICIgLT4gdiVzKS4uLiIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIgogICAgICBzdWRvIHJtIC1mICRfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEgKICAgICAgZG93bmxvYWREb2NrZXJDb21wb3NlICRfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEgKICAgIGZpOwogIGZpOwpmaTsK' | base64 -d)
