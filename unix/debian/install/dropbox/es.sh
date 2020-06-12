#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfQ0hFQ0tJTkdfRFJPUEJPWF9FTlY9IkNvbXByb2JhbmRvIGVudG9ybm8gRHJvcGJveC4uLiIKX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRD0iRW5jb250cmFkbyBEcm9wYm94IGluc3RhbGFkbyBlbiBlbCBzaXN0ZW1hIgpfTVNHX0NIRUNLSU5HX0lGX0lTX1VQREFURUQ9IkNvbXByb2JhbmRvIHNpIGVzdMOhIGFjdHVhbGl6YWRvLi4uIgpfTVNHX1VQREFUSU5HX0RST1BCT1g9IkFjdHVhbGl6YW5kbyBEcm9wYm94IgpfTVNHX1JFVFJJRVZJTkdfTEFTVF9EUk9QQk9YX1ZFUlNJT049Ik9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzacOzbiBkZSBEcm9wYm94Li4uIgpfTVNHX0RPV05MT0FESU5HX0RST1BCT1g9IkRlc2NhcmdhbmRvIERyb3Bib3giCl9NU0dfSU5TVEFMTElOR19EUk9QQk9YPSJJbnN0YWxhbmRvIERyb3Bib3giCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7Cl9VUERBVEU9MQpJTkRFTlRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1uby11cGRhdGUpCiAgICBfVVBEQVRFPTAKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KcHJpbnRJbmRlbnQKcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfRFJPUEJPWF9FTlYiCmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBTQ1JJUFRfRklMRU5BTUU9IiQoYmFzZW5hbWUgIiQwIikiCiAgaWYgWyAiJFNDUklQVF9GSUxFTkFNRSIgPSAibWFpbi5zaCIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRTQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIHBhY21hbiAtUyBjdXJsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KZmk7CmZ1bmN0aW9uIGdldERyb3Bib3hMYXN0VmVyc2lvbigpIHsKICBfRFJPUEJPWF9MQVNUX0RFQj0kKAogICAgY3VybCAtc0wgaHR0cHM6Ly9saW51eC5kcm9wYm94LmNvbS9wYWNrYWdlcy9kZWJpYW4vIHwgXAogICAgZ3JlcCBhbWQ2NC5kZWIgfCBcCiAgICB0YWlsIC1uIDEgfCBcCiAgICBjdXQgLWQnIicgLWYyKQogIF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT049IiQoZWNobyAiJF9EUk9QQk9YX0xBU1RfREVCIiB8IGN1dCAtZCdfJyAtZjIpIgp9CmZ1bmN0aW9uIGRvd25sb2FkRHJvcGJveCgpIHsKICBfRFJPUEJPWF9ET1dOTE9BRF9VUkw9Imh0dHBzOi8vbGludXguZHJvcGJveC5jb20vcGFja2FnZXMvZGViaWFuLyRfRFJPUEJPWF9MQVNUX0RFQiIKICBjdXJsIC1zTCAtbyAiJF9EUk9QQk9YX0xBU1RfREVCIiAiJF9EUk9QQk9YX0RPV05MT0FEX1VSTCIKfQpmdW5jdGlvbiBpbnN0YWxsRHJvcGJveCgpIHsKICBzdWRvIGRwa2cgLWkgIiRfRFJPUEJPWF9MQVNUX0RFQiIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHN1ZG8gcm0gLWYgIiRfRFJPUEJPWF9MQVNUX0RFQiIKfQpfRFJPUEJPWF9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGRyb3Bib3gpIgppZiBbICIkX0RST1BCT1hfQklOQVJZX1BBVEgiICE9ICIiIF07IHRoZW4KICBfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTj0kKGRyb3Bib3ggdmVyc2lvbiB8IHRhaWwgLW4gMSB8IGN1dCAtZCcgJyAtZjUpCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRCIgXAogICAgIiRfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBpZiBbICRfVVBEQVRFIC1lcSAwIF07IHRoZW4KICAgIGV4aXQgMAogIGZpOwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfQ0hFQ0tJTkdfSUZfSVNfVVBEQVRFRCIKICBnZXREcm9wYm94TGFzdFZlcnNpb24KICBpZiBbICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIgPSAiJF9EUk9QQk9YX0lOU1RBTExFRF9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGV4aXQgMAogIGVsc2UKICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzIC0+IHYlcykuLi4iICIkX01TR19VUERBVElOR19EUk9QQk9YIiBcCiAgICAgICIkX0RST1BCT1hfSU5TVEFMTEVEX1ZFUlNJT04iICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICAgIGRvd25sb2FkRHJvcGJveAogICAgaW5zdGFsbERyb3Bib3gKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGZpOwplbHNlCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfRFJPUEJPWF9WRVJTSU9OIgogIGdldERyb3Bib3hMYXN0VmVyc2lvbgogIHByaW50ZiAiICh2JXMpIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19EUk9QQk9YIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgZG93bmxvYWREcm9wYm94CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19JTlNUQUxMSU5HX0RST1BCT1giICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICBpbnN0YWxsRHJvcGJveAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsK' | base64 -d)
