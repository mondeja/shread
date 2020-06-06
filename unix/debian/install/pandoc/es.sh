#!/bin/bash
source <(printf 'X01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVI9IkVzdGUgc2NyaXB0IG5lY2VzaXRhIHNlciBlamVjdXRhZG8gY29tbyBzdXBlcnVzdWFyaW8uIgpfTVNHX0NIRUNLSU5HX1BBTkRPQz0iQ29tcHJvYmFuZG8gUGFuZG9jLi4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUEFORE9DX1JFTEVBU0VTPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIGluZm9ybWFjacOzbiBkZSBsYXMgcmVsZWFzZXMgZGUgUGFuZG9jIGRlIGxhIEFQSSBkZSBHaXRodWIuIgpfTVNHX1VSTD0iVVJMIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FUlJPUl9DT0RFPSJDw7NkaWdvIGRlIGVycm9yIgpfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9BVkFJTEFCTEVfVkVSU0lPTj0iT2J0ZW5pZW5kbyBsYSDDumx0aW1hIHZlcnNpw7NuIGRpc3BvbmlibGUgZGUgUGFuZG9jLi4uIgpfTVNHX0RPV05MT0FESU5HX1BBQ0tBR0U9IkRlc2NhcmdhbmRvIHBhcXVldGUuLi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNURVNUX1BBTkRPQ19WRVJTSU9OPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZGUgUGFuZG9jLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19QQU5ET0M9Ik9jdXJyacOzIHVuIGVycm9yIGRlc2NhcmdhbmRvIFBhbmRvYyIKX01TR19OT1RfRk9VTkQ9Ik5vIGVuY29udHJhZG8iCl9NU0dfSU5TVEFMTElORz0iSW5zdGFsYW5kby4uLiIKX01TR19QQU5ET0NfRk9VTkRfSU5TVEFMTEVEPSJIYSBzaWRvIGVuY29udHJhZG8gUGFuZG9jIGluc3RhbGFkbyBlbiBlbCBzaXN0ZW1hIgpfTVNHX1VQREFUSU5HX1BBTkRPQz0iQWN0dWFsaXphbmRvIFBhbmRvYyIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKX1BSRVBFTkRfU1RET1VUX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCIKZG8KICAgIGNhc2UgJGFyZyBpbgogICAgICAgIC0tcHJlcGVuZC1zdGRvdXQpCiAgICAgICAgc2hpZnQKICAgICAgICBfUFJFUEVORF9TVERPVVRfU1RSSU5HPSQxCiAgICAgICAgc2hpZnQKICAgICAgICA7OwogICAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkX1BSRVBFTkRfU1RET1VUX1NUUklORyIKfQpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19QQU5ET0MiCklOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICJjdXJsIgogICJqcSIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChzdWRvIGRwa2cgLXMgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmUKX0dFVF9QQU5ET0NfVkVSU0lPTl9JTkRFWD0wCl9HRVRfUEFORE9DX1ZFUlNJT05fNDA0X0FUVEVNUFRTPTAKX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTPTEwCmZ1bmN0aW9uIGNoZWNrUGFuZG9jVmVyc2lvblRvRG93bmxvYWRFeGlzdHMoKSB7CiAgX0RPV05MT0FEX1BBTkRPQ19VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9qZ20vcGFuZG9jL3JlbGVhc2VzL2Rvd25sb2FkLyRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTi9wYW5kb2MtJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OLTEtYW1kNjQuZGViIgogIF9ET1dOTE9BRF9QQU5ET0NfVVJMX0VYSVNUUz0wCiAgaWYgY3VybCAtLW91dHB1dCAvZGV2L251bGwgLS1zaWxlbnQgLS1oZWFkIC0tZmFpbCAiJF9ET1dOTE9BRF9QQU5ET0NfVVJMIjsgdGhlbgogICAgX0RPV05MT0FEX1BBTkRPQ19VUkxfRVhJU1RTPTEKICBmaTsKfQpfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUz0wCl9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUz01Cl9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX1VSTD0iaHR0cHM6Ly9hcGkuZ2l0aHViLmNvbS9yZXBvcy9qZ20vcGFuZG9jL3JlbGVhc2VzIgpmdW5jdGlvbiBnZXRQYW5kb2NMYXRlc3RWZXJzaW9uKCkgewogIF9QQU5ET0NfUkVMRUFTRVNfSU5GTz0iJChjdXJsIC1zICIkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fVVJMIiAyPiYxKSIKICBfUEFORE9DX1JFTEVBU0VTX0lORk9fTUVTU0FHRT0iJChlY2hvICIkX1BBTkRPQ19SRUxFQVNFU19JTkZPIiB8IGpxIC1yICcubWVzc2FnZScgMj4mMSkiCiAgX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFIC1lcSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX1BBTkRPQ19SRUxFQVNFUyIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0UiID4mMgogICAgZXhpdCAkX1BBTkRPQ19SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFCiAgZmk7CiAgX1BBTkRPQ19MQVNURVNUX1ZFUlNJT049JCgKICAgIGVjaG8gIiRfUEFORE9DX1JFTEVBU0VTX0lORk8iIHwgXAogICAganEgLXIgIi5bJF9HRVRfUEFORE9DX1ZFUlNJT05fSU5ERVhdLnRhZ19uYW1lIiAyPiYxCiAgKQogIF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAoKCBfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUysrICkpCiAgICBpZiBbICRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUyAtZ2UgJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUyBdOyB0aGVuCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludCAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19MQVNURVNUX1BBTkRPQ19WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgZXhpdCAkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFCiAgICBlbHNlCiAgICAgIGdldFBhbmRvY0xhdGVzdFZlcnNpb24KICAgIGZpOwogIGZpOwogIGNoZWNrUGFuZG9jVmVyc2lvblRvRG93bmxvYWRFeGlzdHMKICBpZiBbICRfRE9XTkxPQURfUEFORE9DX1VSTF9FWElTVFMgLW5lIDEgXTsgdGhlbgogICAgKCggX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfQVRURU1QVFMrKyApKQogICAgKCggX0dFVF9QQU5ET0NfVkVSU0lPTl9JTkRFWCsrICkpCiAgICBnZXRQYW5kb2NMYXRlc3RWZXJzaW9uCiAgZWxzZQogICAgcHJpbnRmICIgKHYlcykgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iICIkX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04iCiAgZmk7Cn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX0FWQUlMQUJMRV9WRVJTSU9OIgpnZXRQYW5kb2NMYXRlc3RWZXJzaW9uCl9QQU5ET0NfRklMRVBBVEg9IiQoY29tbWFuZCAtdiBwYW5kb2MpIgpfUEFORE9DX0ZJTEVQQVRIX0VYSVRfQ09ERT0kPwppZiBbICRfUEFORE9DX0ZJTEVQQVRIX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgX1BBTkRPQ19GSUxFUEFUSD0iIgpmaTsKZnVuY3Rpb24gZG93bmxvYWRQYW5kb2MoKSB7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19ET1dOTE9BRElOR19QQUNLQUdFIgogIF9ET1dOTE9BRF9QQU5ET0NfVVJMPSJodHRwczovL2dpdGh1Yi5jb20vamdtL3BhbmRvYy9yZWxlYXNlcy9kb3dubG9hZC8kX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04vcGFuZG9jLSRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTi0xLWFtZDY0LmRlYiIKICBfRE9XTkxPQURfUEFORE9DX09VVFBVVD0iJChzdWRvIGN1cmwgLXNMICIkX0RPV05MT0FEX1BBTkRPQ19VUkwiIC1vICIkMSIgMj4mMSkiCiAgX0RPV05MT0FEX1BBTkRPQ19FWElUX0NPREU9JD8KICBpZiAgWyAkX0RPV05MT0FEX1BBTkRPQ19FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMgKHYlcylcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX1BBTkRPQyIgIiRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9ET1dOTE9BRF9QQU5ET0NfVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRE9XTkxPQURfUEFORE9DX09VVFBVVCIgPiYyCiAgICBleGl0ICRfRE9XTkxPQURfUEFORE9DX0VYSVRfQ09ERQogIGZpOwogIF9QQU5ET0NfQklOQVJZX0NPTlRFTlQ9IiQoc3VkbyBjYXQgIiQxIiB8IHRyIC1kICdcMCcpIgogIGlmIFsgIiRfUEFORE9DX0JJTkFSWV9DT05URU5UIiA9ICJOb3QgRm91bmQiIF07IHRoZW4KICAgIGlmIFsgJF9HRVRfUEFORE9DX1ZFUlNJT05fNDA0X0FUVEVNUFRTIC1nZSAkX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJDEiCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIlxuJXMgKHYlcylcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX1BBTkRPQyIgIiRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX1BBTkRPQ19VUkwiID4mMgogICAgICBwcmludGYgIiVzOiA0MDRcbiIgIiRfTVNHX0VSUk9SX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX1BBTkRPQ19CSU5BUllfQ09OVEVOVCIgPiYyCiAgICAgIGV4aXQgMQogICAgZWxzZQogICAgICBwcmludGYgIiAoJXMpIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiAiJF9NU0dfTk9UX0ZPVU5EIgogICAgICAoKCBfR0VUX1BBTkRPQ19WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAgICgoIF9HRVRfUEFORE9DX1ZFUlNJT05fSU5ERVgrKyApKQogICAgICBnZXRQYW5kb2NMYXRlc3RWZXJzaW9uCiAgICAgIGRvd25sb2FkUGFuZG9jICIkMSIKICAgIGZpOwogIGZpOwogIHN1ZG8gY2htb2QgK3ggIiQxIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGluc3RhbGxQYW5kb2MoKSB7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19JTlNUQUxMSU5HIgogIHN1ZG8gZHBrZyAtaSAiJDEiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBybSAtZiAiJDEiCn0KaWYgWyAiJF9QQU5ET0NfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogIGRvd25sb2FkUGFuZG9jIH4vcGFuZG9jLmRlYgogIGluc3RhbGxQYW5kb2Mgfi9wYW5kb2MuZGViCmVsc2UKICBfUEFORE9DX1ZFUlNJT05fT1VUUFVUPSIkKHBhbmRvYyAtLXZlcnNpb24gfCBoZWFkIC1uIDEgfCBjdXQgLWQnICcgLWYyKSIKICBfUEFORE9DX1ZFUlNJT05fT1VUUFVUX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9QQU5ET0NfVkVSU0lPTl9PVVRQVVRfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHN1ZG8gcm0gLWYgIiQoY29tbWFuZCAtdiBwYW5kb2MpIgogICAgZG93bmxvYWRQYW5kb2Mgfi9wYW5kb2MuZGViCiAgICBpbnN0YWxsUGFuZG9jIH4vcGFuZG9jLmRlYgogIGVsc2UKICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgCXByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX1BBTkRPQ19GT1VORF9JTlNUQUxMRUQiICIkX1BBTkRPQ19WRVJTSU9OX09VVFBVVCIKICAgIGlmIFsgIiRfUEFORE9DX1ZFUlNJT05fT1VUUFVUIiAhPSAiJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgICBwcmludGYgIiAgJXMgKHYlcyIgIiRfTVNHX1VQREFUSU5HX1BBTkRPQyIgIiRfUEFORE9DX1ZFUlNJT05fT1VUUFVUIgogICAgICBwcmludGYgIiAtPiB2JXMpLi4uXG4iICIkX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04iCiAgICAgIF9QUkVQRU5EX1NURE9VVF9TVFJJTkc9IiAgJF9QUkVQRU5EX1NURE9VVF9TVFJJTkciCiAgICAgIHN1ZG8gcm0gLWYgJF9QQU5ET0NfRklMRVBBVEgKICAgICAgZG93bmxvYWRQYW5kb2Mgfi9wYW5kb2MuZGViCiAgICAgIGluc3RhbGxQYW5kb2Mgfi9wYW5kb2MuZGViCiAgICBlbHNlCiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZmk7CiAgZmk7CmZpOwo=' | base64 -d)
