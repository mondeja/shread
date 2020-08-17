#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJUaGlzIHNjcmlwdCBuZWVkcyB0byBiZSBleGVjdXRlZCBhcyBzdXBlcnVzZXIuIgpfTVNHX0NIRUNLSU5HX0RPQ0tFUl9DRT0iQ2hlY2tpbmcgRG9ja2VyIENvbW11bml0eSBFZGl0aW9uLi4uIgpfTVNHX1NFVFRJTkdfVVBfUFVCTElDX0tFWT0iU2V0dGluZyB1cCBwdWJsaWMga2V5Li4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUFVCTElDX0RPQ0tFUl9SRVBPU19LRVk9IkFuIGVycm9yIGhhcHBlbiByZXRyaWV2aW5nIERvY2tlciByZXBvc2l0b3JpZXMga2V5IgpfTVNHX0NPTkZJR1VSRURfUFVCTElDX0tFWV9GT1VORD0iUHVibGljIGtleSBjb25maWd1cmVkIGZvdW5kIgpfTVNHX0FERElOR19ET0NLRVJfUkVQTz0iQWRkaW5nIERvY2tlciByZXBvc2l0b3J5Li4uIgpfTVNHX0RPQ0tFUl9SRVBPX0ZPVU5EPSJEb2NrZXIgcmVwb3NpdG9yeSBjb25maWd1cmVkIGZvdW5kIgpfTVNHX0NIRUNLSU5HX0RPQ0tFUl9DRV9QQUNLQUdFUz0iQ2hlY2tpbmcgRG9ja2VyIENFIHBhY2thZ2VzLi4uIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogIGlmIFsgLXogIiRfU0NSSVBUX0ZJTEVOQU1FIiBdOyB0aGVuCiAgICBmaWxlcGF0aD0ic3JjL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvbWFpbi5zaCIKICAgIGJhc2ggIiRmaWxlcGF0aCIgPiAvZGV2L251bGwKICBlbHNlCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKZXhwb3J0IEFQVF9LRVlfRE9OVF9XQVJOX09OX0RBTkdFUk9VU19VU0FHRT1Eb250V2FybgpzdWRvIHByaW50ZiAiIgpwcmludEluZGVudApwcmludGYgIiVzLi4uXG4iICIkX01TR19DSEVDS0lOR19ET0NLRVJfQ0UiCnByaW50SW5kZW50Cl9BUFRfS0VZX0ZPVU5EPSQoYXB0LWtleSBsaXN0IHwgZ3JlcCAiRG9ja2VyIFJlbGVhc2UiKQppZiBbICIkX0FQVF9LRVlfRk9VTkQiID0gIiIgXTsgdGhlbgogIHByaW50ZiAiICAlcyIgIiRfTVNHX1NFVFRJTkdfVVBfUFVCTElDX0tFWSIKICBfR0VUX1BVQkxJQ19HUEdfS0VZX1NUREVSUj0kKAogICAgY3VybCAtZnNTTCBodHRwczovL2Rvd25sb2FkLmRvY2tlci5jb20vbGludXgvdWJ1bnR1L2dwZyB8IFwKICAgIHN1ZG8gYXB0LWtleSBhZGQgLSAyPiYxID4gL2Rldi9udWxsKQogIF9HRVRfUFVCTElDX0dQR19LRVlfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX0dFVF9QVUJMSUNfR1BHX0tFWV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMiICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX1BVQkxJQ19ET0NLRVJfUkVQT1NfS0VZIiA+JjIKICAgIHByaW50ZiAiIChodHRwczovL2Rvd25sb2FkLmRvY2tlci5jb20vbGludXgvdWJ1bnR1L2dwZyk6XG4iID4mMgogICAgcHJpbnRmICIlc1xuIiAiJF9HRVRfUFVCTElDX0dQR19LRVlfU1RERVJSIiA+JjIKICAgIGV4aXQgJF9HRVRfUFVCTElDX0dQR19LRVlfRVhJVF9DT0RFCiAgZmk7CiAgc3VkbyBhcHQta2V5IGZpbmdlcnByaW50IDBFQkZDRDg4CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmVsc2UKICBwcmludGYgIiAgJXMiICIkX01TR19DT05GSUdVUkVEX1BVQkxJQ19LRVlfRk9VTkQiCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmZpOwpVQlVOVFVfUkVMRUFTRT0iJChsc2JfcmVsZWFzZSAtY3MpIgppZiBbICIkVUJVTlRVX1JFTEVBU0UiID0gImVvYW4iIF07IHRoZW4KICBVQlVOVFVfUkVMRUFTRT0iZGlzY28iCmZpOwpBUkNIPSJhbWQ2NCIKY2FzZSAkKHVuYW1lIC1tKSBpbgogICAgaTM4NikgICBBUkNIPSIzODYiIDs7CiAgICBpNjg2KSAgIEFSQ0g9IjM4NiIgOzsKICAgIHg4Nl82NCkgQVJDSD0iYW1kNjQiIDs7CiAgICBhcm0pICAgIGRwa2cgLS1wcmludC1hcmNoaXRlY3R1cmUgfCBncmVwIC1xICJhcm02NCIgJiYgQVJDSD0iYXJtNjQiIHx8IEFSQ0g9ImFybSIgOzsKZXNhYwpfQVBUX1JFUE89ImRlYiBbYXJjaD0kQVJDSF0gaHR0cHM6Ly9kb3dubG9hZC5kb2NrZXIuY29tL2xpbnV4L3VidW50dSAkVUJVTlRVX1JFTEVBU0Ugc3RhYmxlIgpfUkVQT19GT1VORF9PTl9TT1VSQ0VTPSQoCiAgZmluZCAvZXRjL2FwdC8gLW5hbWUgIioubGlzdCIgLXByaW50MCB8IFwKICB4YXJncyAtMCBjYXQgfCBcCiAgZ3JlcCAnXltbOnNwYWNlOl1dKmRlYicgfCBcCiAgZ3JlcCAiaHR0cHM6Ly9kb3dubG9hZC5kb2NrZXIuY29tL2xpbnV4L3VidW50dSIpCnByaW50SW5kZW50CmlmIFsgIiRfUkVQT19GT1VORF9PTl9TT1VSQ0VTIiA9ICIiIF07IHRoZW4KICBwcmludGYgIiAgJXMiICIkX01TR19BRERJTkdfRE9DS0VSX1JFUE8iCiAgc3VkbyBhZGQtYXB0LXJlcG9zaXRvcnkgIiRfQVBUX1JFUE8iID4gL2Rldi9udWxsCiAgc3VkbyBwYWNtYW4gdXBkYXRlID4gL2Rldi9udWxsCmVsc2UKICBwcmludGYgIiAgJXMiICIkX01TR19ET0NLRVJfUkVQT19GT1VORCIKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpJTlNUQUxMQVRJT05fUEFDS0FHRVM9KAogICJkb2NrZXItY2UiCiAgImRvY2tlci1jZS1jbGkiCiAgImNvbnRhaW5lcmQuaW8iCikKcHJpbnRJbmRlbnQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19ET0NLRVJfQ0VfUEFDS0FHRVMiCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX1BBQ0tBR0VTW0BdfSI7IGRvCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBwYWNtYW4gLVMgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZG9uZQpzdWRvIGNobW9kIDc3NyAvdmFyL3J1bi9kb2NrZXIuc29jawp1bnNldCBBUFRfS0VZX0RPTlRfV0FSTl9PTl9EQU5HRVJPVVNfVVNBR0UK'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -
fi;
