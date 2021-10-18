#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCiMhL2Jpbi9iYXNoCl9NU0dfRVJST1JfUkVUUklFVklOR19CT09TVE5PVEVfUkVMRUFTRVNfSU5GTz0iT2N1cnJpw7MgdW4gZXJyb3Igb2J0ZW5pZW5kbyBsYSBpbmZvcm1hY2nDs24gZGUgbGFzIHJlbGVhc2VzIGRlIEJvb3N0bm90ZSBkZSBsYSBBUEkgZGUgR2l0aHViLiIKX01TR19VUkw9IlVSTCIKX01TR19FUlJPUj0iRXJyb3IiCl9NU0dfRVJST1JfQ09ERT0iQ8OzZGlnbyBkZSBlcnJvciIKX01TR19OT1RfRk9VTkQ9Ik5vIGVuY29udHJhZG8iCl9NU0dfRVJST1JfUEFSU0lOR19QRU5VTFRJTUFURV9CT09TVE5PVEVfUkVMRUFTRT0iT2N1cnJpw7MgdW4gZXJyb3IgcGFyc2VhbmRvIGxhIHBlbsO6bHRpbWEgcmVsZWFzZSBkZSBCb29zdG5vdGUgZGUgbGEgQVBJIGRlIEdpdGh1Yi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0JPT1NUTk9URV9WRVJTSU9OPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZGUgQm9vc3Rub3RlLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19CT09TVE5PVEU9Ik9jdXJyacOzIHVuIGVycm9yIGRlc2NhcmdhbmRvIEJvb3N0bm90ZSIKX01TR19DSEVDS0lOR19CT09TVE5PVEU9IkNvbXByb2JhbmRvIEJvb3N0bm90ZS4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RfQVZBSUxBQkxFX1ZFUlNJT049Ik9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzacOzbiBkaXNwb25pYmxlLi4uIgpfTVNHX0RPV05MT0FESU5HX0JPT1NUTk9URT0iRGVzY2FyZ2FuZG8gQm9vc3Rub3RlIgpfTVNHX0lOU1RBTExJTkdfQk9PU1ROT1RFPSJJbnN0YWxhbmRvIEJvb3N0bm90ZSIKX01TR19CT09TVE5PVEVfRk9VTkRfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIEJvb3N0bm90ZSBpbnN0YWxhZG8gZW4gZWwgc2lzdGVtYSIKX01TR19VUERBVElOR19CT09TVE5PVEU9IkFjdHVhbGl6YW5kbyBCb29zdG5vdGUiCkdJVEhVQl9BUElfQ1VSTF9BVVRIPSIiCmlmIFsgLW4gIiRHSVRIVUJfVVNFUk5BTUUiIF0gJiYgWyAtbiAiJEdJVEhVQl9UT0tFTiIgXTsgdGhlbgogIEdJVEhVQl9BUElfQ1VSTF9BVVRIPSIkR0lUSFVCX1VTRVJOQU1FOiRHSVRIVUJfVE9LRU4iCmZpOwpJTkRFTlRfU1RSSU5HPSIiClNFVFg9MApfVVBEQVRFPTAKZnVuY3Rpb24gdXNhZ2UgewogICAgY2F0IDw8SEVMUF9VU0FHRQpVc2FnZTogdW5peC9kZWJpYW4vaW5zdGFsbC9ib29zdG5vdGUvJF9TQ1JJUFRfRklMRU5BTUUgWy1oXSBbLWkgU1RSSU5HXSBbLXVdCgogIEluc3RhbGEgeS9vLCBvcGNpb25hbG1lbnRlLCBhY3R1YWxpemEgQm9vc3Rub3RlIG9idGVuaWVuZG8gZWwgY8OzZGlnbyBmdWVudGUgZGUgc3UgcmVwb3NpdG9yaW8gZGUgR2l0aHViLgoKT3B0aW9uczoKICAtaCwgLS1oZWxwICAgICAgICAgICAgICAgICAgICAgICAgU2hvdyB0aGlzIGhlbHAgbWVzc2FnZSBhbmQgZXhpdC4KICAtaSBTVFJJTkcsIC0taW5kZW50IFNUUklORyAgICAgICAgRWFjaCBsaW5lIG9mIHRoZSBzY3JpcHQgb3V0cHV0IHdpbGwgYmUgcHJlY2VkZWQgd2l0aCB0aGUgc3RyaW5nIGRlZmluZWQgaW4gdGhpcyBwYXJhbWV0ZXIuCiAgLS1zZXQteCAgICAgICAgICAgICAgICAgICAgICAgICAgIFNldHMgdGhlIC14IG9wdGlvbiBpbiBCYXNoIHRvIHByaW50IG91dCB0aGUgc3RhdGVtZW50cyBhcyB0aGV5IGFyZSBiZWluZyBleGVjdXRlZC4gVXNlZnVsIGZvciBkZWJ1Z2dpbmcgcHVycG9zZXMuCiAgLXUsIC0tdXBkYXRlICAgICAgICAgICAgICAgICAgICAgIFVwZGF0ZXMgQm9vc3Rub3RlIHRvIHRoZSBwZW51bHRpbWF0ZSByZWxlYXNlIGF2YWlsYWJsZS4KCkhFTFBfVVNBR0UKICAgIGV4aXQgMQp9CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC1pfC0taW5kZW50KQogICAgSU5ERU5UX1NUUklORz0iJDIiCiAgICBzaGlmdCAyCiAgICA7OwogICAgLWh8LS1oZWxwKQogICAgc2hpZnQKICAgIHVzYWdlCiAgICA7OyAgICAtLXNldC14KQogICAgU0VUWD0xCiAgICBzaGlmdAogICAgOzsgICAgCiAgICAtdXwtLXVwZGF0ZSkKICAgIF9VUERBVEU9MQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQppZiBbICIkU0VUWCIgLWVxIDEgXTsgdGhlbiBzZXQgLXg7IGZpCmZ1bmN0aW9uIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZCgpIHsKICBpZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwp9CmZ1bmN0aW9uIGluc3RhbGxTY3JpcHREZXBlbmRlbmNpZXMoKSB7CiAgaW5zdGFsbFBhY21hbklmTm90SW5zdGFsbGVkCiAgSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgICAianEiCiAgKQogIGZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgZG9uZTsKfQpBUkNIPSJhbWQ2NCIKZnVuY3Rpb24gZGlzY292ZXJTeXN0ZW1BcmNoKCkgewogIGNhc2UgJCh1bmFtZSAtbSkgaW4KICAgICAgaTM4NikgICBBUkNIPSIzODYiIDs7CiAgICAgIGk2ODYpICAgQVJDSD0iMzg2IiA7OwogICAgICB4ODZfNjQpIEFSQ0g9ImFtZDY0IiA7OwogICAgICBhcm0pICAgIGRwa2cgLS1wcmludC1hcmNoaXRlY3R1cmUgfCBncmVwIC1xICJhcm02NCIgJiYgQVJDSD0iYXJtNjQiIHx8IEFSQ0g9ImFybSIgOzsKICBlc2FjCn0KX0dFVF9CT09TVE5PVEVfVkVSU0lPTl9JTkRFWD0wCl9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fNDA0X0FUVEVNUFRTPTAKX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfTUFYX0FUVEVNUFRTPTEwCmZ1bmN0aW9uIGNoZWNrQm9vc3Rub3RlVmVyc2lvblRvRG93bmxvYWRFeGlzdHMoKSB7CiAgX0RPV05MT0FEX0JPT1NUTk9URV9VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9Cb29zdElPL2Jvb3N0LXJlbGVhc2VzL3JlbGVhc2VzL2Rvd25sb2FkL3YkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04vYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059XyRBUkNILmRlYiIKICBfRE9XTkxPQURfQk9PU1ROT1RFX1VSTF9FWElTVFM9MAogIGlmIGN1cmwgLS1vdXRwdXQgL2Rldi9udWxsIC0tc2lsZW50IC0taGVhZCAtLWZhaWwgIiRfRE9XTkxPQURfQk9PU1ROT1RFX1VSTCI7IHRoZW4KICAgIF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMX0VYSVNUUz0xCiAgZmk7Cn0KX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fQVRURU1QVFM9MApfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9NQVhfQVRURU1QVFM9NQpfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkw9Imh0dHBzOi8vYXBpLmdpdGh1Yi5jb20vcmVwb3MvQm9vc3RJTy9ib29zdC1yZWxlYXNlcy9yZWxlYXNlcyIKZnVuY3Rpb24gZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbigpIHsKICBfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk89IiQoY3VybCAtc0wgIiRHSVRIVUJfQVBJX0NVUkxfQVVUSCIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkwiIDI+JjEpIgogIF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFPSIkKGVjaG8gIiRfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk8iIHwganEgLXIgJy5tZXNzYWdlJyAyPiYxKSIKICBfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREU9JD8KICBpZiBbICRfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk8iID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFIiA+JjIKICAgIGV4aXQgJF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERQogIGZpOwogIF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OPSQoCiAgICBlY2hvICIkX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPIiB8ICAgICBqcSAtciAiLlskX0dFVF9CT09TVE5PVEVfVkVSU0lPTl9JTkRFWF0ubmFtZSIgMj4mMQogICkKICBfUEFSU0VfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREU9JD8KICBpZiBbICRfUEFSU0VfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXNcbiIgIiRfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfQk9PU1ROT1RFX1JFTEVBU0UiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgcHJpbnRmICIlczogJWRcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzIiAiJF9NU0dfRVJST1IiICIkX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgZXhpdCAkX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFCiAgZmk7CiAgX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT049IiQoZWNobyAiJF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIiB8IGN1dCAtZCd2JyAtZjIgMj4mMSkiCiAgX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICgoIF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTKysgKSkKICAgIGlmIFsgJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX0FUVEVNUFRTIC1nZSAkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fTUFYX0FUVEVNUFRTIF07IHRoZW4KICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RfQk9PU1ROT1RFX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzIiAiJF9NU0dfRVJST1IiICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgICBleGl0ICRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUKICAgIGVsc2UKICAgICAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogICAgZmk7CiAgZmk7CiAgY2hlY2tCb29zdG5vdGVWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cwogIGlmIFsgJF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMX0VYSVNUUyAtbmUgMSBdOyB0aGVuCiAgICAoKCBfR0VUX0JPT1NUTk9URV9WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAoKCBfR0VUX0JPT1NUTk9URV9WRVJTSU9OX0lOREVYKysgKSkKICAgIGdldEJvb3N0bm90ZUxhdGVzdFZlcnNpb24KICBlbHNlCiAgICBwcmludGYgIiAodiVzKSIgIiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGZpOwp9CmZ1bmN0aW9uIGRvd25sb2FkQm9vc3Rub3RlKCkgewogIHByaW50SW5kZW50CiAgX0RPV05MT0FEX0JPT1NUTk9URV9VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9Cb29zdElPL2Jvb3N0LXJlbGVhc2VzL3JlbGVhc2VzL2Rvd25sb2FkL3YkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04vYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059XyRBUkNILmRlYiIKICBfRE9XTkxPQURfQk9PU1ROT1RFX09VVFBVVD0iJChzdWRvIGN1cmwgLXNMICIkX0RPV05MT0FEX0JPT1NUTk9URV9VUkwiIC1vICIkMSIgMj4mMSkiCiAgX0RPV05MT0FEX0JPT1NUTk9URV9FWElUX0NPREU9JD8KICBpZiAgWyAkX0RPV05MT0FEX0JPT1NUTk9URV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMgdiVzXG4iICIkX01TR19FUlJPUl9ET1dOTE9BRElOR19CT09TVE5PVEUiICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfRE9XTkxPQURfQk9PU1ROT1RFX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0RPV05MT0FEX0JPT1NUTk9URV9PVVRQVVQiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkX0RPV05MT0FEX0JPT1NUTk9URV9FWElUX0NPREUiID4mMgogICAgZXhpdCAxCiAgZmk7CiAgX0JPT1NUTk9URV9CSU5BUllfQ09OVEVOVD0iJChzdWRvIGNhdCAiJDEiIHwgdHIgLWQgJ1wwJykiCiAgaWYgWyAiJF9CT09TVE5PVEVfQklOQVJZX0NPTlRFTlQiID0gIk5vdCBGb3VuZCIgXTsgdGhlbgogICAgaWYgWyAkX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfQVRURU1QVFMgLWdlICRfR0VUX0JPT1NUTk9URV9WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIkMSIKICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lcyB2JXNcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX0JPT1NUTk9URSIgIiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX0JPT1NUTk9URV9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiA0MDRcbiIgIiRfTVNHX0VSUk9SX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0JPT1NUTk9URV9CSU5BUllfQ09OVEVOVCIgPiYyCiAgICAgIGV4aXQgMQogICAgZWxzZQogICAgICBwcmludGYgIiAoJXMpIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiAiJF9NU0dfTk9UX0ZPVU5EIgogICAgICAoKCBfR0VUX0JPT1NUTk9URV9WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAgICgoIF9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fSU5ERVgrKyApKQogICAgICBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uCiAgICAgIGRvd25sb2FkQm9vc3Rub3RlICIkMSIKICAgIGZpOwogIGZpOwp9CmZ1bmN0aW9uIGluc3RhbGxCb29zdG5vdGUoKSB7CiAgc3VkbyBkcGtnIC1pICIkMSIgPiAvZGV2L251bGwKICBzdWRvIHJtIC1mICIkMSIKfQpmdW5jdGlvbiBtYWluKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQk9PU1ROT1RFIgogIGluc3RhbGxTY3JpcHREZXBlbmRlbmNpZXMKICBkaXNjb3ZlclN5c3RlbUFyY2gKICBpZiAhIF9CT09TVE5PVEVfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBib29zdG5vdGUpIjsgdGhlbgogICAgX0JPT1NUTk9URV9CSU5BUllfUEFUSD0iIgogIGZpOwogIF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIPSIvbGliL2Jvb3N0bm90ZS9yZXNvdXJjZXMvYXBwL3BhY2thZ2UuanNvbiIKICBpZiBbICEgLWYgIiRfQk9PU1ROT1RFX1BBQ0tBR0VfSlNPTl9GSUxFUEFUSCIgXTsgdGhlbgogICAgX0JPT1NUTk9URV9QQUNLQUdFX0pTT05fRklMRVBBVEg9Ii91c3IvbGliL2Jvb3N0bm90ZS9yZXNvdXJjZXMvYXBwL3BhY2thZ2UuanNvbiIKICBmaTsKICBpZiBbICIkX0JPT1NUTk9URV9CSU5BUllfUEFUSCIgPSAiIiBdIHx8IFsgISAtZiAiJF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIIiBdOyB0aGVuCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OIgogICAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0RPV05MT0FESU5HX0JPT1NUTk9URSIgIiR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059IgogICAgZG93bmxvYWRCb29zdG5vdGUgIi90bXAvYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059LmRlYiIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0lOU1RBTExJTkdfQk9PU1ROT1RFIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIgogICAgaW5zdGFsbEJvb3N0bm90ZSAiL3RtcC9ib29zdG5vdGVfJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn0uZGViIgogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZWxzZQogICAgX0JPT1NUTk9URV9JTlNUQUxMRURfVkVSU0lPTj0kKAogICAgICBzdWRvIGNhdCAiJF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIIiB8ICAgICAgIGdyZXAgJyJ2ZXJzaW9uIjogJyB8ICAgICAgIGN1dCAtZCciJyAtZjQKICAgICkKICAgIHByaW50SW5kZW50CiAgCXByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0JPT1NUTk9URV9GT1VORF9JTlNUQUxMRUQiICIkX0JPT1NUTk9URV9JTlNUQUxMRURfVkVSU0lPTiIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgaWYgWyAiJF9CT09TVE5PVEVfSU5TVEFMTEVEX1ZFUlNJT04iICE9ICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iIF07IHRoZW4KICAgICAgaWYgWyAkX1VQREFURSAtZXEgMSBdOyB0aGVuCiAgICAgICAgcHJpbnRJbmRlbnQKICAgICAgICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfQVZBSUxBQkxFX1ZFUlNJT04iCiAgICAgICAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogICAgICAgIHByaW50SW5kZW50CiAgICAgICAgcHJpbnRmICIgICVzICh2JXMiICIkX01TR19VUERBVElOR19CT09TVE5PVEUiICIkX0JPT1NUTk9URV9JTlNUQUxMRURfVkVSU0lPTiIKICAgICAgICBwcmludGYgIiAtPiB2JXMpLi4uIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIgogICAgICAgIHN1ZG8gcm0gLWYgIiRfQk9PU1ROT1RFX0JJTkFSWV9QQVRIIgogICAgICAgIGRvd25sb2FkQm9vc3Rub3RlICIvdG1wL2Jvb3N0bm90ZV8ke19CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OfS5kZWIiCiAgICAgICAgaW5zdGFsbEJvb3N0bm90ZSAiL3RtcC9ib29zdG5vdGVfJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn0uZGViIgogICAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgICBmaTsKICAgIGZpOwogIGZpOwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7CmlmIFsgIiRTRVRYIiAtZXEgMSBdOyB0aGVuIHNldCAreDsgZmk='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
