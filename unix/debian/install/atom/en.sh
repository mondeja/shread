#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJUaGlzIHNjcmlwdCBuZWVkcyB0byBiZSBleGVjdXRlZCBhcyBzdXBlcnVzZXIuIgpfTVNHX0FMUkVBRFlfSU5TVEFMTEVEPSJpcyBhbHJlYWR5IGluc3RhbGxlZCIKX01TR19DSEVDS0lOR19BVE9NPSJDaGVja2luZyBBdG9tLi4uIgpfTVNHX0VSUk9SX09CVEFJTklOR19BVE9NX1BVQkxJQ19LRVk9IkFuIGVycm9yIGhhcHBlbiByZXJpZXZpbmcgQXRvbSBwdWJsaWMga2V5OiIKX01TR19BRERJTkdfUkVQTz0iQWRkaW5nIHJlcG9zaXRvcnkuLi4iCl9NU0dfVVBEQVRJTkdfUEFDS0FHRVM9IlVwZGF0aW5nIHBhY2thZ2VzLi4uIgpfTVNHX0FUT01fRk9VTkQ9IkF0b20gZm91bmQiCl9NU0dfUlVOTklOR19JTlNUQUxMQVRJT05fU0NSSVBUPSJSdW5uaW5nIGluc3RhbGxhdGlvbiBzY3JpcHQuLi4iCl9NU0dfRVJST1JfSU5TVEFMTElOR19BVE9NPSJBbiBlcnJvciBoYXBwZW4gaW5zdGFsbGluZyBBdG9tIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KcHJpbnRJbmRlbnQKQVRPTV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGF0b20pIgppZiBbICIkQVRPTV9CSU5BUllfUEFUSCIgIT0gIiIgXTsgdGhlbgogIEFUT01fVkVSU0lPTj0kKAogICAgYXBtIC12IHwgXAogICAgc2VkIC1uIDRwIHwgXAogICAgY3V0IC1kJyAnIC1mMiB8IFwKICAgIHNlZCAtciAicy9ceDFCXFsoWzAtOV17MSwyfSg7WzAtOV17MSwyfSk/KT9bbUdLXS8vZyIpCiAgcHJpbnRmICJBdG9tIHYlcyAlcyIgIiRBVE9NX1ZFUlNJT04iICIkX01TR19BTFJFQURZX0lOU1RBTExFRCIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZWxzZQogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0FUT00iCiAgaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogICAgaWYgWyAteiAiJF9TQ1JJUFRfRklMRU5BTUUiIF07IHRoZW4KICAgICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICAgIGJhc2ggIiRmaWxlcGF0aCIgPiAvZGV2L251bGwKICAgIGVsc2UKICAgICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogICAgZmk7CiAgZmk7CiAgSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgICAid2dldCIKICAgICJqcSIKICApCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIHN1ZG8gcGFjbWFuIC1TICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lOwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzLi4uIiAiJF9NU0dfQURESU5HX1JFUE8iCiAgU0lHTl9BVE9NX0dQR19LRVlfU1RERVJSPSQoCiAgICB3Z2V0IC1xTyAtIGh0dHBzOi8vcGFja2FnZWNsb3VkLmlvL0F0b21FZGl0b3IvYXRvbS9ncGdrZXkgfCBcCiAgICBzdWRvIGFwdC1rZXkgYWRkIC0gMj4mMSA+IC9kZXYvbnVsbCkKICBTSUdOX0FUT01fR1BHX0tFWV9FWElUX0NPREU9JD8KICBpZiBbICRTSUdOX0FUT01fR1BHX0tFWV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9PQlRBSU5JTkdfQVRPTV9QVUJMSUNfS0VZIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRTSUdOX0FUT01fR1BHX0tFWV9TVERFUlIiID4mMgogICAgZXhpdCAkU0lHTl9BVE9NX0dQR19LRVlfRVhJVF9DT0RFCiAgZmk7CiAgQVJDSD0iYW1kNjQiCiAgY2FzZSAkKHVuYW1lIC1tKSBpbgogICAgICBpMzg2KSAgIEFSQ0g9IjM4NiIgOzsKICAgICAgaTY4NikgICBBUkNIPSIzODYiIDs7CiAgICAgIHg4Nl82NCkgQVJDSD0iYW1kNjQiIDs7CiAgICAgIGFybSkgICAgZHBrZyAtLXByaW50LWFyY2hpdGVjdHVyZSB8IGdyZXAgLXEgImFybTY0IiAmJiBBUkNIPSJhcm02NCIgfHwgQVJDSD0iYXJtIiA7OwogIGVzYWMKICBlY2hvIFwKICAgICJkZWIgW2FyY2g9JHtBUkNIfV0gaHR0cHM6Ly9wYWNrYWdlY2xvdWQuaW8vQXRvbUVkaXRvci9hdG9tL2FueS8gYW55IG1haW4iIFwKICAgIHwgc3VkbyB0ZWUgL2V0Yy9hcHQvc291cmNlcy5saXN0LmQvYXRvbS5saXN0CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19VUERBVElOR19QQUNLQUdFUyIKICBzdWRvIHBhY21hbiB1cGRhdGUgPiAvZGV2L251bGwKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBBVE9NX1ZFUlNJT049IiQocGFjbWFuIC1RaSBhdG9tIHwgZ3JlcCBWZXJzaW9uIHwgY3V0IC1kJyAnIC1mMikiCiAgaWYgWyAiJEFUT01fVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0FUT01fRk9VTkQiICIkQVRPTV9WRVJTSU9OIgogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZmk7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19SVU5OSU5HX0lOU1RBTExBVElPTl9TQ1JJUFQiCiAgSU5TVEFMTF9BVE9NX1NUREVSUj0iJChzdWRvIHBhY21hbiAtUyBhdG9tID4gL2Rldi9udWxsKSIKICBJTlNUQUxMX0FUT01fRVhJVF9DT0RFPSQ/CiAgaWYgWyAiJElOU1RBTExfQVRPTV9FWElUX0NPREUiIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyIgIiRfTVNHX0VSUk9SX0lOU1RBTExJTkdfQVRPTSIgPiYyCiAgICBpZiBbICIkQVRPTV9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiICh2JXMpIiAiJEFUT01fVkVSU0lPTiIgPiYyCiAgICBmaTsKICAgIHByaW50ZiAiOlxuJXNcbiIgIiRJTlNUQUxMX0FUT01fU1RERVJSIiA+JjIKICAgIGV4aXQgJElOU1RBTExfQVRPTV9FWElUX0NPREUKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZmk7Cg==' | base64 -d)
