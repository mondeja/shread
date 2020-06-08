#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBCb29zdG5vdGUgcmVsZWFzZXMgaW5mbyBmcm9tIEdpdGh1YiBBUEkuIgpfTVNHX1VSTD0iVVJMIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FUlJPUl9DT0RFPSJFcnJvciBjb2RlIgpfTVNHX05PVF9GT1VORD0iTm90IGZvdW5kIgpfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfQk9PU1ROT1RFX1JFTEVBU0U9IkFuIGVycm9yIGhhcHBlbiBwYXJzaW5nIHBlbnVsdGltYXRlIEJvb3N0bm90ZSByZWxlYXNlIGZyb20gR2l0aHViIEFQSS4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0JPT1NUTk9URV9WRVJTSU9OPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBsYXN0IEJvb3N0bm90ZSB2ZXJzaW9uLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19CT09TVE5PVEU9IkFuIGVycm9yIGhhcHBlbiBkb3dubG9hZGluZyBCb29zdG5vdGUiCl9NU0dfQ0hFQ0tJTkdfQk9PU1ROT1RFPSJDaGVja2luZyBCb29zdG5vdGUuLi4iCl9NU0dfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhc3QgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfRE9XTkxPQURJTkdfQk9PU1ROT1RFPSJEb3dubG9hZGluZyBCb29zdG5vdGUiCl9NU0dfSU5TVEFMTElOR19CT09TVE5PVEU9Ikluc3RhbGxpbmcgQm9vc3Rub3RlIgpfTVNHX0JPT1NUTk9URV9GT1VORF9JTlNUQUxMRUQ9IkJvb3N0bm90ZSBmb3VuZCBpbnN0YWxsZWQgb24gdGhlIHN5c3RlbSIKX01TR19VUERBVElOR19CT09TVE5PVEU9IlVwZGF0aW5nIEJvb3N0bm90ZSIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpfVVBEQVRFPTAKR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiIKaWYgWyAtbiAiJEdJVEhVQl9VU0VSTkFNRSIgXSAmJiBbIC1uICIkR0lUSFVCX1RPS0VOIiBdOyB0aGVuCiAgR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiRHSVRIVUJfVVNFUk5BTUU6JEdJVEhVQl9UT0tFTiIKZmk7CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS11cGRhdGUpCiAgICBzaGlmdAogICAgX1VQREFURT0xCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CklOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICJjdXJsIgogICJqcSIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lOwpBUkNIPSIiCmNhc2UgJCh1bmFtZSAtbSkgaW4KICAgIGkzODYpICAgQVJDSD0iMzg2IiA7OwogICAgaTY4NikgICBBUkNIPSIzODYiIDs7CiAgICB4ODZfNjQpIEFSQ0g9ImFtZDY0IiA7OwogICAgYXJtKSAgICBkcGtnIC0tcHJpbnQtYXJjaGl0ZWN0dXJlIHwgZ3JlcCAtcSAiYXJtNjQiICYmIEFSQ0g9ImFybTY0IiB8fCBBUkNIPSJhcm0iIDs7CmVzYWMKX0dFVF9CT09TVE5PVEVfVkVSU0lPTl9JTkRFWD0wCl9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fNDA0X0FUVEVNUFRTPTAKX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTPTEwCmZ1bmN0aW9uIGNoZWNrQm9vc3Rub3RlVmVyc2lvblRvRG93bmxvYWRFeGlzdHMoKSB7CiAgX0RPV05MT0FEX0JPT1NUTk9URV9VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9Cb29zdElPL2Jvb3N0LXJlbGVhc2VzL3JlbGVhc2VzL2Rvd25sb2FkL3YkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04vYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059XyRBUkNILmRlYiIKICBfRE9XTkxPQURfQk9PU1ROT1RFX1VSTF9FWElTVFM9MAogIGlmIGN1cmwgLS1vdXRwdXQgL2Rldi9udWxsIC0tc2lsZW50IC0taGVhZCAtLWZhaWwgIiRfRE9XTkxPQURfQk9PU1ROT1RFX1VSTCI7IHRoZW4KICAgIF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMX0VYSVNUUz0xCiAgZmk7Cn0KX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fQVRURU1QVFM9MApfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9NQVhfQVRURU1QVFM9NQpfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkw9Imh0dHBzOi8vYXBpLmdpdGh1Yi5jb20vcmVwb3MvQm9vc3RJTy9ib29zdC1yZWxlYXNlcy9yZWxlYXNlcyIKZnVuY3Rpb24gZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbigpIHsKICBfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk89IiQoY3VybCAtc0wgIiRHSVRIVUJfQVBJX0NVUkxfQVVUSCIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkwiIDI+JjEpIgogIF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFPSIkKGVjaG8gIiRfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk8iIHwganEgLXIgJy5tZXNzYWdlJyAyPiYxKSIKICBfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREU9JD8KICBpZiBbICRfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk8iID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFIiA+JjIKICAgIGV4aXQgJF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERQogIGZpOwogIF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OPSQoCiAgICBlY2hvICIkX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPIiB8IFwKICAgIGpxIC1yICIuWyRfR0VUX0JPT1NUTk9URV9WRVJTSU9OX0lOREVYXS5uYW1lIiAyPiYxCiAgKQogIF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUEFSU0lOR19QRU5VTFRJTUFURV9CT09TVE5PVEVfUkVMRUFTRSIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlZFxuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfUEFSU0VfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgcHJpbnRmICIlczogJXMiICIkX01TR19FUlJPUiIgIiRfUEFSU0VfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBleGl0ICRfUEFSU0VfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUKICBmaTsKICBfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTj0iJChlY2hvICIkX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iIHwgY3V0IC1kJ3YnIC1mMiAyPiYxKSIKICBfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREU9JD8KICBpZiBbICRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgKCggX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fQVRURU1QVFMrKyApKQogICAgaWYgWyAkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fQVRURU1QVFMgLWdlICRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnQgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfTEFTVF9CT09TVE5PVEVfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXMiICIkX01TR19FUlJPUiIgIiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogICAgZWxzZQogICAgICBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uCiAgICBmaTsKICBmaTsKICBjaGVja0Jvb3N0bm90ZVZlcnNpb25Ub0Rvd25sb2FkRXhpc3RzCiAgaWYgWyAkX0RPV05MT0FEX0JPT1NUTk9URV9VUkxfRVhJU1RTIC1uZSAxIF07IHRoZW4KICAgICgoIF9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fNDA0X0FUVEVNUFRTKysgKSkKICAgICgoIF9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fSU5ERVgrKyApKQogICAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogIGVsc2UKICAgIHByaW50ZiAiICh2JXMpIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIgogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZmk7Cn0KZnVuY3Rpb24gZG93bmxvYWRCb29zdG5vdGUoKSB7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBfRE9XTkxPQURfQk9PU1ROT1RFX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL0Jvb3N0SU8vYm9vc3QtcmVsZWFzZXMvcmVsZWFzZXMvZG93bmxvYWQvdiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTi9ib29zdG5vdGVfJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn1fJEFSQ0guZGViIgogIF9ET1dOTE9BRF9CT09TVE5PVEVfT1VUUFVUPSIkKHN1ZG8gY3VybCAtc0wgIiRfRE9XTkxPQURfQk9PU1ROT1RFX1VSTCIgLW8gIiQxIiAyPiYxKSIKICBfRE9XTkxPQURfQk9PU1ROT1RFX0VYSVRfQ09ERT0kPwogIGlmICBbICRfRE9XTkxPQURfQk9PU1ROT1RFX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyB2JXNcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX0JPT1NUTk9URSIgIiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9XTkxPQURfQk9PU1ROT1RFX09VVFBVVCIgPiYyCiAgICBleGl0ICRfRE9XTkxPQURfQk9PU1ROT1RFX0VYSVRfQ09ERQogIGZpOwogIF9CT09TVE5PVEVfQklOQVJZX0NPTlRFTlQ9IiQoc3VkbyBjYXQgIiQxIiB8IHRyIC1kICdcMCcpIgogIGlmIFsgIiRfQk9PU1ROT1RFX0JJTkFSWV9DT05URU5UIiA9ICJOb3QgRm91bmQiIF07IHRoZW4KICAgIGlmIFsgJF9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fNDA0X0FUVEVNUFRTIC1nZSAkX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJDEiCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIlxuJXMgdiVzXG4iICIkX01TR19FUlJPUl9ET1dOTE9BRElOR19CT09TVE5PVEUiICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMIiA+JjIKICAgICAgcHJpbnRmICIlczogNDA0XG4iICIkX01TR19FUlJPUl9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9CT09TVE5PVEVfQklOQVJZX0NPTlRFTlQiID4mMgogICAgICBleGl0IDEKICAgIGVsc2UKICAgICAgcHJpbnRmICIgKCVzKSBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgIiRfTVNHX05PVF9GT1VORCIKICAgICAgKCggX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfQVRURU1QVFMrKyApKQogICAgICAoKCBfR0VUX0JPT1NUTk9URV9WRVJTSU9OX0lOREVYKysgKSkKICAgICAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogICAgICBkb3dubG9hZEJvb3N0bm90ZSAiJDEiCiAgICBmaTsKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsQm9vc3Rub3RlKCkgewogIHN1ZG8gZHBrZyAtaSAiJDEiID4gL2Rldi9udWxsCiAgc3VkbyBybSAtZiAiJDEiCn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQk9PU1ROT1RFIgpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiY3VybCIKICAianEiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQoc3VkbyBkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lCmlmICEgX0JPT1NUTk9URV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGJvb3N0bm90ZSkiOyB0aGVuCiAgX0JPT1NUTk9URV9CSU5BUllfUEFUSD0iIgpmaTsKX0JPT1NUTk9URV9QQUNLQUdFX0pTT05fRklMRVBBVEg9Ii9saWIvYm9vc3Rub3RlL3Jlc291cmNlcy9hcHAvcGFja2FnZS5qc29uIgppZiBbICEgLWYgIiRfQk9PU1ROT1RFX1BBQ0tBR0VfSlNPTl9GSUxFUEFUSCIgXTsgdGhlbgogIF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIPSIvdXNyL2xpYi9ib29zdG5vdGUvcmVzb3VyY2VzL2FwcC9wYWNrYWdlLmpzb24iCmZpOwppZiBbICIkX0JPT1NUTk9URV9CSU5BUllfUEFUSCIgPSAiIiBdIHx8IFsgISAtZiAiJF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIIiBdOyB0aGVuCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfQVZBSUxBQkxFX1ZFUlNJT04iCiAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfQk9PU1ROT1RFIiAiJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn0iCiAgZG93bmxvYWRCb29zdG5vdGUgIi90bXAvYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059LmRlYiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0lOU1RBTExJTkdfQk9PU1ROT1RFIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIgogIGluc3RhbGxCb29zdG5vdGUgIi90bXAvYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059LmRlYiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZWxzZQogIF9CT09TVE5PVEVfSU5TVEFMTEVEX1ZFUlNJT049JCgKICAgIHN1ZG8gY2F0ICIkX0JPT1NUTk9URV9QQUNLQUdFX0pTT05fRklMRVBBVEgiIHwgXAogICAgZ3JlcCAnInZlcnNpb24iOiAnIHwgXAogICAgY3V0IC1kJyInIC1mNAogICkKICBwcmludFByZXBlbmRlZFN0ZG91dAoJcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfQk9PU1ROT1RFX0ZPVU5EX0lOU1RBTExFRCIgIiRfQk9PU1ROT1RFX0lOU1RBTExFRF9WRVJTSU9OIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGlmIFsgIiRfQk9PU1ROT1RFX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIiBdOyB0aGVuCiAgICBpZiBbICRfVVBEQVRFIC1lcSAxIF07IHRoZW4KICAgICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgICAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OIgogICAgICBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uCiAgICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfQk9PU1ROT1RFIiAiJF9CT09TVE5PVEVfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgIHByaW50ZiAiIC0+IHYlcykuLi4iICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iCiAgICAgIHN1ZG8gcm0gLWYgIiRfQk9PU1ROT1RFX0JJTkFSWV9QQVRIIgogICAgICBkb3dubG9hZEJvb3N0bm90ZSAiL3RtcC9ib29zdG5vdGVfJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn0uZGViIgogICAgICBpbnN0YWxsQm9vc3Rub3RlICIvdG1wL2Jvb3N0bm90ZV8ke19CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OfS5kZWIiCiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZmk7CiAgZmk7CmZpOwo=' | base64 -d)
