#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19DSEVDS0lOR19NT1pJTExBX0VDT1NZU1RFTT0iQ2hlY2tpbmcgTW96aWxsYSBlY29zeXN0ZW0uLi4iCl9NU0dfRk9VTkRfTU9aSUxMQV9GSVJFRk9YX0lOU1RBTExFRD0iTW96aWxsYSBGaXJlZm94IGZvdW5kIGluc3RhbGxlZCBpbiB0aGUgc3lzdGVtIgpfTVNHX0lOU1RBTExJTkdfTU9aSUxMQV9GSVJFRk9YX1BBQ0tBR0VTPSJJbnN0YWxsaW5nIE1vemlsbGEgRmlyZWZveCBwYWNrYWdlcy4uLiIKX01TR19GT1VORF9DSEVDS09EUklWRVJfSU5TVEFMTEVEPSJHZWNrb2RyaXZlciBmb3VuZCBpbnN0YWxsZWQgaW4gdGhlIHN5c3RlbSIKX01TR19JTlNUQUxMSU5HX0dFQ0tPRFJJVkVSPSJJbnN0YWxsaW5nIGdlY2tvZHJpdmVyLi4uIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogIFNDUklQVF9GSUxFTkFNRT0iJChiYXNlbmFtZSAiJDAiKSIKICBpZiBbICIkU0NSSVBUX0ZJTEVOQU1FIiA9ICJtYWluLnNoIiBdOyB0aGVuCiAgICBmaWxlcGF0aD0ic3JjL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvbWFpbi5zaCIKICAgIGJhc2ggIiRmaWxlcGF0aCIgPiAvZGV2L251bGwKICBlbHNlCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJFNDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7CmZpOwppZiBbIC16ICIkVU5JWF9ESVNUUk8iIF07IHRoZW4KICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgY3VybCAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBwYWNtYW4gLVMgY3VybCA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CiAgc291cmNlIDwoY3VybCAtc0wgaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL3V0aWwvZ2V0LWRpc3Ryby9lbi5zaCkKZmk7CnByaW50SW5kZW50CnByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX01PWklMTEFfRUNPU1lTVEVNIgpwcmludEluZGVudAppZiBjb21tYW5kIC12IGZpcmVmb3ggJj4gL2Rldi9udWxsOyB0aGVuCiAgX01PWklMTEFfRklSRUZPWF9WRVJTSU9OPSQoCiAgICBzdWRvIC11ICIkU1VET19VU0VSIiBmaXJlZm94IC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMpCiAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfTU9aSUxMQV9GSVJFRk9YX0lOU1RBTExFRCIgIiRfTU9aSUxMQV9GSVJFRk9YX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmVsc2UKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0lOU1RBTExJTkdfTU9aSUxMQV9GSVJFRk9YX1BBQ0tBR0VTIgogIGlmIFsgIiRVTklYX0RJU1RSTyIgPSAiZGViaWFuIiBdOyB0aGVuCiAgICBfRklSRUZPWF9MQVRFU1RfVkVSU0lPTj0kKAogICAgICBzdWRvIGFwdC1jYWNoZSBwb2xpY3kgZmlyZWZveC1lc3IgfCBncmVwIC1QbyAnKFxkK1wuKStcZCsnIHwgaGVhZCAtbiAxKQogIGVsc2UKICAgIF9GSVJFRk9YX0xBVEVTVF9WRVJTSU9OPSQoCiAgICAgIHN1ZG8gYXB0LWNhY2hlIHBvbGljeSBmaXJlZm94IHwgZ3JlcCAtUG8gJyhcZCtcLikrXGQrJyB8IGhlYWQgLW4gMSkKICBmaTsKICBwcmludGYgIiAodiVzKS4uLiIgIiRfRklSRUZPWF9MQVRFU1RfVkVSU0lPTiIKICBpZiBbICIkVU5JWF9ESVNUUk8iID0gImRlYmlhbiIgXTsgdGhlbgogICAgX01PWklMTEFfRklSRUZPWF9QQUNLQUdFUz0oCiAgICAgICJmaXJlZm94LWVzciIKICAgICAgImZpcmVmb3gtZXNyLWwxMG4tZXMtZXMiCiAgICApCiAgZWxzZQogICAgX01PWklMTEFfRklSRUZPWF9QQUNLQUdFUz0oCiAgICAgICJmaXJlZm94IgogICAgKQogIGZpOwogIGZvciBQQUNLQUdFIGluICIke19NT1pJTExBX0ZJUkVGT1hfUEFDS0FHRVNbQF19IjsgZG8KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgICAlcyIgIiRQQUNLQUdFIgogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkUEFDS0FHRSIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgICAgc3VkbyBwYWNtYW4gLVMgIiRQQUNLQUdFIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGRvbmUKZmk7CnByaW50SW5kZW50Cl9HRUNLT0RSSVZFUl9QQVRIPSIkKGNvbW1hbmQgLXYgZ2Vja29kcml2ZXIpIgppZiBbICIkX0dFQ0tPRFJJVkVSX1BBVEgiICE9ICIiIF07IHRoZW4KICBwcmludGYgIiAgJXMiICIkX01TR19GT1VORF9DSEVDS09EUklWRVJfSU5TVEFMTEVEIgogIHByaW50ZiAiICh2JXMpIiAiJChnZWNrb2RyaXZlciAtLXZlcnNpb24gfCBoZWFkIC1uMSB8IGN1dCAtZCcgJyAtZjIpIgplbHNlCiAgcHJpbnRmICIgICVzIiAiJF9NU0dfSU5TVEFMTElOR19HRUNLT0RSSVZFUiIKICBzdWRvIHBhY21hbiAtUyBmaXJlZm94LWdlY2tvZHJpdmVyID4gL2Rldi9udWxsCmZpOwpwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIK' | base64 -d)
