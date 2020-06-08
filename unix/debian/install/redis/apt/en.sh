#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19TRVRUSU5HX1JFRElTX0VDT1NZU1RFTT0iU2V0dGluZyB1cCBSZWRpcyBlY29zeXN0ZW0uLi4iCl9NU0dfQ0hFQ0tJTkdfUEFDS0FHRVM9IkNoZWNraW5nIHBhY2thZ2VzLi4uIgpfTVNHX0NIRUNLSU5HX1NFUlZJQ0VfQ09ORklHPSJDaGVja2luZyBzZXJ2aWNlIGNvbmZpZ3VyYXRpb24uLi4iCl9NU0dfSVRTX0VOQUJMRUQ9Ikl0J3MgZW5hYmxlZCIKX01TR19FUlJPUl9FTkFCTElOR19TRVJWSUNFPSJBbiBlcnJvciBoYXBwZW4gZW5hYmxpbmcgJ3JlZGlzLXNlcnZlcicgc2VydmljZS4iCl9NU0dfRVhJVF9DT0RFPSJFeGl0IGNvZGUiCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0lUU19SVU5OSU5HPSJJdCdzIHJ1bm5pbmciCl9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQ9IlRoZSBzZXJ2aWNlICdyZWRpcy1zZXJ2ZXInIGNvdWxkIG5vdCBiZSBzdGFydGVkLiIKX01TR19JVFNfT05fU1RBVEU9Ikl0J3Mgb24gc3RhdGUiCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7CklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiVzXG4iICIkX01TR19TRVRUSU5HX1JFRElTX0VDT1NZU1RFTSIKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19QQUNLQUdFUyIKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICAgcmVkaXMtc2VydmVyIgppZiBbWyAiJChzdWRvIGRwa2cgLXMgcmVkaXMtc2VydmVyIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSByZWRpcy1zZXJ2ZXIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwpmaTsKX1JFRElTX1NFUlZFUl9WRVJTSU9OPSQocmVkaXMtc2VydmVyIC0tdmVyc2lvbiB8IGN1dCAtZCc9JyAtZjIgfCBjdXQgLWQnICcgLWYxKQpwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRfUkVESVNfU0VSVkVSX1ZFUlNJT04iCnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfU0VSVklDRV9DT05GSUciCnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX0VOQUJMRUQiCl9SRURJU19TRVJWSUNFX0VOQUJMRURfRk9VTkQ9JChzeXN0ZW1jdGwgbGlzdC11bml0LWZpbGVzIHwgZ3JlcCBlbmFibGVkIHwgZ3JlcCByZWRpcy1zZXJ2ZXIpCmlmIFsgIiRfUkVESVNfU0VSVklDRV9FTkFCTEVEX0ZPVU5EIiA9ICIiIF07IHRoZW4KICBfRU5BQkxFX1JFRElTX1NFUlZFUl9PVVRQVVQ9JCgKICAgIHN1ZG8gc3lzdGVtY3RsIGVuYWJsZSByZWRpcy1zZXJ2ZXIuc2VydmljZSAyPiYxID4gL2Rldi9udWxsCiAgKQogIF9FTkFCTEVfUkVESVNfU0VSVkVSX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9FTkFCTEVfUkVESVNfU0VSVkVSX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19TRVJWSUNFIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FWElUX0NPREUiICIkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRU5BQkxFX1JFRElTX1NFUlZFUl9PVVRQVVQiID4mMgogICAgZXhpdCAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFCiAgZmk7CmZpOwpwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfUlVOTklORyIKX1JFRElTX1NFUlZJQ0VfU1RBVFVTPSQoCiAgc3VkbyBzeXN0ZW1jdGwgc2hvdyAtcCBBY3RpdmVTdGF0ZSByZWRpcy1zZXJ2ZXIgfCBcCiAgY3V0IC1kJz0nIC1mMiB8IFwKICB0ciAtZCAnXG4nKQppZiBbICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiAhPSAiYWN0aXZlIiBdOyB0aGVuCiAgc3VkbyBzeXN0ZW1jdGwgc3RhcnQgcmVkaXMtc2VydmVyID4gL2Rldi9udWxsCiAgX1JFRElTX1NFUlZJQ0VfU1RBUlRFRD0kPwogIGlmIFsgJF9SRURJU19TRVJWSUNFX1NUQVJURUQgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQiID4mMgogICAgcHJpbnRmICIlcyAnJXMnLlxuIiAiJF9NU0dfSVRTX09OX1NUQVRFIiAiJF9SRURJU19TRVJWSUNFX1NUQVRVUyIgPiYyCiAgICBleGl0ICRfUkVESVNfU0VSVklDRV9TVEFSVEVECiAgZmk7CmZpOwpwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIK' | base64 -d)
