#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19VUkw9IlVSTCIKX01TR19FUlJPUj0iRXJyb3IiCl9NU0dfRVJST1JfQ09ERT0iRXJyb3IgY29kZSIKX01TR19OT1RfRk9VTkQ9Ik5vdCBmb3VuZCIKX01TR19DSEVDS0lOR19ET0NLRVJfQ09NUE9TRT0iQ2hlY2tpbmcgRG9ja2VyIENvbXBvc2UiCl9NU0dfRVJST1JfUkVUUklFVklOR19ET0NLRVJfQ09NUE9TRV9SRUxFQVNFUz0iQW4gZXJyb3IgaGFwcGVuIHJldHJpZXZpbmcgRG9ja2VyIENvbXBvc2UgcmVsZWFzZXMgaW5mbyBmcm9tIEdpdGh1YiBBUEkuIgpfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfVkVSU0lPTj0iQW4gZXJyb3IgaGFwcGVuIHBhcnNpbmcgdGhlIHBlbnVsdGltYXRlIERvY2tlciBDb21wb3NlIHJlbGVhc2VzIHZlcnNpb24gZnJvbSBHaXRodWIgQVBJLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTj0iQW4gZXJyb3IgaGFwcGVuIHJldHJpZXZpbmcgbGFzdCBEb2NrZXIgQ29tcG9zZSB2ZXJzaW9uIGZyb20gR2l0aHViIEFQSS4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhc3QgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfRVJST1JfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0U9IkFuIGVycm9yIGhhcHBlbiBkb3dubG9hZGluZyBEb2NrZXIgQ29tcG9zZSIKX01TR19ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRT0iRG93bmxvYWRpbmcgRG9ja2VyIENvbXBvc2UiCl9NU0dfRE9DS0VSX0NPTVBPU0VfRk9VTkRfSU5TVEFMTEVEPSJEb2NrZXIgQ29tcG9zZSBmb3VuZCBpbnN0YWxsZWQgaW4gdGhlIHN5c3RlbSIKX01TR19VUERBVElOR19ET0NLRVJfQ09NUE9TRT0iVXBkYXRpbmcgRG9ja2VyIENvbXBvc2UiCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7CklOREVOVF9TVFJJTkc9IiIKR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiIKaWYgWyAtbiAiJEdJVEhVQl9VU0VSTkFNRSIgXSAmJiBbIC1uICIkR0lUSFVCX1RPS0VOIiBdOyB0aGVuCiAgR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiRHSVRIVUJfVVNFUk5BTUU6JEdJVEhVQl9UT0tFTiIKZmk7CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KcHJpbnRJbmRlbnQKcHJpbnRmICIlcy4uLlxuIiAiJF9NU0dfQ0hFQ0tJTkdfRE9DS0VSX0NPTVBPU0UiCmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBTQ1JJUFRfRklMRU5BTUU9IiQoYmFzZW5hbWUgIiQwIikiCiAgaWYgWyAiJFNDUklQVF9GSUxFTkFNRSIgPSAibWFpbi5zaCIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRTQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgImN1cmwiCiAgImpxIgopCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gcGFjbWFuIC1TICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmUKX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX0lOREVYPTEKX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OXzQwNF9BVFRFTVBUUz0wCl9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTPTEwCmZ1bmN0aW9uIGNoZWNrRG9ja2VyQ29tcG9zZVZlcnNpb25Ub0Rvd25sb2FkRXhpc3RzKCkgewogIF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9kb2NrZXIvY29tcG9zZS9yZWxlYXNlcy9kb3dubG9hZC92JF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04vZG9ja2VyLWNvbXBvc2UtJCh1bmFtZSAtcyktJCh1bmFtZSAtbSkiCiAgX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTF9FWElTVFM9MAogIGlmIGN1cmwgLS1vdXRwdXQgL2Rldi9udWxsIC0tc2lsZW50IC0taGVhZCAtLWZhaWwgIiRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMIjsgdGhlbgogICAgX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTF9FWElTVFM9MQogIGZpOwp9Cl9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fQVRURU1QVFM9MApfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUz01Cl9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fVVJMPSJodHRwczovL2FwaS5naXRodWIuY29tL3JlcG9zL2RvY2tlci9jb21wb3NlL3JlbGVhc2VzIgpmdW5jdGlvbiBnZXREb2NrZXJDb21wb3NlTGF0ZXN0VmVyc2lvbigpIHsKICBfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GTz0iJChjdXJsIC1zTCAiJEdJVEhVQl9BUElfQ1VSTF9BVVRIIiAiJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fVVJMIiAyPiYxKSIKICBfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GT19NRVNTQUdFPSIkKGVjaG8gIiRfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GTyIgfCBqcSAtciAnLm1lc3NhZ2UnIDI+JjEpIgogIF9ET0NLRVJfQ09NUE9TRV9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVMiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0RPQ0tFUl9DT01QT1NFX1JFTEVBU0VTX0lORk9fTUVTU0FHRSIgPiYyCiAgICBleGl0ICRfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERQogIGZpOwogIF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT049JCgKICAgIGVjaG8gIiRfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfSU5GTyIgfCBcCiAgICBqcSAtciAiLlskX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX0lOREVYXS5uYW1lIiAyPiYxCiAgKQogIF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfRE9DS0VSX0NPTVBPU0VfUkVMRUFTRVNfVkVSU0lPTiIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzIiAiJF9NU0dfRVJST1IiICIkX1BBUlNFX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBleGl0ICRfUEFSU0VfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogIGZpOwogIF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT049IiQoZWNobyAiJF9QQVJTRV9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iIHwgY3V0IC1kJ3YnIC1mMiAyPiYxKSIKICBfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICgoIF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fQVRURU1QVFMrKyApKQogICAgaWYgWyAkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUyAtZ2UgJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9ET0NLRVJfQ09NUE9TRV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfR0VUX0RPQ0tFUl9DT01QT1NFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzIiAiJF9NU0dfRVJST1IiICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgJF9HRVRfRE9DS0VSX0NPTVBPU0VfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFCiAgICBlbHNlCiAgICAgIGdldERvY2tlckNvbXBvc2VMYXRlc3RWZXJzaW9uCiAgICBmaTsKICBmaTsKICBjaGVja0RvY2tlckNvbXBvc2VWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cwogIGlmIFsgJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkxfRVhJU1RTIC1uZSAxIF07IHRoZW4KICAgICgoIF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl80MDRfQVRURU1QVFMrKyApKQogICAgKCggX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX0lOREVYKysgKSkKICAgIGdldERvY2tlckNvbXBvc2VMYXRlc3RWZXJzaW9uCiAgZWxzZQogICAgcHJpbnRmICIgKHYlcykgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIKICBmaTsKfQpwcmludEluZGVudApwcmludGYgIiAgJXMiICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfQVZBSUxBQkxFX1ZFUlNJT04iCmdldERvY2tlckNvbXBvc2VMYXRlc3RWZXJzaW9uCl9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSD0iJChjb21tYW5kIC12IGRvY2tlci1jb21wb3NlKSIKX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRIX0VYSVRfQ09ERT0kPwppZiBbICRfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEhfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICBfRE9DS0VSX0NPTVBPU0VfRklMRVBBVEg9IiIKZmk7CmZ1bmN0aW9uIGRvd25sb2FkRG9ja2VyQ29tcG9zZSgpIHsKICBfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfVVJMPSJodHRwczovL2dpdGh1Yi5jb20vZG9ja2VyL2NvbXBvc2UvcmVsZWFzZXMvZG93bmxvYWQvdiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OL2RvY2tlci1jb21wb3NlLSQodW5hbWUgLXMpLSQodW5hbWUgLW0pIgogIF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9PVVRQVVQ9IiQoc3VkbyBjdXJsIC1zTCAiJF9ET1dOTE9BRF9ET0NLRVJfQ09NUE9TRV9VUkwiIC1vICIkMSIgMj4mMSkiCiAgX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX0VYSVRfQ09ERT0kPwogIGlmICBbICRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzICh2JXMpXG4iICIkX01TR19FUlJPUl9ET1dOTE9BRElOR19ET0NLRVJfQ09NUE9TRSIgIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX09VVFBVVCIgPiYyCiAgICBleGl0ICRfRE9XTkxPQURfRE9DS0VSX0NPTVBPU0VfRVhJVF9DT0RFCiAgZmk7CiAgX0RPQ0tFUl9DT01QT1NFX0JJTkFSWV9DT05URU5UPSQoc3VkbyBjYXQgIiQxIiB8IHRyIC1kICdcMCcpCiAgaWYgWyAiJF9ET0NLRVJfQ09NUE9TRV9CSU5BUllfQ09OVEVOVCIgPSAiTm90IEZvdW5kIiBdOyB0aGVuCiAgICBpZiBbICRfR0VUX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fNDA0X0FUVEVNUFRTIC1nZSAkX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIkMSIKICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lcyAodiVzKVxuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfRE9DS0VSX0NPTVBPU0UiICIkX0RPQ0tFUl9DT01QT1NFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX0RPQ0tFUl9DT01QT1NFX1VSTCIgPiYyCiAgICAgIHByaW50ZiAiJXM6IDQwNFxuIiAiJF9NU0dfRVJST1JfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9DS0VSX0NPTVBPU0VfQklOQVJZX0NPTlRFTlQiID4mMgogICAgICBleGl0IDEKICAgIGVsc2UKICAgICAgcHJpbnRmICIgKCVzKSBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgIiRfTVNHX05PVF9GT1VORCIKICAgICAgKCggX0dFVF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAgICgoIF9HRVRfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9JTkRFWCsrICkpCiAgICAgIGdldERvY2tlckNvbXBvc2VMYXRlc3RWZXJzaW9uCiAgICAgIGRvd25sb2FkRG9ja2VyQ29tcG9zZSAiJDEiCiAgICBmaTsKICBmaTsKICBzdWRvIGNobW9kICt4ICIkMSIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQppZiBbICIkX0RPQ0tFUl9DT01QT1NFX0ZJTEVQQVRIIiA9ICIiIF07IHRoZW4KICBwcmludEluZGVudAogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0RPV05MT0FESU5HX0RPQ0tFUl9DT01QT1NFIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iCiAgZG93bmxvYWREb2NrZXJDb21wb3NlIC91c3IvbG9jYWwvYmluL2RvY2tlci1jb21wb3NlCmVsc2UKICBfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9PVVRQVVQ9IiQoZG9ja2VyLWNvbXBvc2UgLS12ZXJzaW9uKSIKICBfRE9DS0VSX0NPTVBPU0VfVkVSU0lPTl9PVVRQVVRfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX0RPQ0tFUl9DT01QT1NFX1ZFUlNJT05fT1VUUFVUX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBzdWRvIHJtIC1mICIkKGNvbW1hbmQgLXYgZG9ja2VyLWNvbXBvc2UpIgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0RPV05MT0FESU5HX0RPQ0tFUl9DT01QT1NFIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iCiAgICBkb3dubG9hZERvY2tlckNvbXBvc2UgL3Vzci9sb2NhbC9iaW4vZG9ja2VyLWNvbXBvc2UKICBlbHNlCiAgICBfRE9DS0VSX0NPTVBPU0VfSU5TVEFMTEVEX1ZFUlNJT049IiQoZWNobyAiJF9ET0NLRVJfQ09NUE9TRV9WRVJTSU9OX09VVFBVVCIgfCBjdXQgLWMyNC0yOSkiCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRE9DS0VSX0NPTVBPU0VfRk9VTkRfSU5TVEFMTEVEIiAiJF9ET0NLRVJfQ09NUE9TRV9JTlNUQUxMRURfVkVSU0lPTiIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgaWYgWyAiJF9ET0NLRVJfQ09NUE9TRV9JTlNUQUxMRURfVkVSU0lPTiIgIT0gIiRfRE9DS0VSX0NPTVBPU0VfTEFTVEVTVF9WRVJTSU9OIiBdOyB0aGVuCiAgICAgIHByaW50SW5kZW50CiAgICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfRE9DS0VSX0NPTVBPU0UiICIkX0RPQ0tFUl9DT01QT1NFX0lOU1RBTExFRF9WRVJTSU9OIgogICAgICBwcmludGYgIiAtPiB2JXMpLi4uIiAiJF9ET0NLRVJfQ09NUE9TRV9MQVNURVNUX1ZFUlNJT04iCiAgICAgIHN1ZG8gcm0gLWYgJF9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSAogICAgICBkb3dubG9hZERvY2tlckNvbXBvc2UgJF9ET0NLRVJfQ09NUE9TRV9GSUxFUEFUSAogICAgZmk7CiAgZmk7CmZpOwo=' | base64 -d)
