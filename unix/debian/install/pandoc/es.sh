#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfQ0hFQ0tJTkdfUEFORE9DPSJDb21wcm9iYW5kbyBQYW5kb2MuLi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19QQU5ET0NfUkVMRUFTRVM9Ik9jdXJyacOzIHVuIGVycm9yIG9idGVuaWVuZG8gbGEgaW5mb3JtYWNpw7NuIGRlIGxhcyByZWxlYXNlcyBkZSBQYW5kb2MgZGUgbGEgQVBJIGRlIEdpdGh1Yi4iCl9NU0dfVVJMPSJVUkwiCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0VSUk9SX0NPREU9IkPDs2RpZ28gZGUgZXJyb3IiCl9NU0dfUkVUUklFVklOR19MQVNURVNUX0FWQUlMQUJMRV9WRVJTSU9OPSJPYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZGlzcG9uaWJsZSBkZSBQYW5kb2MuLi4iCl9NU0dfRE9XTkxPQURJTkdfUEFDS0FHRT0iRGVzY2FyZ2FuZG8gcGFxdWV0ZS4uLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfUEFORE9DX1ZFUlNJT049Ik9jdXJyacOzIHVuIGVycm9yIG9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzacOzbiBkZSBQYW5kb2MuIgpfTVNHX0VSUk9SX0RPV05MT0FESU5HX1BBTkRPQz0iT2N1cnJpw7MgdW4gZXJyb3IgZGVzY2FyZ2FuZG8gUGFuZG9jIgpfTVNHX05PVF9GT1VORD0iTm8gZW5jb250cmFkbyIKX01TR19JTlNUQUxMSU5HPSJJbnN0YWxhbmRvLi4uIgpfTVNHX1BBTkRPQ19GT1VORF9JTlNUQUxMRUQ9IkhhIHNpZG8gZW5jb250cmFkbyBQYW5kb2MgaW5zdGFsYWRvIGVuIGVsIHNpc3RlbWEiCl9NU0dfVVBEQVRJTkdfUEFORE9DPSJBY3R1YWxpemFuZG8gUGFuZG9jIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCkdJVEhVQl9BUElfQ1VSTF9BVVRIPSIiCmlmIFsgLW4gIiRHSVRIVUJfVVNFUk5BTUUiIF0gJiYgWyAtbiAiJEdJVEhVQl9UT0tFTiIgXTsgdGhlbgogIEdJVEhVQl9BUElfQ1VSTF9BVVRIPSIkR0lUSFVCX1VTRVJOQU1FOiRHSVRIVUJfVE9LRU4iCmZpOwpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CnByaW50SW5kZW50CnByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1BBTkRPQyIKSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgImN1cmwiCiAgImpxIgopCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogIGlmIFtbICIkKHN1ZG8gZHBrZyAtcyAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKZG9uZQpfR0VUX1BBTkRPQ19WRVJTSU9OX0lOREVYPTAKX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfQVRURU1QVFM9MApfR0VUX1BBTkRPQ19WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFM9MTAKZnVuY3Rpb24gY2hlY2tQYW5kb2NWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cygpIHsKICBfRE9XTkxPQURfUEFORE9DX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL2pnbS9wYW5kb2MvcmVsZWFzZXMvZG93bmxvYWQvJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OL3BhbmRvYy0kX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04tMS1hbWQ2NC5kZWIiCiAgX0RPV05MT0FEX1BBTkRPQ19VUkxfRVhJU1RTPTAKICBpZiBjdXJsIC0tb3V0cHV0IC9kZXYvbnVsbCAtLXNpbGVudCAtLWhlYWQgLS1mYWlsICIkX0RPV05MT0FEX1BBTkRPQ19VUkwiOyB0aGVuCiAgICBfRE9XTkxPQURfUEFORE9DX1VSTF9FWElTVFM9MQogIGZpOwp9Cl9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTPTAKX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fTUFYX0FUVEVNUFRTPTUKX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fVVJMPSJodHRwczovL2FwaS5naXRodWIuY29tL3JlcG9zL2pnbS9wYW5kb2MvcmVsZWFzZXMiCmZ1bmN0aW9uIGdldFBhbmRvY0xhdGVzdFZlcnNpb24oKSB7CiAgX1BBTkRPQ19SRUxFQVNFU19JTkZPPSIkKGN1cmwgLXNMICIkR0lUSFVCX0FQSV9DVVJMX0FVVEgiICIkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fVVJMIiAyPiYxKSIKICBfUEFORE9DX1JFTEVBU0VTX0lORk9fTUVTU0FHRT0iJChlY2hvICIkX1BBTkRPQ19SRUxFQVNFU19JTkZPIiB8IGpxIC1yICcubWVzc2FnZScgMj4mMSkiCiAgX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFIC1lcSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX1BBTkRPQ19SRUxFQVNFUyIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0UiID4mMgogICAgZXhpdCAkX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFCiAgZmk7CiAgX1BBTkRPQ19MQVNURVNUX1ZFUlNJT049JCgKICAgIGVjaG8gIiRfUEFORE9DX1JFTEVBU0VTX0lORk8iIHwgXAogICAganEgLXIgIi5bJF9HRVRfUEFORE9DX1ZFUlNJT05fSU5ERVhdLnRhZ19uYW1lIiAyPiYxCiAgKQogIF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAoKCBfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUysrICkpCiAgICBpZiBbICRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUyAtZ2UgJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUyBdOyB0aGVuCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludCAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19MQVNURVNUX1BBTkRPQ19WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgZXhpdCAkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFCiAgICBlbHNlCiAgICAgIGdldFBhbmRvY0xhdGVzdFZlcnNpb24KICAgIGZpOwogIGZpOwogIGNoZWNrUGFuZG9jVmVyc2lvblRvRG93bmxvYWRFeGlzdHMKICBpZiBbICRfRE9XTkxPQURfUEFORE9DX1VSTF9FWElTVFMgLW5lIDEgXTsgdGhlbgogICAgKCggX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfQVRURU1QVFMrKyApKQogICAgKCggX0dFVF9QQU5ET0NfVkVSU0lPTl9JTkRFWCsrICkpCiAgICBnZXRQYW5kb2NMYXRlc3RWZXJzaW9uCiAgZWxzZQogICAgcHJpbnRmICIgKHYlcykgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iICIkX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04iCiAgZmk7Cn0KcHJpbnRJbmRlbnQKcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX0FWQUlMQUJMRV9WRVJTSU9OIgpnZXRQYW5kb2NMYXRlc3RWZXJzaW9uCl9QQU5ET0NfRklMRVBBVEg9IiQoY29tbWFuZCAtdiBwYW5kb2MpIgpfUEFORE9DX0ZJTEVQQVRIX0VYSVRfQ09ERT0kPwppZiBbICRfUEFORE9DX0ZJTEVQQVRIX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgX1BBTkRPQ19GSUxFUEFUSD0iIgpmaTsKZnVuY3Rpb24gZG93bmxvYWRQYW5kb2MoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19ET1dOTE9BRElOR19QQUNLQUdFIgogIF9ET1dOTE9BRF9QQU5ET0NfVVJMPSJodHRwczovL2dpdGh1Yi5jb20vamdtL3BhbmRvYy9yZWxlYXNlcy9kb3dubG9hZC8kX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04vcGFuZG9jLSRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTi0xLWFtZDY0LmRlYiIKICBfRE9XTkxPQURfUEFORE9DX09VVFBVVD0iJChzdWRvIGN1cmwgLXNMICIkX0RPV05MT0FEX1BBTkRPQ19VUkwiIC1vICIkMSIgMj4mMSkiCiAgX0RPV05MT0FEX1BBTkRPQ19FWElUX0NPREU9JD8KICBpZiAgWyAkX0RPV05MT0FEX1BBTkRPQ19FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMgKHYlcylcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX1BBTkRPQyIgIiRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9QQU5ET0NfVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9XTkxPQURfUEFORE9DX09VVFBVVCIgPiYyCiAgICBleGl0ICRfRE9XTkxPQURfUEFORE9DX0VYSVRfQ09ERQogIGZpOwogIF9QQU5ET0NfQklOQVJZX0NPTlRFTlQ9IiQoc3VkbyBjYXQgIiQxIiB8IHRyIC1kICdcMCcpIgogIGlmIFsgIiRfUEFORE9DX0JJTkFSWV9DT05URU5UIiA9ICJOb3QgRm91bmQiIF07IHRoZW4KICAgIGlmIFsgJF9HRVRfUEFORE9DX1ZFUlNJT05fNDA0X0FUVEVNUFRTIC1nZSAkX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJDEiCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIlxuJXMgKHYlcylcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX1BBTkRPQyIgIiRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX1BBTkRPQ19VUkwiID4mMgogICAgICBwcmludGYgIiVzOiA0MDRcbiIgIiRfTVNHX0VSUk9SX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX1BBTkRPQ19CSU5BUllfQ09OVEVOVCIgPiYyCiAgICAgIGV4aXQgMQogICAgZWxzZQogICAgICBwcmludGYgIiAoJXMpIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiAiJF9NU0dfTk9UX0ZPVU5EIgogICAgICAoKCBfR0VUX1BBTkRPQ19WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAgICgoIF9HRVRfUEFORE9DX1ZFUlNJT05fSU5ERVgrKyApKQogICAgICBnZXRQYW5kb2NMYXRlc3RWZXJzaW9uCiAgICAgIGRvd25sb2FkUGFuZG9jICIkMSIKICAgIGZpOwogIGZpOwogIHN1ZG8gY2htb2QgK3ggIiQxIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGluc3RhbGxQYW5kb2MoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19JTlNUQUxMSU5HIgogIHN1ZG8gZHBrZyAtaSAiJDEiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBybSAtZiAiJDEiCn0KaWYgWyAiJF9QQU5ET0NfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogIGRvd25sb2FkUGFuZG9jIH4vcGFuZG9jLmRlYgogIGluc3RhbGxQYW5kb2Mgfi9wYW5kb2MuZGViCmVsc2UKICBfUEFORE9DX1ZFUlNJT05fT1VUUFVUPSIkKHBhbmRvYyAtLXZlcnNpb24gfCBoZWFkIC1uIDEgfCBjdXQgLWQnICcgLWYyKSIKICBfUEFORE9DX1ZFUlNJT05fT1VUUFVUX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9QQU5ET0NfVkVSU0lPTl9PVVRQVVRfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHN1ZG8gcm0gLWYgIiQoY29tbWFuZCAtdiBwYW5kb2MpIgogICAgZG93bmxvYWRQYW5kb2Mgfi9wYW5kb2MuZGViCiAgICBpbnN0YWxsUGFuZG9jIH4vcGFuZG9jLmRlYgogIGVsc2UKICAgIHByaW50SW5kZW50CiAgCXByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX1BBTkRPQ19GT1VORF9JTlNUQUxMRUQiICIkX1BBTkRPQ19WRVJTSU9OX09VVFBVVCIKICAgIGlmIFsgIiRfUEFORE9DX1ZFUlNJT05fT1VUUFVUIiAhPSAiJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgICBwcmludEluZGVudAogICAgICBwcmludGYgIiAgJXMgKHYlcyIgIiRfTVNHX1VQREFUSU5HX1BBTkRPQyIgIiRfUEFORE9DX1ZFUlNJT05fT1VUUFVUIgogICAgICBwcmludGYgIiAtPiB2JXMpLi4uXG4iICIkX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04iCiAgICAgIElOREVOVF9TVFJJTkc9IiAgJElOREVOVF9TVFJJTkciCiAgICAgIHN1ZG8gcm0gLWYgJF9QQU5ET0NfRklMRVBBVEgKICAgICAgZG93bmxvYWRQYW5kb2Mgfi9wYW5kb2MuZGViCiAgICAgIGluc3RhbGxQYW5kb2Mgfi9wYW5kb2MuZGViCiAgICBlbHNlCiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZmk7CiAgZmk7CmZpOwo=' | base64 -d)
