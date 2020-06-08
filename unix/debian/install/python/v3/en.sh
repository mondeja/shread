#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19TRVRUSU5HX1VQX1BZM19FQ09TWVNURU09IlNldHRpbmcgdXAgUHl0aG9uMyBlY29zeXN0ZW0uLi4iCl9NU0dfSU5TVEFMTElOR19CQVNFX1BBQ0tBR0U9Ikluc3RhbGxpbmcgYmFzZSBwYWNrYWdlIgpfTVNHX0ZPVU5EX1BZM19JTlNUQUxMRUQ9IkZvdW5kIFB5dGhvbjMgaW5zdGFsbGVkIGluIHRoZSBzeXN0ZW0iCl9NU0dfQ0hFQ0tJTkdfQURESVRJT05BTF9QWTNfUEFDS0FHRVM9IkNoZWNraW5nIGFkZGl0aW9uYWwgUHl0aG9uIHBhY2thZ2VzLi4uIgpfTVNHX1VQREFUSU5HX0dMT0JBTF9QWTNfTElCUkFSSUVTPSJVcGRhdGluZyBnbG9iYWwgUHl0aG9uMyBsaWJyYXJpZXMuLi4iCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7Cl9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0xCklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1uby11cGdyYWRlLXB5My1nbG9iYWwtbGlicykKICAgIF9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0wCiAgICBzaGlmdAogICAgOzsKICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludFByZXBlbmRlZFN0ZG91dCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgW1sgIiQoc3VkbyBkcGtnIC1zIGRlYmNvbmYtdXRpbHMgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGRlYmNvbmYtdXRpbHMgPiAvZGV2L251bGwKZmk7CmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EPSQoCiAgICBzdWRvIGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMgfCBcCiAgICBncmVwIGRlYmNvbmYvZnJvbnRlbmQgfCBcCiAgICBhd2sgJ3twcmludCAkNH0nKQogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgTm9uaW50ZXJhY3RpdmUnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7CmlmIFsgLXogIiRVTklYX0RJU1RSTyIgXTsgdGhlbgogIGlmIFtbICIkKHN1ZG8gZHBrZyAtcyBjdXJsIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGN1cmwgPiAvZGV2L251bGwKICBmaTsKICBzb3VyY2UgPChjdXJsIC1zTCBodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vdXRpbC9nZXQtZGlzdHJvLnNoKQpmaTsKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNIgpwcmludFByZXBlbmRlZFN0ZG91dApQWTNfQklOQVJZX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgcHl0aG9uMykiCmlmIFsgIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiA9ICIiIF07IHRoZW4KICBfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT049JCgKICAgIGFwdC1jYWNoZSBwb2xpY3kgcHl0aG9uMy1kZXYgfCBncmVwIC1QbyAnKFxkK1wuKStcZCsnIHwgaGVhZCAtbiAxKQogIHByaW50ZiAiICAlcyIgIiRfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFIgogIGlmIFsgIiRfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KCSAgcHJpbnRmICIgKHYlcykiICIkX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OIgogIGZpOwogIHByaW50ZiAiLi4uIgoJc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBweXRob24zLWRldiA+IC9kZXYvbnVsbAogIF9QWVRIT05fVkVSU0lPTj0iJCgiJFBZM19CSU5BUllfRklMRVBBVEgiIC0tdmVyc2lvbiB8IGN1dCAtYzctMTIgfCB0ciAtZCAnICcpIgplbHNlCiAgX1BZVEhPTl9WRVJTSU9OPSIkKCIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1jNy0xMiB8IHRyIC1kICcgJykiCglwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9QWTNfSU5TVEFMTEVEIiAiJF9QWVRIT05fVkVSU0lPTiIKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpJTlNUQUxMQVRJT05fUEFDS0FHRVM9KAogICJweXRob24tZGV2IgogICJweXRob24zLWRldiIKICAicHl0aG9uLXBpcCIKICAicHl0aG9uMy1waXAiCiAgInB5dGhvbjMtc2V0dXB0b29scyIKICAicHl0aG9uMy10ZXN0cmVzb3VyY2VzIgogICJsaWJ4bWwyLXV0aWxzIgogICJweXRob24tbHhtbCIKICAicHl0aG9uMy1seG1sIgogICJweXRob24tbnVtcHkiCiAgInB5dGhvbjMtbnVtcHkiCikKaWYgWyAiJFVOSVhfRElTVFJPIiA9ICJ1YnVudHUiIF07IHRoZW4KICBVQlVOVFVfVkVSU0lPTl9DT0RFTkFNRT0kKHByaW50ZiAiJXMiICIkKGxzYl9yZWxlYXNlIC1ycyB8IHRyIC1kICdcbicpLCQobHNiX3JlbGVhc2UgLWNzIHwgdHIgLWQgJ1xuJykiIDI+JjEpCiAgVUJVTlRVX1ZFUlNJT049JChwcmludGYgIiVzIiAiJFVCVU5UVV9WRVJTSU9OX0NPREVOQU1FIiB8IGN1dCAtZCcsJyAtZjEgfCB0ciAtZCAnIicpCiAgVUJVTlRVX1ZFUlNJT05fTUFKT1I9JChwcmludGYgIiVzIiAiJFVCVU5UVV9WRVJTSU9OIiB8IGN1dCAtZCcuJyAtZjEpCiAgaWYgWyAiJFVCVU5UVV9WRVJTSU9OX01BSk9SIiAtZ2UgMTggXTsgdGhlbgogICAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTKz0oCiAgICAgICJweXRob24zLWRpc3R1dGlscyIKICAgICkKICBmaTsKZmk7CnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQURESVRJT05BTF9QWTNfUEFDS0FHRVMiCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX1BBQ0tBR0VTW0BdfSI7IGRvCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgaWYgW1sgIiQoZHBrZyAtcyAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKICBfREVQX1ZFUlNJT049JChhcHQtY2FjaGUgcG9saWN5ICIkREVQIiB8IGdyZXAgLVBvICIoXGQrXC4pK1xkKyIgfCBoZWFkIC1uIDEpCiAgaWYgWyAiJF9ERVBfVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogICAgcHJpbnRmICIgKHYlcykiICIkX0RFUF9WRVJTSU9OIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpkb25lClVTRVJfSE9NRT0iJChnZXRlbnQgcGFzc3dkICIkU1VET19VU0VSIiB8IGN1dCAtZDogLWY2KSIKaWYgWyAtZCAiJEhPTUUvLmNhY2hlL3BpcC8iIF07IHRoZW4KICBfUElQX0NBQ0hFX0ZJTEVQQVRIPSIkVVNFUl9IT01FLy5jYWNoZS9waXAvIgogIGlmIFsgLWYgIiRfUElQX0NBQ0hFX0ZJTEVQQVRIIiBdOyB0aGVuCiAgICBzdWRvIGNob3duIC1SICIkU1VET19VU0VSIiAiJF9QSVBfQ0FDSEVfRklMRVBBVEgiCiAgZmk7CmZpOwppZiBbICIkKGNvbW1hbmQgLXYgcHl0aG9uMikiICE9ICIiIF07IHRoZW4KICBzdWRvIHB5dGhvbjIgLW0gcGlwIGluc3RhbGwgLXFxIHBpcD09MjAuMC4yCmZpOwppZiBbICRfVVBHUkFERV9QWTNfR0xPQkFMX0xJQlMgLWVxIDEgXTsgdGhlbgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzXG4iICIkX01TR19VUERBVElOR19HTE9CQUxfUFkzX0xJQlJBUklFUyIKICBHTE9CQUxfUkVDT01NRU5ERURfTElCUkFSSUVTPSgKICAgICJwaXAiCiAgICAidmlydHVhbGVudiIKICAgICJzZXR1cHRvb2xzIgogICAgInRlc3RyZXNvdXJjZXMiCiAgKQogIGZvciBMSUIgaW4gIiR7R0xPQkFMX1JFQ09NTUVOREVEX0xJQlJBUklFU1tAXX0iOyBkbwogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgIHByaW50ZiAiICAgICVzIiAiJExJQiIKICAgIF9HRVRfVkVSU0lPTl9FWEVDX1NUUj0iCmltcG9ydCBzeXM7CnRyeTogaW1wb3J0ICRMSUIgYXMgbDsKZXhjZXB0IEltcG9ydEVycm9yIGFzIGVycjogc3lzLmV4aXQoNzc3KTsKcHJpbnQobC5fX3ZlcnNpb25fXyBpZiBpc2luc3RhbmNlKGwuX192ZXJzaW9uX18sIHN0cikgZWxzZSBcCiAgJy4nLmpvaW4oW3N0cih2KSBmb3IgdiBpbiBsLl9fdmVyc2lvbl9fXVs6M10pLCBlbmQ9JycpOwoiCiAgICBfTElCX0xPQ0FMX1ZFUlNJT049IiQoIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtYyAiJF9HRVRfVkVSU0lPTl9FWEVDX1NUUiIpIgogICAgX0xJQl9MT0NBTF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogICAgaWYgWyAkX0xJQl9MT0NBTF9WRVJTSU9OX0VYSVRfQ09ERSAtZXEgNzc3IF07IHRoZW4KICAgIAlzdWRvIC1IICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLW0gcGlwIGluc3RhbGwgLVUgLS1xdWlldCAiJExJQiIKICAgIGVsc2UKICAgICAgcHJpbnRmICIgKCIKICAgICAgaWYgWyAiJF9MSUJfTE9DQUxfVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogICAgICAgIHByaW50ZiAidiVzIiAiJF9MSUJfTE9DQUxfVkVSU0lPTiIKICAgICAgZmk7CiAgICAgIF9MSUJfTEFTVF9QWVBJX1ZFUlNJT049JCgKICAgICAgICB4bWxsaW50IC0taHRtbCAtLXhwYXRoICIvL2FbbGFzdCgpXS90ZXh0KCkgIiBcCiAgICAgICAgICA8KGN1cmwgLXNMICJodHRwczovL3B5cGkub3JnL3NpbXBsZS8kTElCLyIpIHwgXAogICAgICAgICAgZ3JlcCAtUG8gIihcZCtcLikrXGQrXHcqIikKICAgICAgICBpZiBbICIkX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIgIT0gIiRfTElCX0xPQ0FMX1ZFUlNJT04iIF07IHRoZW4KICAgICAgICAgIGlmIFsgIiRfTElCX0xPQ0FMX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgICAgICAgcHJpbnRmICIgLT4gIgogICAgICAgICAgZmk7CiAgICAgICAgICBwcmludGYgInYlcykuLi4iICIkX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIKICAgICAgICAgIF9saWJfZXF1YWxfdmVyc2lvbj0iJExJQj09JF9MSUJfTEFTVF9QWVBJX1ZFUlNJT04iCiAgICAgICAgICBzdWRvIC1IICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLW0gcGlwIGluc3RhbGwgLVUgLXFxICIkX2xpYl9lcXVhbF92ZXJzaW9uIgogICAgICAgIGVsc2UKICAgICAgICAgIHByaW50ZiAiKSIKICAgICAgICBmaTsKICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQpmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCAkX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7Cg==' | base64 -d)
