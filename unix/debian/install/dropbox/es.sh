#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfQ0hFQ0tJTkdfRFJPUEJPWF9FTlY9IkNvbXByb2JhbmRvIGVudG9ybm8gRHJvcGJveC4uLiIKX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRD0iRW5jb250cmFkbyBEcm9wYm94IGluc3RhbGFkbyBlbiBlbCBzaXN0ZW1hIgpfTVNHX0NIRUNLSU5HX0lGX0lTX1VQREFURUQ9IkNvbXByb2JhbmRvIHNpIGVzdMOhIGFjdHVhbGl6YWRvLi4uIgpfTVNHX1VQREFUSU5HX0RST1BCT1g9IkFjdHVhbGl6YW5kbyBEcm9wYm94IgpfTVNHX1JFVFJJRVZJTkdfTEFTVF9EUk9QQk9YX1ZFUlNJT049Ik9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzacOzbiBkZSBEcm9wYm94Li4uIgpfTVNHX0RPV05MT0FESU5HX0RST1BCT1g9IkRlc2NhcmdhbmRvIERyb3Bib3giCl9NU0dfSU5TVEFMTElOR19EUk9QQk9YPSJJbnN0YWxhbmRvIERyb3Bib3giCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7Cl9VUERBVEU9MQpfUFJFUEVORF9TVERPVVRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIgpkbwogICAgY2FzZSAkYXJnIGluCiAgICAgICAgLS1wcmVwZW5kLXN0ZG91dCkKICAgICAgICBzaGlmdAogICAgICAgIF9QUkVQRU5EX1NURE9VVF9TVFJJTkc9JDEKICAgICAgICBzaGlmdAogICAgICAgIDs7CiAgICAgICAgLS1uby11cGRhdGUpCiAgICAgICAgX1VQREFURT0wCiAgICAgICAgc2hpZnQKICAgICAgICA7OwogICAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkX1BSRVBFTkRfU1RET1VUX1NUUklORyIKfQpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19EUk9QQk9YX0VOViIKaWYgW1sgIiQoc3VkbyBkcGtnIC1zIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGN1cmwgPiAvZGV2L251bGwgfHwgZXhpdCAkPwpmaTsKZnVuY3Rpb24gZ2V0RHJvcGJveExhc3RWZXJzaW9uKCkgewogIF9EUk9QQk9YX0xBU1RfREVCPSQoCiAgICBjdXJsIC1zTCBodHRwczovL2xpbnV4LmRyb3Bib3guY29tL3BhY2thZ2VzL2RlYmlhbi8gfCBcCiAgICBncmVwIGFtZDY0LmRlYiB8IFwKICAgIHRhaWwgLW4gMSB8IFwKICAgIGN1dCAtZCciJyAtZjIpCiAgX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTj0iJChlY2hvICIkX0RST1BCT1hfTEFTVF9ERUIiIHwgY3V0IC1kJ18nIC1mMikiCn0KZnVuY3Rpb24gZG93bmxvYWREcm9wYm94KCkgewogIF9EUk9QQk9YX0RPV05MT0FEX1VSTD0iaHR0cHM6Ly9saW51eC5kcm9wYm94LmNvbS9wYWNrYWdlcy9kZWJpYW4vJF9EUk9QQk9YX0xBU1RfREVCIgogIGN1cmwgLXNMIC1vICIkX0RST1BCT1hfTEFTVF9ERUIiICIkX0RST1BCT1hfRE9XTkxPQURfVVJMIgp9CmZ1bmN0aW9uIGluc3RhbGxEcm9wYm94KCkgewogIHN1ZG8gZHBrZyAtaSAiJF9EUk9QQk9YX0xBU1RfREVCIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgc3VkbyBybSAtZiAiJF9EUk9QQk9YX0xBU1RfREVCIgp9Cl9EUk9QQk9YX0JJTkFSWV9QQVRIPSIkKGNvbW1hbmQgLXYgZHJvcGJveCkiCmlmIFsgIiRfRFJPUEJPWF9CSU5BUllfUEFUSCIgIT0gIiIgXTsgdGhlbgogIF9EUk9QQk9YX0lOU1RBTExFRF9WRVJTSU9OPSQoZHJvcGJveCB2ZXJzaW9uIHwgdGFpbCAtbiAxIHwgY3V0IC1kJyAnIC1mNSkKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0RST1BCT1hfRk9VTkRfSU5TVEFMTEVEIiBcCiAgICAiJF9EUk9QQk9YX0lOU1RBTExFRF9WRVJTSU9OIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGlmIFsgJF9VUERBVEUgLWVxIDAgXTsgdGhlbgogICAgZXhpdCAwCiAgZmk7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19DSEVDS0lOR19JRl9JU19VUERBVEVEIgogIGdldERyb3Bib3hMYXN0VmVyc2lvbgogIGlmIFsgIiRfRFJPUEJPWF9DTURfTEFTVF9WRVJTSU9OIiA9ICIkX0RST1BCT1hfSU5TVEFMTEVEX1ZFUlNJT04iIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZXhpdCAwCiAgZWxzZQogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iCiAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgcHJpbnRmICIgICVzICh2JXMgLT4gdiVzKS4uLiIgIiRfTVNHX1VQREFUSU5HX0RST1BCT1giIFwKICAgICAgIiRfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTiIgIiRfRFJPUEJPWF9DTURfTEFTVF9WRVJTSU9OIgogICAgZG93bmxvYWREcm9wYm94CiAgICBpbnN0YWxsRHJvcGJveAogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZmk7CmVsc2UKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyIgIiRfTVNHX1JFVFJJRVZJTkdfTEFTVF9EUk9QQk9YX1ZFUlNJT04iCiAgZ2V0RHJvcGJveExhc3RWZXJzaW9uCiAgcHJpbnRmICIgKHYlcykiICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0RPV05MT0FESU5HX0RST1BCT1giICIkX0RST1BCT1hfQ01EX0xBU1RfVkVSU0lPTiIKICBkb3dubG9hZERyb3Bib3gKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0lOU1RBTExJTkdfRFJPUEJPWCIgIiRfRFJPUEJPWF9DTURfTEFTVF9WRVJTSU9OIgogIGluc3RhbGxEcm9wYm94CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmZpOwo=' | base64 -d)
