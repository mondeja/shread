#!/bin/bash
source <(printf 'X01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVI9IlRoaXMgc2NyaXB0IG5lZWRzIHRvIGJlIGV4ZWN1dGVkIGFzIHN1cGVydXNlci4iCl9NU0dfQUxSRUFEWV9JTlNUQUxMRUQ9ImlzIGFscmVhZHkgaW5zdGFsbGVkIgpfTVNHX0NIRUNLSU5HX0FUT009IkNoZWNraW5nIEF0b20uLi4iCl9NU0dfRVJST1JfT0JUQUlOSU5HX0FUT01fUFVCTElDX0tFWT0iQW4gZXJyb3IgaGFwcGVuIHJlcmlldmluZyBBdG9tIHB1YmxpYyBrZXk6IgpfTVNHX0FERElOR19SRVBPPSJBZGRpbmcgcmVwb3NpdG9yeS4uLiIKX01TR19VUERBVElOR19QQUNLQUdFUz0iVXBkYXRpbmcgcGFja2FnZXMuLi4iCl9NU0dfQVRPTV9GT1VORD0iQXRvbSBmb3VuZCIKX01TR19SVU5OSU5HX0lOU1RBTExBVElPTl9TQ1JJUFQ9IlJ1bm5pbmcgaW5zdGFsbGF0aW9uIHNjcmlwdC4uLiIKX01TR19FUlJPUl9JTlNUQUxMSU5HX0FUT009IkFuIGVycm9yIGhhcHBlbiBpbnN0YWxsaW5nIEF0b20iCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7Cl9QUkVQRU5EX1NURE9VVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiCmRvCiAgICBjYXNlICRhcmcgaW4KICAgICAgICAtLXByZXBlbmQtc3Rkb3V0KQogICAgICAgIHNoaWZ0CiAgICAgICAgX1BSRVBFTkRfU1RET1VUX1NUUklORz0kMQogICAgICAgIHNoaWZ0CiAgICAgICAgOzsKICAgIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludFByZXBlbmRlZFN0ZG91dCgpIHsKICBwcmludGYgIiVzIiAiJF9QUkVQRU5EX1NURE9VVF9TVFJJTkciCn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKQVRPTV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGF0b20pIgppZiBbICIkQVRPTV9CSU5BUllfUEFUSCIgIT0gIiIgXTsgdGhlbgogIEFUT01fVkVSU0lPTj0kKAogICAgYXBtIC12IHwgXAogICAgc2VkIC1uIDRwIHwgXAogICAgY3V0IC1kJyAnIC1mMiB8IFwKICAgIHNlZCAtciAicy9ceDFCXFsoWzAtOV17MSwyfSg7WzAtOV17MSwyfSk/KT9bbUdLXS8vZyIpCiAgcHJpbnRmICJBdG9tIHYlcyAlcyIgIiRBVE9NX1ZFUlNJT04iICIkX01TR19BTFJFQURZX0lOU1RBTExFRCIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZWxzZQogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0FUT00iCiAgSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgICAid2dldCIKICAgICJqcSIKICApCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgICBpZiBbWyAiJChkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lOwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzLi4uIiAiJF9NU0dfQURESU5HX1JFUE8iCiAgU0lHTl9BVE9NX0dQR19LRVlfU1RERVJSPSQoCiAgICB3Z2V0IC1xTyAtIGh0dHBzOi8vcGFja2FnZWNsb3VkLmlvL0F0b21FZGl0b3IvYXRvbS9ncGdrZXkgfCBcCiAgICBzdWRvIGFwdC1rZXkgYWRkIC0gMj4mMSA+IC9kZXYvbnVsbCkKICBTSUdOX0FUT01fR1BHX0tFWV9FWElUX0NPREU9JD8KICBpZiBbICRTSUdOX0FUT01fR1BHX0tFWV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9PQlRBSU5JTkdfQVRPTV9QVUJMSUNfS0VZIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRTSUdOX0FUT01fR1BHX0tFWV9TVERFUlIiID4mMgogICAgZXhpdCAkU0lHTl9BVE9NX0dQR19LRVlfRVhJVF9DT0RFCiAgZmk7CiAgc3VkbyBzaCAtYyAnZWNobyAiZGViIFthcmNoPWFtZDY0XSBodHRwczovL3BhY2thZ2VjbG91ZC5pby9BdG9tRWRpdG9yL2F0b20vYW55LyBhbnkgbWFpbiIgPiAvZXRjL2FwdC9zb3VyY2VzLmxpc3QuZC9hdG9tLmxpc3QnCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19VUERBVElOR19QQUNLQUdFUyIKICBzdWRvIGFwdC1nZXQgdXBkYXRlIC1xcXEgPiAvZGV2L251bGwKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBBVE9NX1ZFUlNJT049JCgKICAgIGFwdC1jYWNoZSBzaG93IGF0b20gfCBcCiAgICBncmVwIFZlcnNpb24gfCBcCiAgICBoZWFkIC1uIDEgfCBcCiAgICBjdXQgLWQnICcgLWYyKQogIGlmIFsgIiRBVE9NX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19BVE9NX0ZPVU5EIiAiJEFUT01fVkVSU0lPTiIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGZpOwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfUlVOTklOR19JTlNUQUxMQVRJT05fU0NSSVBUIgogIElOU1RBTExfQVRPTV9TVERFUlI9JCgKICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIGF0b20gLXkgLXFxcSAyPiYxID4gL2Rldi9udWxsKQogIElOU1RBTExfQVRPTV9FWElUX0NPREU9JD8KICBpZiBbICIkSU5TVEFMTF9BVE9NX0VYSVRfQ09ERSIgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzIiAiJF9NU0dfRVJST1JfSU5TVEFMTElOR19BVE9NIiA+JjIKICAgIGlmIFsgIiRBVE9NX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgcHJpbnRmICIgKHYlcykiICIkQVRPTV9WRVJTSU9OIiA+JjIKICAgIGZpOwogICAgcHJpbnRmICI6XG4lc1xuIiAiJElOU1RBTExfQVRPTV9TVERFUlIiID4mMgogICAgZXhpdCAkSU5TVEFMTF9BVE9NX0VYSVRfQ09ERQogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsK' | base64 -d)
