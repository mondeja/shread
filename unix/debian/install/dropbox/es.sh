#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19DSEVDS0lOR19EUk9QQk9YX0VOVj0iQ29tcHJvYmFuZG8gZW50b3JubyBEcm9wYm94Li4uIgpfTVNHX0RST1BCT1hfRk9VTkRfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIERyb3Bib3ggaW5zdGFsYWRvIGVuIGVsIHNpc3RlbWEiCl9NU0dfQ0hFQ0tJTkdfSUZfSVNfVVBEQVRFRD0iQ29tcHJvYmFuZG8gc2kgZXN0w6EgYWN0dWFsaXphZG8uLi4iCl9NU0dfVVBEQVRJTkdfRFJPUEJPWD0iQWN0dWFsaXphbmRvIERyb3Bib3giCl9NU0dfUkVUUklFVklOR19MQVNUX0RST1BCT1hfVkVSU0lPTj0iT2J0ZW5pZW5kbyBsYSDDumx0aW1hIHZlcnNpw7NuIGRlIERyb3Bib3guLi4iCl9NU0dfRE9XTkxPQURJTkdfRFJPUEJPWD0iRGVzY2FyZ2FuZG8gRHJvcGJveCIKX01TR19JTlNUQUxMSU5HX0RST1BCT1g9Ikluc3RhbGFuZG8gRHJvcGJveCIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKX1VQREFURT0xCklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtLW5vLXVwZGF0ZSkKICAgIF9VUERBVEU9MAogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpwcmludEluZGVudApwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19EUk9QQk9YX0VOViIKaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogIGlmIFsgLXogIiRfU0NSSVBUX0ZJTEVOQU1FIiBdOyB0aGVuCiAgICBmaWxlcGF0aD0ic3JjL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvbWFpbi5zaCIKICAgIGJhc2ggIiRmaWxlcGF0aCIgPiAvZGV2L251bGwKICBlbHNlCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIHBhY21hbiAtUyBjdXJsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KZmk7CmZ1bmN0aW9uIGdldERyb3Bib3hMYXN0VmVyc2lvbigpIHsKICBfRFJPUEJPWF9MQVNUX0RFQj0kKAogICAgY3VybCAtc0wgaHR0cHM6Ly9saW51eC5kcm9wYm94LmNvbS9wYWNrYWdlcy9kZWJpYW4vIHwgXAogICAgZ3JlcCBhbWQ2NC5kZWIgfCBcCiAgICB0YWlsIC1uIDEgfCBcCiAgICBjdXQgLWQnIicgLWYyKQogIF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT049IiQoZWNobyAiJF9EUk9QQk9YX0xBU1RfREVCIiB8IGN1dCAtZCdfJyAtZjIpIgp9CmZ1bmN0aW9uIGRvd25sb2FkRHJvcGJveCgpIHsKICBfRFJPUEJPWF9ET1dOTE9BRF9VUkw9Imh0dHBzOi8vbGludXguZHJvcGJveC5jb20vcGFja2FnZXMvZGViaWFuLyRfRFJPUEJPWF9MQVNUX0RFQiIKICBjdXJsIC1zTCAtbyAiJF9EUk9QQk9YX0xBU1RfREVCIiAiJF9EUk9QQk9YX0RPV05MT0FEX1VSTCIKfQpmdW5jdGlvbiBpbnN0YWxsRHJvcGJveCgpIHsKICBzdWRvIGRwa2cgLWkgIiRfRFJPUEJPWF9MQVNUX0RFQiIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHN1ZG8gcm0gLWYgIiRfRFJPUEJPWF9MQVNUX0RFQiIKfQpfRFJPUEJPWF9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGRyb3Bib3gpIgppZiBbICIkX0RST1BCT1hfQklOQVJZX1BBVEgiICE9ICIiIF07IHRoZW4KICBfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTj0kKGRyb3Bib3ggdmVyc2lvbiB8IHRhaWwgLW4gMSB8IGN1dCAtZCcgJyAtZjUpCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRCIgXAogICAgIiRfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBpZiBbICRfVVBEQVRFIC1lcSAwIF07IHRoZW4KICAgIGV4aXQgMAogIGZpOwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfQ0hFQ0tJTkdfSUZfSVNfVVBEQVRFRCIKICBnZXREcm9wYm94TGFzdFZlcnNpb24KICBpZiBbICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIgPSAiJF9EUk9QQk9YX0lOU1RBTExFRF9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGV4aXQgMAogIGVsc2UKICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzIC0+IHYlcykuLi4iICIkX01TR19VUERBVElOR19EUk9QQk9YIiBcCiAgICAgICIkX0RST1BCT1hfSU5TVEFMTEVEX1ZFUlNJT04iICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICAgIGRvd25sb2FkRHJvcGJveAogICAgaW5zdGFsbERyb3Bib3gKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGZpOwplbHNlCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfRFJPUEJPWF9WRVJTSU9OIgogIGdldERyb3Bib3hMYXN0VmVyc2lvbgogIHByaW50ZiAiICh2JXMpIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19EUk9QQk9YIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgZG93bmxvYWREcm9wYm94CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19JTlNUQUxMSU5HX0RST1BCT1giICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICBpbnN0YWxsRHJvcGJveAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsK'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -
fi;
