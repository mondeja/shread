#!/bin/bash
source <(printf 'X01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVI9IkVzdGUgc2NyaXB0IG5lY2VzaXRhIHNlciBlamVjdXRhZG8gY29tbyBzdXBlcnVzdWFyaW8uIgpfTVNHX0NIRUNLSU5HX0RPQ0tFUl9DRT0iQ29tcHJvYmFuZG8gRG9ja2VyIENvbW11bml0eSBFZGl0aW9uLi4uIgpfTVNHX1NFVFRJTkdfVVBfUFVCTElDX0tFWT0iQ29uZmlndXJhbmRvIGxhIGNsYXZlIHDDumJsaWNhLi4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUFVCTElDX0RPQ0tFUl9SRVBPU19LRVk9Ik9jdXJyacOzIHVuIGVycm9yIG9idGVuaWVuZG8gbGEgY2xhdmUgZGUgbG9zIHJlcG9zaXRvcmlvcyBkZSBEb2NrZXIiCl9NU0dfQ09ORklHVVJFRF9QVUJMSUNfS0VZX0ZPVU5EPSJFbmNvbnRyYWRhIGxhIGNsYXZlIHDDumJsaWNhIGNvbmZpZ3VyYWRhIgpfTVNHX0FERElOR19ET0NLRVJfUkVQTz0iQcOxYWRpZW5kbyByZXBvc2l0b3JpbyBkZSBEb2NrZXIuLi4iCl9NU0dfRE9DS0VSX1JFUE9fRk9VTkQ9IkVuY29udHJhZG8gcmVwb3NpdG9yaW8gZGUgRG9ja2VyIGNvbmZpZ3VyYWRvIgpfTVNHX0NIRUNLSU5HX0RPQ0tFUl9DRV9QQUNLQUdFUz0iQ29tcHJvYmFuZG8gcGFxdWV0ZXMgZGUgRG9ja2VyIENFLi4uIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpfUFJFUEVORF9TVERPVVRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIgpkbwogICAgY2FzZSAkYXJnIGluCiAgICAgICAgLS1wcmVwZW5kLXN0ZG91dCkKICAgICAgICBzaGlmdAogICAgICAgIF9QUkVQRU5EX1NURE9VVF9TVFJJTkc9JDEKICAgICAgICBzaGlmdAogICAgICAgIDs7CiAgICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRfUFJFUEVORF9TVERPVVRfU1RSSU5HIgp9CmV4cG9ydCBBUFRfS0VZX0RPTlRfV0FSTl9PTl9EQU5HRVJPVVNfVVNBR0U9RG9udFdhcm4Kc3VkbyBwcmludGYgIiIKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlcy4uLlxuIiAiJF9NU0dfQ0hFQ0tJTkdfRE9DS0VSX0NFIgpwcmludFByZXBlbmRlZFN0ZG91dApfQVBUX0tFWV9GT1VORD0kKGFwdC1rZXkgbGlzdCB8IGdyZXAgIkRvY2tlciBSZWxlYXNlIikKaWYgWyAiJF9BUFRfS0VZX0ZPVU5EIiA9ICIiIF07IHRoZW4KICBwcmludGYgIiAgJXMiICIkX01TR19TRVRUSU5HX1VQX1BVQkxJQ19LRVkiCiAgX0dFVF9QVUJMSUNfR1BHX0tFWV9TVERFUlI9JCgKICAgIGN1cmwgLWZzU0wgaHR0cHM6Ly9kb3dubG9hZC5kb2NrZXIuY29tL2xpbnV4L3VidW50dS9ncGcgfCBcCiAgICBzdWRvIGFwdC1rZXkgYWRkIC0gMj4mMSA+IC9kZXYvbnVsbCkKICBfR0VUX1BVQkxJQ19HUEdfS0VZX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9HRVRfUFVCTElDX0dQR19LRVlfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19QVUJMSUNfRE9DS0VSX1JFUE9TX0tFWSIgPiYyCiAgICBwcmludGYgIiAoaHR0cHM6Ly9kb3dubG9hZC5kb2NrZXIuY29tL2xpbnV4L3VidW50dS9ncGcpOlxuIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRfR0VUX1BVQkxJQ19HUEdfS0VZX1NUREVSUiIgPiYyCiAgICBleGl0ICRfR0VUX1BVQkxJQ19HUEdfS0VZX0VYSVRfQ09ERQogIGZpOwogIHN1ZG8gYXB0LWtleSBmaW5nZXJwcmludCAwRUJGQ0Q4OAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgplbHNlCiAgcHJpbnRmICIgICVzIiAiJF9NU0dfQ09ORklHVVJFRF9QVUJMSUNfS0VZX0ZPVU5EIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsKVUJVTlRVX1JFTEVBU0U9IiQobHNiX3JlbGVhc2UgLWNzKSIKaWYgWyAiJFVCVU5UVV9SRUxFQVNFIiA9ICJlb2FuIiBdOyB0aGVuCiAgVUJVTlRVX1JFTEVBU0U9ImRpc2NvIgpmaTsKX0FQVF9SRVBPPSJkZWIgW2FyY2g9YW1kNjRdIGh0dHBzOi8vZG93bmxvYWQuZG9ja2VyLmNvbS9saW51eC91YnVudHUgJFVCVU5UVV9SRUxFQVNFIHN0YWJsZSIKX1JFUE9fRk9VTkRfT05fU09VUkNFUz0kKAogIGZpbmQgL2V0Yy9hcHQvIC1uYW1lICIqLmxpc3QiIC1wcmludDAgfCBcCiAgeGFyZ3MgLTAgY2F0IHwgXAogIGdyZXAgJ15bWzpzcGFjZTpdXSpkZWInIHwgXAogIGdyZXAgImh0dHBzOi8vZG93bmxvYWQuZG9ja2VyLmNvbS9saW51eC91YnVudHUiKQpwcmludFByZXBlbmRlZFN0ZG91dAppZiBbICIkX1JFUE9fRk9VTkRfT05fU09VUkNFUyIgPSAiIiBdOyB0aGVuCiAgcHJpbnRmICIgICVzIiAiJF9NU0dfQURESU5HX0RPQ0tFUl9SRVBPIgogIHN1ZG8gYWRkLWFwdC1yZXBvc2l0b3J5ICIkX0FQVF9SRVBPIiA+IC9kZXYvbnVsbAogIHN1ZG8gYXB0LWdldCB1cGRhdGUgLXkgLXFxcSA+IC9kZXYvbnVsbAplbHNlCiAgcHJpbnRmICIgICVzIiAiJF9NU0dfRE9DS0VSX1JFUE9fRk9VTkQiCmZpOwpwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKSU5TVEFMTEFUSU9OX1BBQ0tBR0VTPSgKICAiZG9ja2VyLWNlIgogICJkb2NrZXItY2UtY2xpIgogICJjb250YWluZXJkLmlvIgopCnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfRE9DS0VSX0NFX1BBQ0tBR0VTIgpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9QQUNLQUdFU1tAXX0iOyBkbwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICAgJXMiICIkREVQIgogIGlmIFtbICIkKGRwa2cgLXMgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmRvbmUKc3VkbyBjaG1vZCA3NzcgL3Zhci9ydW4vZG9ja2VyLnNvY2sKdW5zZXQgQVBUX0tFWV9ET05UX1dBUk5fT05fREFOR0VST1VTX1VTQUdFCg==' | base64 -d)
