#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfU0VUVElOR19VUF9OT0RFSlNfRUNPU1lTVEVNPSJDb25maWd1cmFuZG8gZWNvc2lzdGVtYSBOb2RlSlMuLi4iCl9NU0dfQ0hFQ0tJTkdfQkFTRV9ERVBTPSJDb21wcm9iYW5kbyBkZXBlbmRlbmNpYXMgYmFzZS4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RfTk9ERUpTX0FCU09MVVRFX1ZFUlNJT049Ik9idGVuaWVuZG8gw7psdGltYSB2ZXJzacOzbiBhYnNvbHV0YSBkZSBOb2RlSlMuLi4iCl9NU0dfVEhFX1ZFUlNJT049IkxhIHZlcnNpw7NuIgpfTVNHX0hBU19OT1RfQkVFTl9GT1VORF9JTl9PRkZJQ0lBTF9OT0RFSlNfUkVQT1M9Im5vIGhhIHNpZG8gZW5jb250cmFkYSBlbiBsb3MgcmVwb3NpdG9yaW9zIG9maWNpYWxlcyBkZSBOb2RlSlMiCl9NU0dfSU5TVEFMTElOR19OT0RFSlM9Ikluc3RhbGFuZG8gTm9kZUpTIgpfTVNHX0VSUk9SX0lOU1RBTExJTkdfTk9ERUpTPSJPY3VycmnDsyB1biBlcnJvciBpbnN0YWxhbmRvIE5vZGVKUyIKX01TR19FUlJPUl9DT0RFPSJDw7NkaWdvIGRlIGVycm9yIgpfTVNHX0ZPVU5EX05PREVKU19JTlNUQUxMRUQ9IkVuY29udHJhZG8gTm9kZUpTIGluc3RhbGFkbyBlbiBlbCBzaXN0ZW1hIgpfTVNHX0RJU1RSSUJVVElPTl9OT1RfU1VQUE9SVEVEPSJUdSBkaXN0cmlidWNpw7NuIG5vIGVzdMOhIHNvcG9ydGFkYSBwb3IgZXN0ZSBzY3JpcHQgZGUgaW5zdGFsYWNpw7NuIGRlIE5vZGVKUyIKX01TR19DSEVDS0lOR19OUE09IkNvbXByb2JhbmRvIE5QTS4uLiIKX01TR19JVFNfSU5TVEFMTEVEPSJFc3TDoSBpbnN0YWxhZG8iCl9NU0dfVVBEQVRJTkc9IkFjdHVhbGl6YW5kbyIKX01TR19FUlJPUl9VUERBVElOR19OUE09Ik9jdXJyacOzIHVuIGVycm9yIGFjdHVhbGl6YW5kbyBOUE0gYSBsYSB2ZXJzacOzbiIKX01TR19JVFNfVVBEQVRFRD0iRXN0w6EgYWN0dWFsaXphZG8iCl9NU0dfQ0hFQ0tJTkdfWUFSTj0iQ29tcHJvYmFuZG8gWWFybi4uLiIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKX1ZFUlNJT049IiIKX1BSRVBFTkRfU1RET1VUX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCIKZG8KICAgIGNhc2UgJGFyZyBpbgogICAgICAgIC0tdmVyc2lvbikKICAgICAgICBzaGlmdAogICAgICAgIF9WRVJTSU9OPSQxCiAgICAgICAgc2hpZnQKICAgICAgICA7OwogICAgICAgIC0tcHJlcGVuZC1zdGRvdXQpCiAgICAgICAgc2hpZnQKICAgICAgICBfUFJFUEVORF9TVERPVVRfU1RSSU5HPSQxCiAgICAgICAgc2hpZnQKICAgICAgICA7OwogICAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkX1BSRVBFTkRfU1RET1VUX1NUUklORyIKfQpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiY3VybCIKICAiZGViY29uZi11dGlscyIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lOwppZiBbIC16ICIkVU5JWF9ESVNUUk8iIF07IHRoZW4KICBzb3VyY2UgPChjdXJsIC1zTCBodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vdXRpbC9nZXQtZGlzdHJvLnNoKQpmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQ9JCgKICAgIHN1ZG8gZGViY29uZi1nZXQtc2VsZWN0aW9ucyB8IFwKICAgIGdyZXAgZGViY29uZi9mcm9udGVuZCB8IFwKICAgIGF3ayAne3ByaW50ICQ0fScpCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCBOb25pbnRlcmFjdGl2ZScgfCBkZWJjb25mLXNldC1zZWxlY3Rpb25zIgpmaTsKQ0hFQ0tfQ1VSUkVOVF9OT0RFSlNfU1RBQkxFX1ZFUlNJT05fVVJMPSJodHRwczovL25vZGVqcy5vcmcvZGlzdC9sYXRlc3QvU0hBU1VNUzI1Ni50eHQiCkxBVEVTVF9OT0RFSlNfTUFKT1JfVkVSU0lPTj0xMwpOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMPSIkTEFURVNUX0hBUkRDT0RFRF9OT0RFSlNfVkVSU0lPTiIKaWYgWyAiJFVOSVhfRElTVFJPIiA9ICJ1YnVudHUiIF0gfHwgWyAiJFVOSVhfRElTVFJPIiA9ICJkZWJpYW4iIF07IHRoZW4KICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX1NFVFRJTkdfVVBfTk9ERUpTX0VDT1NZU1RFTSIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQkFTRV9ERVBTIgogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICAgImJ1aWxkLWVzc2VudGlhbCIKICAgICJnY2MiCiAgICAiZysrIgogICAgIm1ha2UiCiAgICAiYXB0LXRyYW5zcG9ydC1odHRwcyIKICAgICJsc2ItcmVsZWFzZSIKICAgICJjdXJsIgogICAgImdudXBnIgogICkKICBmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgICBpZiBbWyAiJChkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGRvbmUKICBwcmludFByZXBlbmRlZFN0ZG91dAoJaWYgWyAiJChkcGtnIC1zIG5vZGVqcyAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdOyB0aGVuCiAgICBOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMPSIiCiAgICBOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMX01BSk9SPSIiCiAgICBpZiBbICIkX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfTk9ERUpTX0FCU09MVVRFX1ZFUlNJT04iCiAgICAgIExBVEVTVF9OT0RFSlNfVkVSU0lPTj0kKGN1cmwgLXMgIiRDSEVDS19DVVJSRU5UX05PREVKU19TVEFCTEVfVkVSU0lPTl9VUkwiIHwgXAogICAgICAgIGhlYWQgLW4gMSB8IFwKICAgICAgICBjdXQgLWQiICIgLWYzIHwgXAogICAgICAgIGN1dCAtZCItIiAtZjIgfCBcCiAgICAgICAgY3V0IC1kInYiIC1mMikKICAgICAgTEFURVNUX05PREVKU19NQUpPUl9WRVJTSU9OPSIkKGVjaG8gIiRMQVRFU1RfTk9ERUpTX1ZFUlNJT04iIHwgY3V0IC1kIi4iIC1mMSkiCiAgICAgIHJlPSdeWzAtOV0rJCcKICAgICAgaWYgW1sgJExBVEVTVF9OT0RFSlNfTUFKT1JfVkVSU0lPTiA9fiAkcmUgXV07IHRoZW4KICAgICAgICB1cmwiPWh0dHBzOi8vZGViLm5vZGVzb3VyY2UuY29tL3NldHVwXyRMQVRFU1RfTk9ERUpTX01BSk9SX1ZFUlNJT04ueCIKICAgICAgICBpZiBjdXJsIC0tb3V0cHV0IC9kZXYvbnVsbCAtLXNpbGVudCAtLWZhaWwgLXIgMC0wICIkdXJsIjsgdGhlbgogICAgICAgICAgTk9ERUpTX1ZFUlNJT05fVE9fSU5TVEFMTD0kTEFURVNUX05PREVKU19WRVJTSU9OCiAgICAgICAgICBOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMX01BSk9SPSRMQVRFU1RfTk9ERUpTX01BSk9SX1ZFUlNJT04KICAgICAgICBmaTsKICAgICAgICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiROT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgICBmaTsKICAgIGVsc2UKICAgICAgdXJsPSJodHRwczovL25vZGVqcy5vcmcvZGlzdC92JF9WRVJTSU9OIgogICAgICBpZiAhIGN1cmwgLS1vdXRwdXQgL2Rldi9udWxsIC0tc2lsZW50IC0tZmFpbCAtciAwLTAgIiR1cmwiOyB0aGVuCiAgICAgICAgcHJpbnRmICJcbiVzICVzOiIgIiRfTVNHX1RIRV9WRVJTSU9OICRfVkVSU0lPTiIgIiRfTVNHX0hBU19OT1RfQkVFTl9GT1VORF9JTl9PRkZJQ0lBTF9OT0RFSlNfUkVQT1MiID4mMgogICAgICAgIHByaW50ZiAiIGh0dHBzOi8vbm9kZWpzLm9yZy9kaXN0L3YlcyA0MDQiICIkX1ZFUlNJT04iID4mMgogICAgICAgIGV4aXQgMQogICAgICBmaTsKICAgICAgTk9ERUpTX1ZFUlNJT05fVE9fSU5TVEFMTF9NQUpPUj0iJChlY2hvICIkX1ZFUlNJT04iIHwgY3V0IC1kIi4iIC1mMSkiCiAgICAgIE5PREVKU19WRVJTSU9OX1RPX0lOU1RBTEw9IiRfVkVSU0lPTiIKICAgIGZpOwogICAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19OT0RFSlMiICIkTk9ERUpTX1ZFUlNJT05fVE9fSU5TVEFMTF9NQUpPUiIKCQlJTlNUQUxMX05PREVKU19TVERFUlI9JCgKICAgICAgY3VybCAtc0wgImh0dHBzOi8vZGViLm5vZGVzb3VyY2UuY29tL3NldHVwXyROT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMX01BSk9SLngiIHwgXAogICAgICBzdWRvIGJhc2ggXAogICAgICAyPiYxID4gL2Rldi9udWxsKQogICAgSU5TVEFMTF9OT0RFSlNfRVhJVF9DT0RFPSQ/CiAgICBpZiBbICRJTlNUQUxMX05PREVKU19FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lczpcbiAlc1xuIiAiJF9NU0dfRVJST1JfSU5TVEFMTElOR19OT0RFSlMiICIkSU5TVEFMTF9OT0RFSlNfU1RERVJSIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkSU5TVEFMTF9OT0RFSlNfRVhJVF9DT0RFIiA+JjIKICAgICAgZXhpdCAkSU5TVEFMTF9OT0RFSlNfRVhJVF9DT0RFCiAgICBmaTsKICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgbm9kZWpzID4gL2Rldi9udWxsCgllbHNlCiAgICBwcmludGYgIiAgJXMiICIkX01TR19GT1VORF9OT0RFSlNfSU5TVEFMTEVEIgoJCXByaW50ZiAiICh2JXMpIiAiJChub2RlIC12IHwgY3V0IC1jMi0xNSkiCglmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZWxzZQogIHByaW50ZiAiJXMgKCVzKSIgIiRfTVNHX0RJU1RSSUJVVElPTl9OT1RfU1VQUE9SVEVEIiAiJFVOSVhfRElTVFJPIiA+JjIKICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgZXhpdCAxCmZpOwppZiBbIC1kICIkSE9NRS8uY29uZmlnIiBdOyB0aGVuCiAgc3VkbyBjaG93biAtUiAiJFVTRVI6JChpZCAtZ24gIiRVU0VSIikiICIkSE9NRS8uY29uZmlnIgpmaTsKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19OUE0iCnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX0lOU1RBTExFRCIKTlBNX0JJTkFSWV9GSUxFUEFUSD0iJChjb21tYW5kIC12IG5wbSkiCmlmIFsgIiROUE1fQklOQVJZX0ZJTEVQQVRIIiAhPSAiIiBdOyB0aGVuCiAgTlBNX0xBVEVTVF9WRVJTSU9OPSIkKG5wbSBzaG93IG5wbSBkaXN0LXRhZ3MubGF0ZXN0IC0tanNvbiB8IGN1dCAtZCciJyAtZjIpIgogIE5QTV9JTlNUQUxMRURfVkVSU0lPTj0iJChucG0gLS12ZXJzaW9uKSIKICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiROUE1fSU5TVEFMTEVEX1ZFUlNJT04iCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBpZiBbICIkTlBNX0xBVEVTVF9WRVJTSU9OIiAhPSAiJE5QTV9JTlNUQUxMRURfVkVSU0lPTiIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMgKHYlcyAtPiB2JXMpLi4uIiAiJF9NU0dfVVBEQVRJTkciICIkTlBNX0lOU1RBTExFRF9WRVJTSU9OIiAiJE5QTV9MQVRFU1RfVkVSU0lPTiIKICAgIE5QTV9VUERBVEVfU1RERVJSPSIkKHN1ZG8gbnBtIGluc3RhbGwgLS1xdWlldCAtLXNpbGVudCAtLW5vLXByb2dyZXNzIC1nIG5wbUBsYXRlc3QgMj4mMSA+IC9kZXYvbnVsbCkiCiAgICBOUE1fVVBEQVRFX0VYSVRfQ09ERT0kPwogICAgaWYgWyAiJE5QTV9VUERBVEVfU1RERVJSIiAhPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICJcbiVzOlxuIiAiJF9NU0dfRVJST1JfVVBEQVRJTkdfTlBNICROUE1fTEFURVNUX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzIiAiJE5QTV9VUERBVEVfU1RERVJSIiA+JjIKICAgICAgZXhpdCAkTlBNX1VQREFURV9FWElUX0NPREUKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX1VQREFURUQiCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmVsc2UKICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCmZpOwpVU0VSX0hPTUU9IiQoZ2V0ZW50IHBhc3N3ZCAiJFNVRE9fVVNFUiIgfCBjdXQgLWQ6IC1mNikiCmZ1bmN0aW9uIGluc3RhbGxPclVwZGF0ZVlhcm4oKSB7CiAgc3VkbyBybSAtcmYgIiRVU0VSX0hPTUUvLnlhcm4iCiAgXz0kKAogICAgY3VybCAtc0wgaHR0cHM6Ly95YXJucGtnLmNvbS9pbnN0YWxsLnNoIHwgXAogICAgc3VkbyAtdSAiJFNVRE9fVVNFUiIgL2Jpbi9iYXNoIC0gXAogICAgMj4mMSA+IC9kZXYvbnVsbAogICkKICBpZiBbIC1mICIkSE9NRS8uYmFzaHJjIiBdOyB0aGVuCiAgICBzb3VyY2UgIiRIT01FLy5iYXNocmMiCiAgZmk7Cn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19ZQVJOIgpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19JTlNUQUxMRUQiCllBUk5fQklOQVJZX0ZJTEVQQVRIPSIkVVNFUl9IT01FLy55YXJuL2Jpbi95YXJuIgppZiBbICEgLWYgIiRZQVJOX0JJTkFSWV9GSUxFUEFUSCIgXTsgdGhlbgogIGluc3RhbGxPclVwZGF0ZVlhcm4KZmk7CllBUk5fTEFURVNUX1ZFUlNJT049JChucG0gc2hvdyB5YXJuIGRpc3QtdGFncy5sYXRlc3QgLS1qc29uIHwgY3V0IC1kJyInIC1mMikKWUFSTl9JTlNUQUxMRURfVkVSU0lPTj0kKCRZQVJOX0JJTkFSWV9GSUxFUEFUSCAtLXZlcnNpb24pCnByaW50ZiAiICh2JXMpIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJFlBUk5fSU5TVEFMTEVEX1ZFUlNJT04iCnByaW50UHJlcGVuZGVkU3Rkb3V0CmlmIFsgIiRZQVJOX0xBVEVTVF9WRVJTSU9OIiA9ICIkWUFSTl9JTlNUQUxMRURfVkVSU0lPTiIgXTsgdGhlbgogIHByaW50ZiAiICAgICVzIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJF9NU0dfSVRTX1VQREFURUQiCmVsc2UKICBwcmludGYgIiAgICAlcyAodiVzIC0+IHYlcykuLi4iICIkX01TR19VUERBVElORyIgIiRZQVJOX0lOU1RBTExFRF9WRVJTSU9OIiAiJFlBUk5fTEFURVNUX1ZFUlNJT04iCiAgaW5zdGFsbE9yVXBkYXRlWWFybgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCAkX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7Cg==' | base64 -d)
