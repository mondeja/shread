#!/bin/bash
source <(printf 'X01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVI9IkVzdGUgc2NyaXB0IG5lY2VzaXRhIHNlciBlamVjdXRhZG8gY29tbyBzdXBlcnVzdWFyaW8uIgpfTVNHX0NIRUNLSU5HX1BBTkRPQz0iQ29tcHJvYmFuZG8gUGFuZG9jLi4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUEFORE9DX1JFTEVBU0VTPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIGluZm9ybWFjacOzbiBkZSBsYXMgcmVsZWFzZXMgZGUgUGFuZG9jIGRlIGxhIEFQSSBkZSBHaXRodWIuIgpfTVNHX1VSTD0iVVJMIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FUlJPUl9DT0RFPSJDw7NkaWdvIGRlIGVycm9yIgpfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9BVkFJTEFCTEVfVkVSU0lPTj0iT2J0ZW5pZW5kbyBsYSDDumx0aW1hIHZlcnNpw7NuIGRpc3BvbmlibGUgZGUgUGFuZG9jLi4uIgpfTVNHX0RPV05MT0FESU5HX1BBQ0tBR0U9IkRlc2NhcmdhbmRvIHBhcXVldGUuLi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNURVNUX1BBTkRPQ19WRVJTSU9OPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZGUgUGFuZG9jLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19QQU5ET0M9Ik9jdXJyacOzIHVuIGVycm9yIGRlc2NhcmdhbmRvIFBhbmRvYyIKX01TR19OT1RfRk9VTkQ9Ik5vIGVuY29udHJhZG8iCl9NU0dfSU5TVEFMTElORz0iSW5zdGFsYW5kby4uLiIKX01TR19QQU5ET0NfRk9VTkRfSU5TVEFMTEVEPSJIYSBzaWRvIGVuY29udHJhZG8gUGFuZG9jIGluc3RhbGFkbyBlbiBlbCBzaXN0ZW1hIgpfTVNHX1VQREFUSU5HX1BBTkRPQz0iQWN0dWFsaXphbmRvIFBhbmRvYyIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKX1BSRVBFTkRfU1RET1VUX1NUUklORz0iIgpHSVRIVUJfQVBJX0NVUkxfQVVUSD0iIgppZiBbIC1uICIkR0lUSFVCX1VTRVJOQU1FIiBdICYmIFsgLW4gIiRHSVRIVUJfVE9LRU4iIF07IHRoZW4KICBHSVRIVUJfQVBJX0NVUkxfQVVUSD0iJEdJVEhVQl9VU0VSTkFNRTokR0lUSFVCX1RPS0VOIgpmaTsKZm9yIGFyZyBpbiAiJEAiCmRvCiAgICBjYXNlICRhcmcgaW4KICAgICAgICAtLXByZXBlbmQtc3Rkb3V0KQogICAgICAgIHNoaWZ0CiAgICAgICAgX1BSRVBFTkRfU1RET1VUX1NUUklORz0kMQogICAgICAgIHNoaWZ0CiAgICAgICAgOzsKICAgIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludFByZXBlbmRlZFN0ZG91dCgpIHsKICBwcmludGYgIiVzIiAiJF9QUkVQRU5EX1NURE9VVF9TVFJJTkciCn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfUEFORE9DIgpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiY3VybCIKICAianEiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQoc3VkbyBkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lCl9HRVRfUEFORE9DX1ZFUlNJT05fSU5ERVg9MApfR0VUX1BBTkRPQ19WRVJTSU9OXzQwNF9BVFRFTVBUUz0wCl9HRVRfUEFORE9DX1ZFUlNJT05fNDA0X01BWF9BVFRFTVBUUz0xMApmdW5jdGlvbiBjaGVja1BhbmRvY1ZlcnNpb25Ub0Rvd25sb2FkRXhpc3RzKCkgewogIF9ET1dOTE9BRF9QQU5ET0NfVVJMPSJodHRwczovL2dpdGh1Yi5jb20vamdtL3BhbmRvYy9yZWxlYXNlcy9kb3dubG9hZC8kX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04vcGFuZG9jLSRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTi0xLWFtZDY0LmRlYiIKICBfRE9XTkxPQURfUEFORE9DX1VSTF9FWElTVFM9MAogIGlmIGN1cmwgLS1vdXRwdXQgL2Rldi9udWxsIC0tc2lsZW50IC0taGVhZCAtLWZhaWwgIiRfRE9XTkxPQURfUEFORE9DX1VSTCI7IHRoZW4KICAgIF9ET1dOTE9BRF9QQU5ET0NfVVJMX0VYSVNUUz0xCiAgZmk7Cn0KX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fQVRURU1QVFM9MApfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9NQVhfQVRURU1QVFM9NQpfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9VUkw9Imh0dHBzOi8vYXBpLmdpdGh1Yi5jb20vcmVwb3MvamdtL3BhbmRvYy9yZWxlYXNlcyIKZnVuY3Rpb24gZ2V0UGFuZG9jTGF0ZXN0VmVyc2lvbigpIHsKICBfUEFORE9DX1JFTEVBU0VTX0lORk89IiQoY3VybCAtc0wgIiRHSVRIVUJfQVBJX0NVUkxfQVVUSCIgIiRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9VUkwiIDI+JjEpIgogIF9QQU5ET0NfUkVMRUFTRVNfSU5GT19NRVNTQUdFPSIkKGVjaG8gIiRfUEFORE9DX1JFTEVBU0VTX0lORk8iIHwganEgLXIgJy5tZXNzYWdlJyAyPiYxKSIKICBfUEFORE9DX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREU9JD8KICBpZiBbICRfUEFORE9DX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUEFORE9DX1JFTEVBU0VTIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfUEFORE9DX1JFTEVBU0VTX0lORk9fTUVTU0FHRSIgPiYyCiAgICBleGl0ICRfUEFORE9DX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUKICBmaTsKICBfUEFORE9DX0xBU1RFU1RfVkVSU0lPTj0kKAogICAgZWNobyAiJF9QQU5ET0NfUkVMRUFTRVNfSU5GTyIgfCBcCiAgICBqcSAtciAiLlskX0dFVF9QQU5ET0NfVkVSU0lPTl9JTkRFWF0udGFnX25hbWUiIDI+JjEKICApCiAgX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICgoIF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTKysgKSkKICAgIGlmIFsgJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTIC1nZSAkX0dFVF9QQU5ET0NfTEFURVNUX1ZFUlNJT05fTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfUEFORE9DX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9HRVRfUEFORE9DX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzIiAiJF9NU0dfRVJST1IiICIkX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04iID4mMgogICAgICBleGl0ICRfR0VUX1BBTkRPQ19MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUKICAgIGVsc2UKICAgICAgZ2V0UGFuZG9jTGF0ZXN0VmVyc2lvbgogICAgZmk7CiAgZmk7CiAgY2hlY2tQYW5kb2NWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cwogIGlmIFsgJF9ET1dOTE9BRF9QQU5ET0NfVVJMX0VYSVNUUyAtbmUgMSBdOyB0aGVuCiAgICAoKCBfR0VUX1BBTkRPQ19WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAoKCBfR0VUX1BBTkRPQ19WRVJTSU9OX0lOREVYKysgKSkKICAgIGdldFBhbmRvY0xhdGVzdFZlcnNpb24KICBlbHNlCiAgICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTiIKICBmaTsKfQpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfQVZBSUxBQkxFX1ZFUlNJT04iCmdldFBhbmRvY0xhdGVzdFZlcnNpb24KX1BBTkRPQ19GSUxFUEFUSD0iJChjb21tYW5kIC12IHBhbmRvYykiCl9QQU5ET0NfRklMRVBBVEhfRVhJVF9DT0RFPSQ/CmlmIFsgJF9QQU5ET0NfRklMRVBBVEhfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICBfUEFORE9DX0ZJTEVQQVRIPSIiCmZpOwpmdW5jdGlvbiBkb3dubG9hZFBhbmRvYygpIHsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyIgIiRfTVNHX0RPV05MT0FESU5HX1BBQ0tBR0UiCiAgX0RPV05MT0FEX1BBTkRPQ19VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9qZ20vcGFuZG9jL3JlbGVhc2VzL2Rvd25sb2FkLyRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTi9wYW5kb2MtJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OLTEtYW1kNjQuZGViIgogIF9ET1dOTE9BRF9QQU5ET0NfT1VUUFVUPSIkKHN1ZG8gY3VybCAtc0wgIiRfRE9XTkxPQURfUEFORE9DX1VSTCIgLW8gIiQxIiAyPiYxKSIKICBfRE9XTkxPQURfUEFORE9DX0VYSVRfQ09ERT0kPwogIGlmICBbICRfRE9XTkxPQURfUEFORE9DX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyAodiVzKVxuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfUEFORE9DIiAiJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX1BBTkRPQ19VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET1dOTE9BRF9QQU5ET0NfT1VUUFVUIiA+JjIKICAgIGV4aXQgJF9ET1dOTE9BRF9QQU5ET0NfRVhJVF9DT0RFCiAgZmk7CiAgX1BBTkRPQ19CSU5BUllfQ09OVEVOVD0iJChzdWRvIGNhdCAiJDEiIHwgdHIgLWQgJ1wwJykiCiAgaWYgWyAiJF9QQU5ET0NfQklOQVJZX0NPTlRFTlQiID0gIk5vdCBGb3VuZCIgXTsgdGhlbgogICAgaWYgWyAkX0dFVF9QQU5ET0NfVkVSU0lPTl80MDRfQVRURU1QVFMgLWdlICRfR0VUX1BBTkRPQ19WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIkMSIKICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lcyAodiVzKVxuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfUEFORE9DIiAiJF9QQU5ET0NfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfRE9XTkxPQURfUEFORE9DX1VSTCIgPiYyCiAgICAgIHByaW50ZiAiJXM6IDQwNFxuIiAiJF9NU0dfRVJST1JfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfUEFORE9DX0JJTkFSWV9DT05URU5UIiA+JjIKICAgICAgZXhpdCAxCiAgICBlbHNlCiAgICAgIHByaW50ZiAiICglcykgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iICIkX01TR19OT1RfRk9VTkQiCiAgICAgICgoIF9HRVRfUEFORE9DX1ZFUlNJT05fNDA0X0FUVEVNUFRTKysgKSkKICAgICAgKCggX0dFVF9QQU5ET0NfVkVSU0lPTl9JTkRFWCsrICkpCiAgICAgIGdldFBhbmRvY0xhdGVzdFZlcnNpb24KICAgICAgZG93bmxvYWRQYW5kb2MgIiQxIgogICAgZmk7CiAgZmk7CiAgc3VkbyBjaG1vZCAreCAiJDEiCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gaW5zdGFsbFBhbmRvYygpIHsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyIgIiRfTVNHX0lOU1RBTExJTkciCiAgc3VkbyBkcGtnIC1pICIkMSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHJtIC1mICIkMSIKfQppZiBbICIkX1BBTkRPQ19GSUxFUEFUSCIgPSAiIiBdOyB0aGVuCiAgZG93bmxvYWRQYW5kb2Mgfi9wYW5kb2MuZGViCiAgaW5zdGFsbFBhbmRvYyB+L3BhbmRvYy5kZWIKZWxzZQogIF9QQU5ET0NfVkVSU0lPTl9PVVRQVVQ9IiQocGFuZG9jIC0tdmVyc2lvbiB8IGhlYWQgLW4gMSB8IGN1dCAtZCcgJyAtZjIpIgogIF9QQU5ET0NfVkVSU0lPTl9PVVRQVVRfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1BBTkRPQ19WRVJTSU9OX09VVFBVVF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgc3VkbyBybSAtZiAiJChjb21tYW5kIC12IHBhbmRvYykiCiAgICBkb3dubG9hZFBhbmRvYyB+L3BhbmRvYy5kZWIKICAgIGluc3RhbGxQYW5kb2Mgfi9wYW5kb2MuZGViCiAgZWxzZQogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAJcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfUEFORE9DX0ZPVU5EX0lOU1RBTExFRCIgIiRfUEFORE9DX1ZFUlNJT05fT1VUUFVUIgogICAgaWYgWyAiJF9QQU5ET0NfVkVSU0lPTl9PVVRQVVQiICE9ICIkX1BBTkRPQ19MQVNURVNUX1ZFUlNJT04iIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfUEFORE9DIiAiJF9QQU5ET0NfVkVSU0lPTl9PVVRQVVQiCiAgICAgIHByaW50ZiAiIC0+IHYlcykuLi5cbiIgIiRfUEFORE9DX0xBU1RFU1RfVkVSU0lPTiIKICAgICAgX1BSRVBFTkRfU1RET1VUX1NUUklORz0iICAkX1BSRVBFTkRfU1RET1VUX1NUUklORyIKICAgICAgc3VkbyBybSAtZiAkX1BBTkRPQ19GSUxFUEFUSAogICAgICBkb3dubG9hZFBhbmRvYyB+L3BhbmRvYy5kZWIKICAgICAgaW5zdGFsbFBhbmRvYyB+L3BhbmRvYy5kZWIKICAgIGVsc2UKICAgICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgICBmaTsKICBmaTsKZmk7Cg==' | base64 -d)
