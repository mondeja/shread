#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19DSEVDS0lOR19EUk9QQk9YX0VOVj0iQ2hlY2tpbmcgRHJvcGJveCBlbnZpcm9ubWVudC4uLiIKX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRD0iRHJvcGJveCBmb3VuZCBpbnN0YWxsZWQgaW4gdGhlIHN5c3RlbSIKX01TR19DSEVDS0lOR19JRl9JU19VUERBVEVEPSJDaGVja2luZyBpZiBpcyB1cGRhdGVkLi4uIgpfTVNHX1VQREFUSU5HX0RST1BCT1g9IlVwZGF0aW5nIERyb3Bib3giCl9NU0dfUkVUUklFVklOR19MQVNUX0RST1BCT1hfVkVSU0lPTj0iUmV0cmlldmluZyBsYXN0IERyb3Bib3ggdmVyc2lvbi4uLiIKX01TR19ET1dOTE9BRElOR19EUk9QQk9YPSJEb3dubG9hZGluZyBEcm9wYm94IgpfTVNHX0lOU1RBTExJTkdfRFJPUEJPWD0iSW5zdGFsbGluZyBEcm9wYm94IgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpfVVBEQVRFPTEKX1BSRVBFTkRfU1RET1VUX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLXByZXBlbmQtc3Rkb3V0KQogICAgc2hpZnQKICAgIF9QUkVQRU5EX1NURE9VVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1uby11cGRhdGUpCiAgICBfVVBEQVRFPTAKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludFByZXBlbmRlZFN0ZG91dCgpIHsKICBwcmludGYgIiVzIiAiJF9QUkVQRU5EX1NURE9VVF9TVFJJTkciCn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfRFJPUEJPWF9FTlYiCmlmIFtbICIkKHN1ZG8gZHBrZyAtcyBjdXJsIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBjdXJsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KZmk7CmZ1bmN0aW9uIGdldERyb3Bib3hMYXN0VmVyc2lvbigpIHsKICBfRFJPUEJPWF9MQVNUX0RFQj0kKAogICAgY3VybCAtc0wgaHR0cHM6Ly9saW51eC5kcm9wYm94LmNvbS9wYWNrYWdlcy9kZWJpYW4vIHwgXAogICAgZ3JlcCBhbWQ2NC5kZWIgfCBcCiAgICB0YWlsIC1uIDEgfCBcCiAgICBjdXQgLWQnIicgLWYyKQogIF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT049IiQoZWNobyAiJF9EUk9QQk9YX0xBU1RfREVCIiB8IGN1dCAtZCdfJyAtZjIpIgp9CmZ1bmN0aW9uIGRvd25sb2FkRHJvcGJveCgpIHsKICBfRFJPUEJPWF9ET1dOTE9BRF9VUkw9Imh0dHBzOi8vbGludXguZHJvcGJveC5jb20vcGFja2FnZXMvZGViaWFuLyRfRFJPUEJPWF9MQVNUX0RFQiIKICBjdXJsIC1zTCAtbyAiJF9EUk9QQk9YX0xBU1RfREVCIiAiJF9EUk9QQk9YX0RPV05MT0FEX1VSTCIKfQpmdW5jdGlvbiBpbnN0YWxsRHJvcGJveCgpIHsKICBzdWRvIGRwa2cgLWkgIiRfRFJPUEJPWF9MQVNUX0RFQiIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHN1ZG8gcm0gLWYgIiRfRFJPUEJPWF9MQVNUX0RFQiIKfQpfRFJPUEJPWF9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGRyb3Bib3gpIgppZiBbICIkX0RST1BCT1hfQklOQVJZX1BBVEgiICE9ICIiIF07IHRoZW4KICBfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTj0kKGRyb3Bib3ggdmVyc2lvbiB8IHRhaWwgLW4gMSB8IGN1dCAtZCcgJyAtZjUpCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRCIgXAogICAgIiRfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBpZiBbICRfVVBEQVRFIC1lcSAwIF07IHRoZW4KICAgIGV4aXQgMAogIGZpOwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfQ0hFQ0tJTkdfSUZfSVNfVVBEQVRFRCIKICBnZXREcm9wYm94TGFzdFZlcnNpb24KICBpZiBbICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIgPSAiJF9EUk9QQk9YX0lOU1RBTExFRF9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGV4aXQgMAogIGVsc2UKICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIgogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgIHByaW50ZiAiICAlcyAodiVzIC0+IHYlcykuLi4iICIkX01TR19VUERBVElOR19EUk9QQk9YIiBcCiAgICAgICIkX0RST1BCT1hfSU5TVEFMTEVEX1ZFUlNJT04iICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICAgIGRvd25sb2FkRHJvcGJveAogICAgaW5zdGFsbERyb3Bib3gKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGZpOwplbHNlCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfRFJPUEJPWF9WRVJTSU9OIgogIGdldERyb3Bib3hMYXN0VmVyc2lvbgogIHByaW50ZiAiICh2JXMpIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19EUk9QQk9YIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgZG93bmxvYWREcm9wYm94CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19JTlNUQUxMSU5HX0RST1BCT1giICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICBpbnN0YWxsRHJvcGJveAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsK' | base64 -d)
