#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNPSJDb25maWd1cmFuZG8gZWNvc2lzdGVtYSBQeXRob24zLi4uIgpfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFPSJJbnN0YWxhbmRvIHBhcXVldGUgYmFzZSIKX01TR19GT1VORF9QWTNfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIFB5dGhvbjMgaW5zdGFsYWRvIGVuIGVsIHNpc3RlbWEiCl9NU0dfQ0hFQ0tJTkdfQURESVRJT05BTF9QWTNfUEFDS0FHRVM9IkNvbXByb2JhbmRvIHBhcXVldGVzIGRlIFB5dGhvbiBhZGljaW9uYWxlcy4uLiIKX01TR19VUERBVElOR19HTE9CQUxfUFkzX0xJQlJBUklFUz0iQWN0dWFsaXphbmRvIGJpYmxpb3RlY2FzIGRlIFB5dGhvbjMgZ2xvYmFsZXMuLi4iCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7Cl9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0xCklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1uby11cGdyYWRlLXB5My1nbG9iYWwtbGlicykKICAgIF9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0wCiAgICBzaGlmdAogICAgOzsKICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludFByZXBlbmRlZFN0ZG91dCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgW1sgIiQoc3VkbyBkcGtnIC1zIGRlYmNvbmYtdXRpbHMgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGRlYmNvbmYtdXRpbHMgPiAvZGV2L251bGwKZmk7CmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EPSQoCiAgICBzdWRvIGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMgfCBcCiAgICBncmVwIGRlYmNvbmYvZnJvbnRlbmQgfCBcCiAgICBhd2sgJ3twcmludCAkNH0nKQogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgTm9uaW50ZXJhY3RpdmUnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7CmlmIFsgLXogIiRVTklYX0RJU1RSTyIgXTsgdGhlbgogIGlmIFtbICIkKHN1ZG8gZHBrZyAtcyBjdXJsIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGN1cmwgPiAvZGV2L251bGwKICBmaTsKICBzb3VyY2UgPChjdXJsIC1zTCBodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vdXRpbC9nZXQtZGlzdHJvLnNoKQpmaTsKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNIgpwcmludFByZXBlbmRlZFN0ZG91dApQWTNfQklOQVJZX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgcHl0aG9uMykiCmlmIFsgIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiA9ICIiIF07IHRoZW4KICBfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT049JCgKICAgIGFwdC1jYWNoZSBwb2xpY3kgcHl0aG9uMy1kZXYgfCBncmVwIC1QbyAnKFxkK1wuKStcZCsnIHwgaGVhZCAtbiAxKQogIHByaW50ZiAiICAlcyIgIiRfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFIgogIGlmIFsgIiRfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KCSAgcHJpbnRmICIgKHYlcykiICIkX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OIgogIGZpOwogIHByaW50ZiAiLi4uIgoJc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBweXRob24zLWRldiA+IC9kZXYvbnVsbAogIF9QWVRIT05fVkVSU0lPTj0iJCgiJFBZM19CSU5BUllfRklMRVBBVEgiIC0tdmVyc2lvbiB8IGN1dCAtYzctMTIgfCB0ciAtZCAnICcpIgplbHNlCiAgX1BZVEhPTl9WRVJTSU9OPSIkKCIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1jNy0xMiB8IHRyIC1kICcgJykiCglwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9QWTNfSU5TVEFMTEVEIiAiJF9QWVRIT05fVkVSU0lPTiIKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpJTlNUQUxMQVRJT05fUEFDS0FHRVM9KAogICJweXRob24tZGV2IgogICJweXRob24zLWRldiIKICAicHl0aG9uMy1waXAiCiAgInB5dGhvbjMtc2V0dXB0b29scyIKICAicHl0aG9uMy10ZXN0cmVzb3VyY2VzIgogICJsaWJ4bWwyLXV0aWxzIgogICJweXRob24tbHhtbCIKICAicHl0aG9uMy1seG1sIgogICJweXRob24tbnVtcHkiCiAgInB5dGhvbjMtbnVtcHkiCikKaWYgWyAiJFVOSVhfRElTVFJPIiA9ICJ1YnVudHUiIF07IHRoZW4KICBVQlVOVFVfVkVSU0lPTl9DT0RFTkFNRT0kKHByaW50ZiAiJXMiICIkKGxzYl9yZWxlYXNlIC1ycyB8IHRyIC1kICdcbicpLCQobHNiX3JlbGVhc2UgLWNzIHwgdHIgLWQgJ1xuJykiIDI+JjEpCiAgVUJVTlRVX1ZFUlNJT049JChwcmludGYgIiVzIiAiJFVCVU5UVV9WRVJTSU9OX0NPREVOQU1FIiB8IGN1dCAtZCcsJyAtZjEgfCB0ciAtZCAnIicpCiAgVUJVTlRVX1ZFUlNJT05fTUFKT1I9JChwcmludGYgIiVzIiAiJFVCVU5UVV9WRVJTSU9OIiB8IGN1dCAtZCcuJyAtZjEpCiAgaWYgWyAiJFVCVU5UVV9WRVJTSU9OX01BSk9SIiAtZ2UgMTggXTsgdGhlbgogICAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTKz0oCiAgICAgICJweXRob24zLWRpc3R1dGlscyIKICAgICkKICBmaTsKICBpZiBbICIkVUJVTlRVX1ZFUlNJT05fTUFKT1IiIC1sdCAyMCBdOyB0aGVuCiAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgInB5dGhvbi1waXAiCiAgICApCiAgZmk7CmZpOwpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0FERElUSU9OQUxfUFkzX1BBQ0tBR0VTIgpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9QQUNLQUdFU1tAXX0iOyBkbwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICAgJXMiICIkREVQIgogIGlmIFtbICIkKGRwa2cgLXMgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CiAgX0RFUF9WRVJTSU9OPSQoYXB0LWNhY2hlIHBvbGljeSAiJERFUCIgfCBncmVwIC1QbyAiKFxkK1wuKStcZCsiIHwgaGVhZCAtbiAxKQogIGlmIFsgIiRfREVQX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiICh2JXMpIiAiJF9ERVBfVkVSU0lPTiIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZG9uZQpVU0VSX0hPTUU9IiQoZ2V0ZW50IHBhc3N3ZCAiJFNVRE9fVVNFUiIgfCBjdXQgLWQ6IC1mNikiCmlmIFsgLWQgIiRIT01FLy5jYWNoZS9waXAvIiBdOyB0aGVuCiAgX1BJUF9DQUNIRV9GSUxFUEFUSD0iJFVTRVJfSE9NRS8uY2FjaGUvcGlwLyIKICBpZiBbIC1mICIkX1BJUF9DQUNIRV9GSUxFUEFUSCIgXTsgdGhlbgogICAgc3VkbyBjaG93biAtUiAiJFNVRE9fVVNFUiIgIiRfUElQX0NBQ0hFX0ZJTEVQQVRIIgogIGZpOwpmaTsKaWYgWyAiJChjb21tYW5kIC12IHB5dGhvbjIpIiAhPSAiIiBdOyB0aGVuCiAgc3VkbyBweXRob24yIC1tIHBpcCBpbnN0YWxsIC1xcSBwaXA9PTIwLjAuMgpmaTsKaWYgWyAkX1VQR1JBREVfUFkzX0dMT0JBTF9MSUJTIC1lcSAxIF07IHRoZW4KICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfVVBEQVRJTkdfR0xPQkFMX1BZM19MSUJSQVJJRVMiCiAgR0xPQkFMX1JFQ09NTUVOREVEX0xJQlJBUklFUz0oCiAgICAicGlwIgogICAgInZpcnR1YWxlbnYiCiAgICAic2V0dXB0b29scyIKICAgICJ0ZXN0cmVzb3VyY2VzIgogICkKICBmb3IgTElCIGluICIke0dMT0JBTF9SRUNPTU1FTkRFRF9MSUJSQVJJRVNbQF19IjsgZG8KICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICBwcmludGYgIiAgICAlcyIgIiRMSUIiCiAgICBfR0VUX1ZFUlNJT05fRVhFQ19TVFI9IgppbXBvcnQgc3lzOwp0cnk6IGltcG9ydCAkTElCIGFzIGw7CmV4Y2VwdCBJbXBvcnRFcnJvciBhcyBlcnI6IHN5cy5leGl0KDc3Nyk7CnByaW50KGwuX192ZXJzaW9uX18gaWYgaXNpbnN0YW5jZShsLl9fdmVyc2lvbl9fLCBzdHIpIGVsc2UgXAogICcuJy5qb2luKFtzdHIodikgZm9yIHYgaW4gbC5fX3ZlcnNpb25fX11bOjNdKSwgZW5kPScnKTsKIgogICAgX0xJQl9MT0NBTF9WRVJTSU9OPSIkKCIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLWMgIiRfR0VUX1ZFUlNJT05fRVhFQ19TVFIiKSIKICAgIF9MSUJfTE9DQUxfVkVSU0lPTl9FWElUX0NPREU9JD8KICAgIGlmIFsgJF9MSUJfTE9DQUxfVkVSU0lPTl9FWElUX0NPREUgLWVxIDc3NyBdOyB0aGVuCiAgICAJc3VkbyAtSCAiJFBZM19CSU5BUllfRklMRVBBVEgiIC1tIHBpcCBpbnN0YWxsIC1VIC0tcXVpZXQgIiRMSUIiCiAgICBlbHNlCiAgICAgIHByaW50ZiAiICgiCiAgICAgIGlmIFsgIiRfTElCX0xPQ0FMX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgICBwcmludGYgInYlcyIgIiRfTElCX0xPQ0FMX1ZFUlNJT04iCiAgICAgIGZpOwogICAgICBfTElCX0xBU1RfUFlQSV9WRVJTSU9OPSQoCiAgICAgICAgeG1sbGludCAtLWh0bWwgLS14cGF0aCAiLy9hW2xhc3QoKV0vdGV4dCgpICIgXAogICAgICAgICAgPChjdXJsIC1zTCAiaHR0cHM6Ly9weXBpLm9yZy9zaW1wbGUvJExJQi8iKSB8IFwKICAgICAgICAgIGdyZXAgLVBvICIoXGQrXC4pK1xkK1x3KiIpCiAgICAgICAgaWYgWyAiJF9MSUJfTEFTVF9QWVBJX1ZFUlNJT04iICE9ICIkX0xJQl9MT0NBTF9WRVJTSU9OIiBdOyB0aGVuCiAgICAgICAgICBpZiBbICIkX0xJQl9MT0NBTF9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgICAgICAgIHByaW50ZiAiIC0+ICIKICAgICAgICAgIGZpOwogICAgICAgICAgcHJpbnRmICJ2JXMpLi4uIiAiJF9MSUJfTEFTVF9QWVBJX1ZFUlNJT04iCiAgICAgICAgICBfbGliX2VxdWFsX3ZlcnNpb249IiRMSUI9PSRfTElCX0xBU1RfUFlQSV9WRVJTSU9OIgogICAgICAgICAgc3VkbyAtSCAiJFBZM19CSU5BUllfRklMRVBBVEgiIC1tIHBpcCBpbnN0YWxsIC1VIC1xcSAiJF9saWJfZXF1YWxfdmVyc2lvbiIKICAgICAgICBlbHNlCiAgICAgICAgICBwcmludGYgIikiCiAgICAgICAgZmk7CiAgICBmaTsKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGRvbmUKZmk7CmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgJF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwo=' | base64 -d)
