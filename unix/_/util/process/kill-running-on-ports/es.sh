#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19MRUFWSU5HX1BPUlRTX0ZSRUU9IkRlamFuZG8gcHVlcnRvcyBsaWJyZXMgZGUgcHJvY2Vzb3MuIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCl9QT1JUU19TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtLXBvcnRzKQogICAgc2hpZnQKICAgIF9QT1JUU19TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogIGlmIFsgLXogIiRfU0NSSVBUX0ZJTEVOQU1FIiBdOyB0aGVuCiAgICBmaWxlcGF0aD0ic3JjL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvbWFpbi5zaCIKICAgIGJhc2ggIiRmaWxlcGF0aCIgPiAvZGV2L251bGwKICBlbHNlCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpIG5ldC10b29scyAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogIHN1ZG8gcGFjbWFuIC1TIG5ldC10b29scyA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CmZpOwpwcmludEluZGVudApwcmludGYgIiVzLi4uXG4iICIkX01TR19MRUFWSU5HX1BPUlRTX0ZSRUUiCl9QT1JUUz0kKGVjaG8gIiRfUE9SVFNfU1RSSU5HIiB8IHRyICIsIiAiXG4iKQpmb3IgUE9SVCBpbiAkX1BPUlRTOyBkbwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzIiAiJFBPUlQiCiAgVU5LTk9XTl9TRVJWSUNFX1BJRD0kKAogICAgc3VkbyBuZXRzdGF0IC1ubHAgfCBncmVwIC1FICJbMC05XXsxLDN9XC5bMC05XXsxLDN9XC5bMC05XXsxLDN9XC5bMC05XXsxLDN9XDokUE9SVHxcOlw6XDokUE9SVCIgfCBcCiAgICBhd2sgJ3twcmludCAkN30nIHwgXAogICAgc2VkIC1lICJzL1wvLiovL2ciKQogIGlmIFtbIC1uICIkVU5LTk9XTl9TRVJWSUNFX1BJRCIgXV07IHRoZW4KICAgIHN1ZG8ga2lsbCAiJFVOS05PV05fU0VSVklDRV9QSUQiCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmRvbmUK'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
