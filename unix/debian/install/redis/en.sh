#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfU0VUVElOR19SRURJU19FQ09TWVNURU09IlNldHRpbmcgdXAgUmVkaXMgZWNvc3lzdGVtLi4uIgpfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTPSJDaGVja2luZyBiYXNlIGRlcGVuZGVuY2llcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgdmVyc2lvbi4uLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfVkVSU0lPTl9GUk9NX0ZJTEU9IkFuIGVycm9yIGhhcHBlbiByZXRyaWV2aW5nIGxhc3Rlc3Qgc3RhYmxlIFJlZGlzIHZlcnNpb24gZnJvbSBmaWxlIgpfTVNHX1ZFUlNJT05TX0ZPVU5EPSJWZXJzaW9ucyBmb3VuZDoiCl9NU0dfRE9XTkxPQURJTkdfUkVESVM9IkRvd25sb2FkaW5nIFJlZGlzIgpfTVNHX0JVSUxESU5HX1NPVVJDRV9DT0RFPSJCdWlsZGluZyBzb3VyY2UgY29kZS4uLiIKX01TR19URVNUSU5HX0JVSUxEPSJUZXN0aW5nIGJ1aWxkLi4uIgpfTVNHX0NIRUNLSU5HX1NFUlZJQ0VfQ09ORklHPSJDaGVja2luZyAncmVkaXMnIHNlcnZpY2UgY29uZmlndXJhdGlvbi4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfRVJST1JfRU5BQkxJTkdfU0VSVklDRT0iQW4gZXJyb3IgaGFwcGVuIGVuYWJsaW5nICdyZWRpcycgc2VydmljZS4iCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0VYSVRfQ09ERT0iRXhpdCBjb2RlIgpfTVNHX0lUU19FTkFCTEVEPSJJdCdzIGVuYWJsZWQiCl9NU0dfRVhFQ1VUSU5HPSJFeGVjdXRpbmcuLi4iCl9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQ9IlRoZSAncmVkaXMnIHNlcnZpY2UgY291bGQgbm90IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19PTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5ubmluZyIKX01TR19DUkVBVElOR19TRVJWSUNFPSJDcmVhdGluZyAncmVkaXMnIHNlcnZpY2UuLi4iCl9NU0dfQ1JFQVRJTkdfVVNFUj0iQ3JlYXRpbmcgJ3JlZGlzJyB1c2VyLi4uIgpfTVNHX1VOWklQUElORz0iVW56aXBwaW5nLi4uIgpfTVNHX0lOU1RBTExJTkdfUkVESVM9Ikluc3RhbGxpbmcgUmVkaXMiCl9NU0dfVVBEQVRJTkdfUkVESVM9IlVwZGF0aW5nIFJlZGlzIgpfTVNHX0ZPVU5EX1JFRElTX0lOU1RBTExFRD0iRm91bmQgUmVkaXMgaW5zdGFsbGVkIgpfT1JJR0lOX1BXRD0iJFBXRCIKSU5ERU5UX1NUUklORz0iIgpTRVRYPTAKX1RFU1Q9MApfQ0hFQ0tfU0VSVklDRT0xCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcmVkaXMvJF9TQ1JJUFRfRklMRU5BTUUgWy1oXSBbLWkgU1RSSU5HXSBbLXRdCgogIEluc3RhbGxzIG9yIHVwZGF0ZXMgUmVkaXMgYnVpbGRpbmcgZnJvbSBzb3VyY2UgY29kZS4gQWxzbywgZ2VuZXJhdGVzIGFuZCBjb25maWd1cmVzIHRoZSAncmVkaXMnIHVzZXIgYW5kIHNlcnZpY2UuCgpPcHRpb25zOgogIC1oLCAtLWhlbHAgICAgICAgICAgICAgICAgICAgICAgICBTaG93IHRoaXMgaGVscCBtZXNzYWdlIGFuZCBleGl0LgogIC1pIFNUUklORywgLS1pbmRlbnQgU1RSSU5HICAgICAgICBFYWNoIGxpbmUgb2YgdGhlIHNjcmlwdCBvdXRwdXQgd2lsbCBiZSBwcmVjZWRlZCB3aXRoIHRoZSBzdHJpbmcgZGVmaW5lZCBpbiB0aGlzIHBhcmFtZXRlci4KICAtLXNldC14ICAgICAgICAgICAgICAgICAgICAgICAgICAgU2V0cyB0aGUgLXggb3B0aW9uIGluIEJhc2ggdG8gcHJpbnQgb3V0IHRoZSBzdGF0ZW1lbnRzIGFzIHRoZXkgYXJlIGJlaW5nIGV4ZWN1dGVkLiBVc2VmdWwgZm9yIGRlYnVnZ2luZyBwdXJwb3Nlcy4KICAtdCwgLS10ZXN0ICAgICAgICAgICAgICAgICAgICAgICAgSWYgcGFzc2VkLCBSZWRpcyBidWlsZCB3aWxsIGJlIHRlc3RlZC4gVGhpcyBjb3VsZCB0YWtlIGEgbG90IG9mIHRpbWUuCiAgLS1uby1jaGVjay1zZXJ2aWNlICAgICAgICAgICAgICAgIERvIG5vdCBjaGVjayB0aGF0IHRoZSBzZXJ2aWNlIGlzIGNvbmZpZ3VyZWQgdG8gcnVuIGF0IGJvb3QgdGltZS4KCkhFTFBfVVNBR0UKICAgIGV4aXQgMQp9CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC1pfC0taW5kZW50KQogICAgSU5ERU5UX1NUUklORz0iJDIiCiAgICBzaGlmdCAyCiAgICA7OwogICAgLWh8LS1oZWxwKQogICAgc2hpZnQKICAgIHVzYWdlCiAgICA7OyAgICAtLXNldC14KQogICAgU0VUWD0xCiAgICBzaGlmdAogICAgOzsgICAgCiAgICAtdHwtLXRlc3QpCiAgICBfVEVTVD0xCiAgICBzaGlmdAogICAgOzsKICAgIC0tbm8tY2hlY2stc2VydmljZSkKICAgIF9DSEVDS19TRVJWSUNFPTAKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAiJFNFVFgiIC1lcSAxIF07IHRoZW4gc2V0IC14OyBmaQpmdW5jdGlvbiBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQoKSB7CiAgaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsU2NyaXB0RGVwZW5kZW5jaWVzKCkgewogIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZAogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICAgImJ1aWxkLWVzc2VudGlhbCIKICAgICJ0Y2wiCiAgICAibWFrZSIKICApCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkREVQIgogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCn0KZnVuY3Rpb24gZ2V0UmVkaXNTZXJ2ZXJMYXN0ZXN0U3RhYmxlVmVyc2lvbigpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlcyIgIiRfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICBfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTj0kKAogICAgY3VybCAtc0wgaHR0cDovL2Rvd25sb2FkLnJlZGlzLmlvL3JlZGlzLXN0YWJsZS8wMC1SRUxFQVNFTk9URVMgfCAgICAgICBncmVwIFJlbGVhc2VkIHwgICAgICAgaGVhZCAtbiAxIHwgICAgICAgY3V0IC1kJyAnIC1mMiB8ICAgICAgIHRyIC1kICdcbicKICApCiAgaWYgWyAiJF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIiA9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfTEFTVEVTVF9WRVJTSU9OX0ZST01fRklMRSIgPiYyCiAgICBwcmludGYgIiAnaHR0cDovL2Rvd25sb2FkLnJlZGlzLmlvL3JlZGlzLXN0YWJsZS8iID4mMgogICAgcHJpbnRmICIwMC1SRUxFQVNFTk9URVMnLlxuJXNcbiIgIiRfTVNHX1ZFUlNJT05TX0ZPVU5EIiA+JjIKICAgIHByaW50ZiAiJXMiICIkKGN1cmwgLXNMIGh0dHA6Ly9kb3dubG9hZC5yZWRpcy5pby9yZWRpcy1zdGFibGUvMDAtUkVMRUFTRU5PVEVTIHwgICAgICAgZ3JlcCBSZWxlYXNlZCB8ICAgICAgIGN1dCAtZCcgJyAtZjIpXG4iID4mMgogICAgZXhpdCAxCiAgZmk7CiAgcHJpbnRmICIgKHYlcykgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iICIkX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCn0KZnVuY3Rpb24gZG93bmxvYWRSZWRpc0xhc3Rlc3RTdGFibGVWZXJzaW9uKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfUkVESVMiICIkX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgY3VybCAtc0wgaHR0cDovL2Rvd25sb2FkLnJlZGlzLmlvL3JlZGlzLXN0YWJsZS50YXIuZ3ogICAgIC0tb3V0cHV0ICIkMSIgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGJ1aWxkUmVkaXMoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlc1xuIiAiJF9NU0dfQlVJTERJTkdfU09VUkNFX0NPREUiCiAgc3RkYnVmIC1vTCBtYWtlIDI+JjEgfAogICAgd2hpbGUgSUZTPSByZWFkIC1yIGxpbmU7IGRvCiAgICAgIGlmIFsgIiQoZWNobyAiJGxpbmUiIHwgY3V0IC1kJyAnIC1mMSkiID0gImdjYyIgXTsgdGhlbgogICAgICAgIGZpbGU9JCgKICAgICAgICAgIGF3ayAtRidzcmMvJyAneyBmb3IoaT0xO2k8PU5GO2krKykgcHJpbnQgJGkgfScgPDw8ICIkbGluZSIgfCAgICAgICAgICAgdGFpbCAtbiAxCiAgICAgICAgKQogICAgICAgIHByaW50SW5kZW50CiAgICAgICAgcHJpbnRmICIgICAgICAlcyBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRmaWxlIgogICAgICBmaTsKICAgIGRvbmUKfQpmdW5jdGlvbiB0ZXN0UmVkaXNCdWlsZCgpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzXG4iICIkX01TR19URVNUSU5HX0JVSUxEIgogIHN0ZGJ1ZiAtb0wgbWFrZSB0ZXN0IDI+JjEgfAogICAgd2hpbGUgSUZTPSByZWFkIC1yIGxpbmU7IGRvCiAgICAgIHByaW50SW5kZW50CiAgICAgIHByaW50ZiAiJXMiICIkbGluZSIKICAgIGRvbmUKfQpmdW5jdGlvbiBjaGVja1JlZGlzU2VydmljZUNvbmZpZygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfU0VSVklDRV9DT05GSUciCiAgcHJpbnRJbmRlbnQKICBzZXJ2aWNlX3Byb3ZpZGVyPSIkKHBzIC1wIDEgLW8gY29tbT0pIgogIGlmIFsgIiRzZXJ2aWNlX3Byb3ZpZGVyIiA9ICJzeXN0ZW1kIiBdOyB0aGVuCiAgICBzdWRvIHN5c3RlbWN0bCBpcy1lbmFibGVkIHJlZGlzID4gL2Rldi9udWxsIDI+JjEKICAgIF9SRURJU19TRVJWSUNFX0RJU0FCTEVEPSQ/CiAgZWxzZQogICAgX1JFRElTX1NFUlZJQ0VfRU5BQkxFRF9PVVQ9IiQoCiAgICAgIHN1ZG8gc2VydmljZSByZWRpcyBzdGF0dXMgfCBncmVwICJMb2FkZWQ6ICIgfCBncmVwICIuc2VydmljZTsgZW5hYmxlZDsiCiAgICApIgogICAgX1JFRElTX1NFUlZJQ0VfRElTQUJMRUQ9MQogICAgaWYgWyAtbiAiJF9SRURJU19TRVJWSUNFX0VOQUJMRURfT1VUIiBdOyB0aGVuCiAgICAgIF9SRURJU19TRVJWSUNFX0RJU0FCTEVEPTAKICAgIGZpOwogIGZpOwogIGlmIFsgIiRfUkVESVNfU0VSVklDRV9ESVNBQkxFRCIgLWVxIDEgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19FTkFCTElORyIKICAgIGlmIFsgIiRzZXJ2aWNlX3Byb3ZpZGVyIiA9ICJzeXN0ZW1kIiBdOyB0aGVuCiAgICAgIF9FTkFCTEVfUkVESVNfU0VSVkVSX09VVFBVVD0iJChzdWRvIHN5c3RlbWN0bCBlbmFibGUgcmVkaXMuc2VydmljZSkiCiAgICAgIF9FTkFCTEVfUkVESVNfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgZWxzZQogICAgICBfRU5BQkxFX1JFRElTX1NFUlZFUl9PVVRQVVQ9IiQoc3VkbyB1cGRhdGUtcmMuZCByZWRpcyBlbmFibGUpIgogICAgICBfRU5BQkxFX1JFRElTX1NFUlZFUl9FWElUX0NPREU9JD8KICAgIGZpOwogICAgaWYgWyAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19TRVJWSUNFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VYSVRfQ09ERSIgIiRfRU5BQkxFX1JFRElTX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUIiA+JjIKICAgICAgZXhpdCAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFCiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19FTkFCTEVEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgaWYgWyAiJHNlcnZpY2VfcHJvdmlkZXIiID0gInN5c3RlbWQiIF07IHRoZW4KICAgIF9SRURJU19TRVJWSUNFX1NUQVRVUz0iJCgKICAgICAgc3VkbyBzeXN0ZW1jdGwgc2hvdyAtcCBBY3RpdmVTdGF0ZSByZWRpcyB8ICAgICAgIGN1dCAtZCc9JyAtZjIKICAgICkiCiAgZWxzZQogICAgX0NIRUNLX0FDVElWRV9PVVRQVVQ9IiQoCiAgICAgIGVjaG8gIiQoc3VkbyBzZXJ2aWNlIHJlZGlzIHN0YXR1cyAyPiYxIHx8IGVjaG8gIiIpIiAgICAgICB8IGdyZXAgIkFjdGl2ZTogIiAgICAgICB8IGdyZXAgIiBhY3RpdmUgKHJ1bm5pbmcpIgogICAgKSIKICAgIF9SRURJU19TRVJWSUNFX1NUQVRVUz0iaW5hY3RpdmUiCiAgICBpZiBbIC1uICIkX0NIRUNLX0FDVElWRV9PVVRQVVQiIF07IHRoZW4KICAgICAgX1JFRElTX1NFUlZJQ0VfU1RBVFVTPSJhY3RpdmUiCiAgICBmaTsKICBmaTsKICBpZiBbICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiAhPSAiYWN0aXZlIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VYRUNVVElORyIKICAgIGlmIFsgIiRzZXJ2aWNlX3Byb3ZpZGVyIiA9ICJzeXN0ZW1kIiBdOyB0aGVuCiAgICAgIHN1ZG8gc3lzdGVtY3RsIHN0YXJ0IHJlZGlzID4gL2Rldi9udWxsCiAgICAgIF9SRURJU19TRVJWSUNFX1NUQVJURUQ9JD8KICAgIGVsc2UKICAgICAgc3VkbyBzZXJ2aWNlIHJlZGlzIHN0YXJ0ID4gL2Rldi9udWxsCiAgICAgIF9SRURJU19TRVJWSUNFX1NUQVJURUQ9JD8KICAgIGZpOwogICAgaWYgWyAkX1JFRElTX1NFUlZJQ0VfU1RBUlRFRCAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQiID4mMgogICAgICBwcmludGYgIiVzICclcycuXG4iICIkX01TR19JVFNfT05fU1RBVEUiICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiA+JjIKICAgICAgZXhpdCAkX1JFRElTX1NFUlZJQ0VfU1RBUlRFRAogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfUlVOTklORyIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBjb25maWd1cmVSZWRpcygpIHsKICBpZiBbIC1kICIvZXRjL3JlZGlzIiBdOyB0aGVuCiAgICBzdWRvIHJtIC1yZiAvZXRjL3JlZGlzCiAgZmk7CiAgc3VkbyBta2RpciAvZXRjL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNwIC90bXAvcmVkaXMtc3RhYmxlL3JlZGlzLmNvbmYgL2V0Yy9yZWRpcyB8fCBleGl0ICQ/CiAgc3VkbyBzZWQgLWkgJ3MvXnN1cGVydmlzZWQgbm8vc3VwZXJ2aXNlZCBzeXN0ZW1kLycgL2V0Yy9yZWRpcy9yZWRpcy5jb25mIHx8ICAgICBleGl0ICQ/CiAgc3VkbyBzZWQgLWkgJ3MvXmRpciBcLlwvL2RpciBcL3ZhclwvbGliXC9yZWRpcy8nIC9ldGMvcmVkaXMvcmVkaXMuY29uZiB8fCAgICAgZXhpdCAkPwogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfQ1JFQVRJTkdfU0VSVklDRSIKICBzdWRvIHN5c3RlbWN0bCBkYWVtb24tcmVsb2FkCiAgX1JFRElTX1NFUlZJQ0VfU1RBVFVTPSQoCiAgICBzdWRvIHN5c3RlbWN0bCBzaG93IC1wIEFjdGl2ZVN0YXRlIHJlZGlzIHwgICAgIGN1dCAtZCc9JyAtZjIgfCAgICAgdHIgLWQgJ1xuJykKICBpZiBbICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiAhPSAiaW5hY3RpdmUiIF07IHRoZW4KICAgIHN1ZG8gc3lzdGVtY3RsIHN0b3AgcmVkaXMgPiAvZGV2L251bGwKICBmaTsKICBpZiBbIC1mICIvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UiIF07IHRoZW4KICAgIHN1ZG8gcm0gLWYgL2V0Yy9zeXN0ZW1kL3N5c3RlbS9yZWRpcy5zZXJ2aWNlCiAgZmk7CiAgc3VkbyB0b3VjaCAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKICBjYXQgPDwgRU9GID4gL2V0Yy9zeXN0ZW1kL3N5c3RlbS9yZWRpcy5zZXJ2aWNlCltVbml0XQpEZXNjcmlwdGlvbj1SZWRpcyBJbi1NZW1vcnkgRGF0YSBTdG9yZQpBZnRlcj1uZXR3b3JrLnRhcmdldApbU2VydmljZV0KVXNlcj1yZWRpcwpHcm91cD1yZWRpcwpFeGVjU3RhcnQ9L3Vzci9sb2NhbC9iaW4vcmVkaXMtc2VydmVyIC9ldGMvcmVkaXMvcmVkaXMuY29uZgpFeGVjU3RvcD0vdXNyL2xvY2FsL2Jpbi9yZWRpcy1jbGkgc2h1dGRvd24KUmVzdGFydD1hbHdheXMKW0luc3RhbGxdCldhbnRlZEJ5PW11bHRpLXVzZXIudGFyZ2V0CkVPRgogIGlmIFsgJD8gLW5lIDAgXTsgdGhlbgogICAgZXhpdCAkPwogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfQ1JFQVRJTkdfVVNFUiIKICBpZiBpZCAtdSByZWRpcyA+IC9kZXYvbnVsbCAyPiYxOyB0aGVuCiAgICBzdWRvIHVzZXJkZWwgLWYgcmVkaXMgPiAvZGV2L251bGwKICBmaTsKICBzdWRvIGFkZHVzZXIgLS1zeXN0ZW0gLS1ncm91cCAtLW5vLWNyZWF0ZS1ob21lIHJlZGlzID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBpZiBbIC1kICIvdmFyL2xpYi9yZWRpcyIgXTsgdGhlbgogICAgc3VkbyBybSAtcmYgL3Zhci9saWIvcmVkaXMgfHwgZXhpdCAkPwogIGZpOwogIHN1ZG8gbWtkaXIgL3Zhci9saWIvcmVkaXMgfHwgZXhpdCAkPwogIHN1ZG8gY2hvd24gcmVkaXM6cmVkaXMgL3Zhci9saWIvcmVkaXMgfHwgZXhpdCAkPwogIHN1ZG8gY2htb2QgNzcwIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIHN5c3RlbWN0bCBkYWVtb24tcmVsb2FkCn0KZnVuY3Rpb24gaW5zdGFsbFJlZGlzKCkgewogIGlmIFsgLWQgInJlZGlzLXN0YWJsZSIgXTsgdGhlbgogICAgcm0gLXJmIHJlZGlzLXN0YWJsZQogIGZpOwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19VTlpJUFBJTkciCiAgdGFyIHh6dmYgIiQxIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgcm0gLWYgIiQxIiB8fCBleGl0ICQ/CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgY2QgcmVkaXMtc3RhYmxlIHx8IGV4aXQgJD8KICBidWlsZFJlZGlzCiAgaWYgWyAkX1RFU1QgLWVxIDEgXTsgdGhlbgogICAgdGVzdFJlZGlzQnVpbGQKICBmaTsKICBzdWRvIG1ha2UgaW5zdGFsbCA+IC9kZXYvbnVsbCAyPiYxIHx8IGV4aXQgJD8KICBjb25maWd1cmVSZWRpcwp9CmZ1bmN0aW9uIG1haW4oKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiVzXG4iICIkX01TR19TRVRUSU5HX1JFRElTX0VDT1NZU1RFTSIKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQkFTRV9ERVBFTkRFTkNJRVMiCiAgaW5zdGFsbFNjcmlwdERlcGVuZGVuY2llcwogIGNkIC90bXAgfHwgZXhpdCAkPwogIGdldFJlZGlzU2VydmVyTGFzdGVzdFN0YWJsZVZlcnNpb24KICBfUkVESVNfQklOQVJZX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgcmVkaXMtc2VydmVyKSIKICBpZiBbICIkX1JFRElTX0JJTkFSWV9GSUxFUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBkb3dubG9hZFJlZGlzTGFzdGVzdFN0YWJsZVZlcnNpb24gL3RtcC9yZWRpcy1zdGFibGUudGFyLmd6CiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzICh2JXMpLi4uXG4iICIkX01TR19JTlNUQUxMSU5HX1JFRElTIiAiJF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogICAgaW5zdGFsbFJlZGlzIC90bXAvcmVkaXMtc3RhYmxlLnRhci5negogIGVsc2UKICAgIF9SRURJU19JTlNUQUxMRURfVkVSU0lPTj0kKAogICAgICByZWRpcy1zZXJ2ZXIgLS12ZXJzaW9uIHwgICAgICAgY3V0IC1kJz0nIC1mMiB8ICAgICAgIGN1dCAtZCcgJyAtZjEpCiAgICBpZiBbICIkX1JFRElTX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIiBdOyB0aGVuCiAgICAgIGRvd25sb2FkUmVkaXNMYXN0ZXN0U3RhYmxlVmVyc2lvbiAvdG1wL3JlZGlzLXN0YWJsZS50YXIuZ3oKICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIgICVzICh2JXMgLT4iICIkX01TR19VUERBVElOR19SRURJUyIgIiRfUkVESVNfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgIHByaW50ZiAiIHYlcykuLi5cbiIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICAgICAgaW5zdGFsbFJlZGlzIC90bXAvcmVkaXMtc3RhYmxlLnRhci5negogICAgZWxzZQogICAgICBwcmludEluZGVudAogICAgICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9SRURJU19JTlNUQUxMRUQiICIkX1JFRElTX0lOU1RBTExFRF9WRVJTSU9OIgogICAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGZpOwogIGZpOwogIGlmIFsgIiRfQ0hFQ0tfU0VSVklDRSIgLWVxIDEgXTsgdGhlbgogICAgY2hlY2tSZWRpc1NlcnZpY2VDb25maWcKICBmaTsKICBjZCAiJF9PUklHSU5fUFdEIiB8fCBleGl0ICQ/Cn0KaWYgKHJldHVybiAwIDI+L2Rldi9udWxsKTsgdGhlbgogIGV4cG9ydFZhcmlhYmxlcwplbHNlCiAgbWFpbgpmaTsKaWYgWyAiJFNFVFgiIC1lcSAxIF07IHRoZW4gc2V0ICt4OyBmaQ=='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;