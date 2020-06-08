#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19VUkw9IlVSTCIKX01TR19FUlJPUj0iRXJyb3IiCl9NU0dfRVJST1JfQ09ERT0iRXJyb3IgY29kZSIKX01TR19OT1RfRk9VTkQ9Ik5vdCBmb3VuZCIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0dEUklWRV9SRUxFQVNFUz0iQW4gZXJyb3IgaGFwcGVuIHJldHJpZXZpbmcgR29vZ2xlIERyaXZlIHJlbGVhc2VzIGluZm9ybWF0aW9uIGZyb20gR2l0aHViIEFQSS4iCl9NU0dfRVJST1JfUEFSU0lOR19QRU5VTFRJTUFURV9HRFJJVkVfUkVMRUFTRVNfVkVSU0lPTj0iQW4gZXJyb3IgaGFwcGVuIHBhcnNpbmcgdGhlIHBlbnVsdGltYXRlIEdvb2dsZSBEcml2ZSByZWxlYXNlIHZlcnNpb24gZnJvbSBHaXRodWIgQVBJLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfR0RSSVZFX1JFTEVBU0VfVkVSU0lPTj0iQW4gZXJyb3IgaGFwcGVuIHJldHJpZXZpbmcgbGFzdCBHb29nbGUgRHJpdmUgcmVsZWFzZSB2ZXJzaW9uLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19HRFJJVkU9IkFuIGVycm9yIGhhcHBlbiBkb3dubG9hZGluZyBHb29nbGUgRHJpdmUiCl9NU0dfQ0hFQ0tJTkdfR0RSSVZFX0NMSUVOVD0iQ2hlY2tpbmcgR29vZ2xlIERyaXZlIGNsaWVudC4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RfQVZBSUxBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdCBhdmFpbGFibGUgdmVyc2lvbi4uLiIKX01TR19ET1dOTE9BRElOR19HRFJJVkVfQ0xJRU5UPSJEb3dubG9hZGluZyBHb29nbGUgRHJpdmUgY2xpZW50Li4uIgpfTVNHX1VQREFUSU5HX0dEUklWRT0iVXBkYXRpbmcgR29vZ2xlIERyaXZlIgpfTVNHX0ZPVU5EX0dEUklWRV9JTlNUQUxMRUQ9Ikdvb2dsZSBEcml2ZSBmb3VuZCBpbnN0YWxsZWQgaW4gdGhlIHN5c3RlbSIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpHSVRIVUJfQVBJX0NVUkxfQVVUSD0iIgppZiBbIC1uICIkR0lUSFVCX1VTRVJOQU1FIiBdICYmIFsgLW4gIiRHSVRIVUJfVE9LRU4iIF07IHRoZW4KICBHSVRIVUJfQVBJX0NVUkxfQVVUSD0iJEdJVEhVQl9VU0VSTkFNRTokR0lUSFVCX1RPS0VOIgpmaTsKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpmdW5jdGlvbiBpbnN0YWxsU2NyaXB0RGVwZW5kZW5jaWVzKCkgewogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KCJjdXJsIiAianEiKQogIGZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogICAgaWYgW1sgIiQoc3VkbyBkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lCn0KX0dFVF9HRFJJVkVfVkVSU0lPTl9JTkRFWD0wCl9HRVRfR0RSSVZFX1ZFUlNJT05fNDA0X0FUVEVNUFRTPTAKX0dFVF9HRFJJVkVfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTPTEwCmZ1bmN0aW9uIGNoZWNrR29vZ2xlRHJpdmVWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cygpIHsKICBfRE9XTkxPQURfR0RSSVZFX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL2dkcml2ZS1vcmcvZ2RyaXZlL3JlbGVhc2VzL2Rvd25sb2FkLyRfR0RSSVZFX0xBU1RFU1RfVkVSU0lPTi9nZHJpdmUtbGludXgteDY0IgogIF9ET1dOTE9BRF9HRFJJVkVfVVJMX0VYSVNUUz0wCiAgaWYgY3VybCAtLW91dHB1dCAvZGV2L251bGwgLS1zaWxlbnQgLS1oZWFkIC0tZmFpbCAiJF9ET1dOTE9BRF9HRFJJVkVfVVJMIjsgdGhlbgogICAgX0RPV05MT0FEX0dEUklWRV9VUkxfRVhJU1RTPTEKICBmaTsKfQpfR0VUX0dEUklWRV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUz0wCl9HRVRfR0RSSVZFX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUz01Cl9HRVRfR0RSSVZFX0xBVEVTVF9WRVJTSU9OX1VSTD1odHRwczovL2FwaS5naXRodWIuY29tL3JlcG9zL2dkcml2ZS1vcmcvZ2RyaXZlL3JlbGVhc2VzCmZ1bmN0aW9uIGdldEdvb2dsZURyaXZlTGF0ZXN0VmVyc2lvbigpIHsKICBfR0RSSVZFX1JFTEVBU0VTX0lORk89IiQoY3VybCAtc0wgIiRHSVRIVUJfQVBJX0NVUkxfQVVUSCIgIiRfR0VUX0dEUklWRV9MQVRFU1RfVkVSU0lPTl9VUkwiIDI+JjEpIgogIF9HRFJJVkVfUkVMRUFTRVNfSU5GT19NRVNTQUdFPSIkKGVjaG8gIiRfR0RSSVZFX1JFTEVBU0VTX0lORk8iIHwganEgLXIgJy5tZXNzYWdlJyAyPiYxKSIKICBfR0RSSVZFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREU9JD8KICBpZiBbICRfR0RSSVZFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfR0RSSVZFX1JFTEVBU0VTIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9HRFJJVkVfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfR0RSSVZFX1JFTEVBU0VTX0lORk9fTUVTU0FHRSIgPiYyCiAgICBleGl0ICRfR0RSSVZFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUKICBmaTsKICBfUEFSU0VfR0RSSVZFX0xBU1RFU1RfVkVSU0lPTj0kKAogICAgZWNobyAiJF9HRFJJVkVfUkVMRUFTRVNfSU5GTyIgfCBcCiAgICBqcSAtciAiLlskX0dFVF9HRFJJVkVfVkVSU0lPTl9JTkRFWF0udGFnX25hbWUiIDI+JjEpCiAgX1BBUlNFX0dEUklWRV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1BBUlNFX0dEUklWRV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9QQVJTSU5HX1BFTlVMVElNQVRFX0dEUklWRV9SRUxFQVNFU19WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9HRFJJVkVfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9QQVJTRV9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9QQVJTRV9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIGV4aXQgJF9QQVJTRV9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogIGZpOwogIF9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OPSQoZWNobyAiJF9QQVJTRV9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OIiB8IGN1dCAtZCd2JyAtZjIgMj4mMSkKICBfR0VUX0dEUklWRV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREU9JD8KICBpZiBbICRfR0VUX0dEUklWRV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgKChfR0VUX0dEUklWRV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUysrKSkKICAgIGlmIFsgJF9HRVRfR0RSSVZFX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTIC1nZSAkX0dFVF9HRFJJVkVfTEFURVNUX1ZFUlNJT05fTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfR0RSSVZFX1JFTEVBU0VfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9HRFJJVkVfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgICAgcHJpbnRmICIlczogJWRcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkX0dFVF9HRFJJVkVfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXMiICIkX01TR19FUlJPUiIgIiRfR0RSSVZFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgJF9HRVRfR0RSSVZFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogICAgZWxzZQogICAgICBnZXRHb29nbGVEcml2ZUxhdGVzdFZlcnNpb24KICAgIGZpOwogIGZpOwogIGNoZWNrR29vZ2xlRHJpdmVWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cwogIGlmIFsgJF9ET1dOTE9BRF9HRFJJVkVfVVJMX0VYSVNUUyAtbmUgMSBdOyB0aGVuCiAgICAoKF9HRVRfR0RSSVZFX1ZFUlNJT05fNDA0X0FUVEVNUFRTKyspKQogICAgKChfR0VUX0dEUklWRV9WRVJTSU9OX0lOREVYKyspKQogICAgZ2V0R29vZ2xlRHJpdmVMYXRlc3RWZXJzaW9uCiAgZWxzZQogICAgcHJpbnRmICIgKHYlcykgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iICIkX0dEUklWRV9MQVNURVNUX1ZFUlNJT04iCiAgZmk7Cn0KZnVuY3Rpb24gZG93bmxvYWRHb29nbGVEcml2ZSgpIHsKICBfRE9XTkxPQURfR0RSSVZFX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL2dkcml2ZS1vcmcvZ2RyaXZlL3JlbGVhc2VzL2Rvd25sb2FkLyRfR0RSSVZFX0xBU1RFU1RfVkVSU0lPTi9nZHJpdmUtbGludXgteDY0IgogIF9ET1dOTE9BRF9HRFJJVkVfT1VUUFVUPSIkKHN1ZG8gY3VybCAtc0wgIiRfRE9XTkxPQURfR0RSSVZFX1VSTCIgLW8gIiQxIiAyPiYxKSIKICBfRE9XTkxPQURfR0RSSVZFX0VYSVRfQ09ERT0kPwogIGlmICBbICRfRE9XTkxPQURfR0RSSVZFX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyAodiVzKVxuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfR0RSSVZFIiAiJF9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX0dEUklWRV9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET1dOTE9BRF9HRFJJVkVfT1VUUFVUIiA+JjIKICAgIGV4aXQgJF9ET1dOTE9BRF9HRFJJVkVfRVhJVF9DT0RFCiAgZmk7CiAgX0dEUklWRV9CSU5BUllfQ09OVEVOVD0iJChzdWRvIGNhdCAiJDEiIHwgdHIgLWQgJ1wwJykiCiAgaWYgWyAiJF9HRFJJVkVfQklOQVJZX0NPTlRFTlQiID0gIk5vdCBGb3VuZCIgXTsgdGhlbgogICAgaWYgWyAkX0dFVF9HRFJJVkVfVkVSU0lPTl80MDRfQVRURU1QVFMgLWdlICRfR0VUX0dEUklWRV9WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIkMSIKICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lcyAodiVzKVxuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfR0RSSVZFIiAiJF9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX0dEUklWRSIgIiRfRE9XTkxPQURfR0RSSVZFX1VSTCIgPiYyCiAgICAgIHByaW50ZiAiJXM6IDQwNFxuIiAiJF9NU0dfRVJST1JfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfR0RSSVZFX0JJTkFSWV9DT05URU5UIiA+JjIKICAgICAgZXhpdCAxCiAgICBlbHNlCiAgICAgIHByaW50ZiAiICglcykgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iICIkX01TR19OT1RfRk9VTkQiCiAgICAgICgoX0dFVF9HRFJJVkVfVkVSU0lPTl80MDRfQVRURU1QVFMrKykpCiAgICAgICgoX0dFVF9HRFJJVkVfVkVSU0lPTl9JTkRFWCsrKSkKICAgICAgZ2V0R29vZ2xlRHJpdmVMYXRlc3RWZXJzaW9uCiAgICAgIGRvd25sb2FkR29vZ2xlRHJpdmUgIiQxIgogICAgZmk7CiAgZmk7CiAgc3VkbyBjaG1vZCAreCAiJDEiCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gbWFpbigpIHsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0dEUklWRV9DTElFTlQiCiAgaW5zdGFsbFNjcmlwdERlcGVuZGVuY2llcwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OIgogIGdldEdvb2dsZURyaXZlTGF0ZXN0VmVyc2lvbgogIF9HRFJJVkVfRklMRVBBVEg9JChjb21tYW5kIC12IGdkcml2ZSkKICBfR0RSSVZFX0ZJTEVQQVRIX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9HRFJJVkVfRklMRVBBVEhfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIF9HRFJJVkVfRklMRVBBVEg9IiIKICBmaTsKICBpZiBbICIkX0dEUklWRV9GSUxFUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfR0RSSVZFX0NMSUVOVCIgIiRfR0RSSVZFX0xBU1RFU1RfVkVSU0lPTiIKICAgIGRvd25sb2FkR29vZ2xlRHJpdmUgL3Vzci9iaW4vZ2RyaXZlCiAgZWxzZQogICAgX0dEUklWRV9WRVJTSU9OX09VVFBVVD0kKGdkcml2ZSB2ZXJzaW9uIHwgaGVhZCAtbiAxIHwgY3V0IC1kJyAnIC1mMikKICAgIF9HRFJJVkVfVkVSU0lPTl9PVVRQVVRfRVhJVF9DT0RFPSQ/CiAgICBpZiBbICRfR0RSSVZFX1ZFUlNJT05fT1VUUFVUX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgIHN1ZG8gcm0gLWYgIiQoY29tbWFuZCAtdiBnZHJpdmUpIgogICAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19HRFJJVkVfQ0xJRU5UIiAiJF9HRFJJVkVfTEFTVEVTVF9WRVJTSU9OIgogICAgICBkb3dubG9hZEdvb2dsZURyaXZlIC91c3IvYmluL2dkcml2ZQogICAgZWxzZQogICAgICBfR0RSSVZFX0lOU1RBTExFRF9WRVJTSU9OPSRfR0RSSVZFX1ZFUlNJT05fT1VUUFVUCiAgICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICAJcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfR0RSSVZFX0lOU1RBTExFRCIgIiRfR0RSSVZFX0lOU1RBTExFRF9WRVJTSU9OIgogICAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgICAgaWYgWyAiJF9HRFJJVkVfSU5TVEFMTEVEX1ZFUlNJT04iICE9ICIkX0dEUklWRV9MQVNURVNUX1ZFUlNJT04iIF07IHRoZW4KICAgICAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfR0RSSVZFIiAiJF9HRFJJVkVfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgICAgcHJpbnRmICIgLT4gdiVzKS4uLiIgIiRfR0RSSVZFX0xBU1RFU1RfVkVSU0lPTiIKICAgICAgICBzdWRvIHJtIC1mICRfR0RSSVZFX0ZJTEVQQVRICiAgICAgICAgZG93bmxvYWRHb29nbGVEcml2ZSAkX0dEUklWRV9GSUxFUEFUSAogICAgICBmaTsKICAgIGZpOwogIGZpOwp9Cm1haW4K' | base64 -d)
