#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJUaGlzIHNjcmlwdCBuZWVkcyB0byBiZSBleGVjdXRlZCBhcyBzdXBlcnVzZXIuIgpfTVNHX1NFVFRJTkdfVVBfTk9ERUpTX0VDT1NZU1RFTT0iU2V0dGluZyB1cCBOb2RlSlMgZWNvc3lzdGVtLi4uIgpfTVNHX0NIRUNLSU5HX0JBU0VfREVQUz0iQ2hlY2tpbmcgYmFzZSBkZXBlbmRlbmNpZXMuLi4iCl9NU0dfUkVUUklFVklOR19MQVNUX05PREVKU19BQlNPTFVURV9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhc3Rlc3QgYWJzb2x1dGUgTm9kZUpTIHZlcnNpb24uLi4iCl9NU0dfVEhFX1ZFUlNJT049IlRoZSB2ZXJzaW9uIgpfTVNHX0hBU19OT1RfQkVFTl9GT1VORF9JTl9PRkZJQ0lBTF9OT0RFSlNfUkVQT1M9ImhhcyBub3QgYmVlbiBmb3VuZCBpbiBvZmZpY2lhbCBOb2RlSlMgcmVwb3NpdG9yaWVzIgpfTVNHX0lOU1RBTExJTkdfTk9ERUpTPSJJbnN0YWxsaW5nIE5vZGVKUyIKX01TR19FUlJPUl9JTlNUQUxMSU5HX05PREVKUz0iQW4gZXJyb3IgaGFwcGVuIGluc3RhbGxpbmcgTm9kZUpTIgpfTVNHX0VSUk9SX0NPREU9IkVycm9yIGNvZGUiCl9NU0dfRk9VTkRfTk9ERUpTX0lOU1RBTExFRD0iRm91bmQgTm9kZUpTIGluc3RhbGxlZCBpbiB0aGUgc3lzdGVtIgpfTVNHX0RJU1RSSUJVVElPTl9OT1RfU1VQUE9SVEVEPSJZb3VyIGRpc3RyaWJ1dGlvbiBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRoaXMgTm9kZUpTIGluc3RhbGxhdGlvbiBzY3JpcHQiCl9NU0dfQ0hFQ0tJTkdfTlBNPSJDaGVja2luZyBOUE0uLi4iCl9NU0dfSVRTX0lOU1RBTExFRD0iSXQncyBpbnN0YWxsZWQiCl9NU0dfVVBEQVRJTkc9IlVwZGF0aW5nIgpfTVNHX0VSUk9SX1VQREFUSU5HX05QTT0iQW4gZXJyb3IgaGFwcGVuIHVwZGF0aW5nIE5QTSB0byB2ZXJzaW9uIgpfTVNHX0lUU19VUERBVEVEPSJJdCdzIHVwZGF0ZWQiCl9NU0dfQ0hFQ0tJTkdfWUFSTj0iQ2hlY2tpbmcgWWFybi4uLiIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKX1ZFUlNJT049IiIKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLXZlcnNpb24pCiAgICBzaGlmdAogICAgX1ZFUlNJT049JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQppZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgaWYgWyAteiAiJF9TQ1JJUFRfRklMRU5BTUUiIF07IHRoZW4KICAgIGZpbGVwYXRoPSJzcmMvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC9tYWluLnNoIgogICAgYmFzaCAiJGZpbGVwYXRoIiA+IC9kZXYvbnVsbAogIGVsc2UKICAgIHVybD0iaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC8kX1NDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7CmZpOwpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiZGViY29uZi11dGlscyIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lOwppZiBbIC16ICIkVU5JWF9ESVNUUk8iIF07IHRoZW4KICBzb3VyY2UgPChjdXJsIC1zTCBodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vdXRpbC9nZXQtZGlzdHJvL2VuLnNoKQpmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQ9JCgKICAgIHN1ZG8gZGViY29uZi1nZXQtc2VsZWN0aW9ucyB8IFwKICAgIGdyZXAgZGViY29uZi9mcm9udGVuZCB8IFwKICAgIGF3ayAne3ByaW50ICQ0fScpCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCBOb25pbnRlcmFjdGl2ZScgfCBkZWJjb25mLXNldC1zZWxlY3Rpb25zIgpmaTsKQ0hFQ0tfQ1VSUkVOVF9OT0RFSlNfU1RBQkxFX1ZFUlNJT05fVVJMPSJodHRwczovL25vZGVqcy5vcmcvZGlzdC9sYXRlc3QvU0hBU1VNUzI1Ni50eHQiCkxBVEVTVF9OT0RFSlNfTUFKT1JfVkVSU0lPTj0xMwpOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMPSIkTEFURVNUX0hBUkRDT0RFRF9OT0RFSlNfVkVSU0lPTiIKaWYgWyAiJFVOSVhfRElTVFJPIiA9ICJ1YnVudHUiIF0gfHwgWyAiJFVOSVhfRElTVFJPIiA9ICJkZWJpYW4iIF07IHRoZW4KICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX1NFVFRJTkdfVVBfTk9ERUpTX0VDT1NZU1RFTSIKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQkFTRV9ERVBTIgogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICAgImJ1aWxkLWVzc2VudGlhbCIKICAgICJnY2MiCiAgICAiZysrIgogICAgIm1ha2UiCiAgICAiYXB0LXRyYW5zcG9ydC1odHRwcyIKICAgICJsc2ItcmVsZWFzZSIKICAgICJnbnVwZyIKICApCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkREVQIgogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCiAgcHJpbnRJbmRlbnQKCWlmIFsgIiQoc3VkbyBwYWNtYW4gLVFpIG5vZGVqcyAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdOyB0aGVuCiAgICBOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMPSIiCiAgICBOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMX01BSk9SPSIiCiAgICBpZiBbICIkX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfTk9ERUpTX0FCU09MVVRFX1ZFUlNJT04iCiAgICAgIExBVEVTVF9OT0RFSlNfVkVSU0lPTj0kKGN1cmwgLXMgIiRDSEVDS19DVVJSRU5UX05PREVKU19TVEFCTEVfVkVSU0lPTl9VUkwiIHwgXAogICAgICAgIGhlYWQgLW4gMSB8IFwKICAgICAgICBjdXQgLWQiICIgLWYzIHwgXAogICAgICAgIGN1dCAtZCItIiAtZjIgfCBcCiAgICAgICAgY3V0IC1kInYiIC1mMikKICAgICAgTEFURVNUX05PREVKU19NQUpPUl9WRVJTSU9OPSIkKGVjaG8gIiRMQVRFU1RfTk9ERUpTX1ZFUlNJT04iIHwgY3V0IC1kIi4iIC1mMSkiCiAgICAgIHJlPSdeWzAtOV0rJCcKICAgICAgaWYgW1sgJExBVEVTVF9OT0RFSlNfTUFKT1JfVkVSU0lPTiA9fiAkcmUgXV07IHRoZW4KICAgICAgICB1cmw9Imh0dHBzOi8vZGViLm5vZGVzb3VyY2UuY29tL3NldHVwXyRMQVRFU1RfTk9ERUpTX01BSk9SX1ZFUlNJT04ueCIKICAgICAgICBpZiBjdXJsIC0tb3V0cHV0IC9kZXYvbnVsbCAtLXNpbGVudCAtLWZhaWwgLXIgMC0wICIkdXJsIjsgdGhlbgogICAgICAgICAgTk9ERUpTX1ZFUlNJT05fVE9fSU5TVEFMTD0kTEFURVNUX05PREVKU19WRVJTSU9OCiAgICAgICAgICBOT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMX01BSk9SPSRMQVRFU1RfTk9ERUpTX01BSk9SX1ZFUlNJT04KICAgICAgICBmaTsKICAgICAgICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiROT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgICBmaTsKICAgIGVsc2UKICAgICAgdXJsPSJodHRwczovL25vZGVqcy5vcmcvZGlzdC92JF9WRVJTSU9OIgogICAgICBpZiAhIGN1cmwgLS1vdXRwdXQgL2Rldi9udWxsIC0tc2lsZW50IC0tZmFpbCAtciAwLTAgIiR1cmwiOyB0aGVuCiAgICAgICAgcHJpbnRmICJcbiVzICVzOiIgIiRfTVNHX1RIRV9WRVJTSU9OICRfVkVSU0lPTiIgIiRfTVNHX0hBU19OT1RfQkVFTl9GT1VORF9JTl9PRkZJQ0lBTF9OT0RFSlNfUkVQT1MiID4mMgogICAgICAgIHByaW50ZiAiIGh0dHBzOi8vbm9kZWpzLm9yZy9kaXN0L3YlcyA0MDQiICIkX1ZFUlNJT04iID4mMgogICAgICAgIGV4aXQgMQogICAgICBmaTsKICAgICAgTk9ERUpTX1ZFUlNJT05fVE9fSU5TVEFMTF9NQUpPUj0iJChlY2hvICIkX1ZFUlNJT04iIHwgY3V0IC1kIi4iIC1mMSkiCiAgICAgIE5PREVKU19WRVJTSU9OX1RPX0lOU1RBTEw9IiRfVkVSU0lPTiIKICAgIGZpOwogICAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19OT0RFSlMiICIkTk9ERUpTX1ZFUlNJT05fVE9fSU5TVEFMTF9NQUpPUiIKCQlJTlNUQUxMX05PREVKU19TVERFUlI9JCgKICAgICAgY3VybCAtc0wgImh0dHBzOi8vZGViLm5vZGVzb3VyY2UuY29tL3NldHVwXyROT0RFSlNfVkVSU0lPTl9UT19JTlNUQUxMX01BSk9SLngiIHwgXAogICAgICBzdWRvIGJhc2ggXAogICAgICAyPiYxID4gL2Rldi9udWxsKQogICAgSU5TVEFMTF9OT0RFSlNfRVhJVF9DT0RFPSQ/CiAgICBpZiBbICRJTlNUQUxMX05PREVKU19FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lczpcbiAlc1xuIiAiJF9NU0dfRVJST1JfSU5TVEFMTElOR19OT0RFSlMiICIkSU5TVEFMTF9OT0RFSlNfU1RERVJSIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SX0NPREUiICIkSU5TVEFMTF9OT0RFSlNfRVhJVF9DT0RFIiA+JjIKICAgICAgZXhpdCAkSU5TVEFMTF9OT0RFSlNfRVhJVF9DT0RFCiAgICBmaTsKICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgbm9kZWpzID4gL2Rldi9udWxsCgllbHNlCiAgICBwcmludGYgIiAgJXMiICIkX01TR19GT1VORF9OT0RFSlNfSU5TVEFMTEVEIgoJCXByaW50ZiAiICh2JXMpIiAiJChub2RlIC12IHwgY3V0IC1jMi0xNSkiCglmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZWxzZQogIHByaW50ZiAiJXMgKCVzKSIgIiRfTVNHX0RJU1RSSUJVVElPTl9OT1RfU1VQUE9SVEVEIiAiJFVOSVhfRElTVFJPIiA+JjIKICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgZXhpdCAxCmZpOwppZiBbIC1kICIkSE9NRS8uY29uZmlnIiBdOyB0aGVuCiAgc3VkbyBjaG93biAtUiAiJFVTRVI6JChpZCAtZ24gIiRVU0VSIikiICIkSE9NRS8uY29uZmlnIgpmaTsKcHJpbnRJbmRlbnQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19OUE0iCnByaW50SW5kZW50CnByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX0lOU1RBTExFRCIKTlBNX0JJTkFSWV9GSUxFUEFUSD0iJChjb21tYW5kIC12IG5wbSkiCmlmIFsgIiROUE1fQklOQVJZX0ZJTEVQQVRIIiAhPSAiIiBdOyB0aGVuCiAgTlBNX0xBVEVTVF9WRVJTSU9OPSIkKG5wbSBzaG93IG5wbSBkaXN0LXRhZ3MubGF0ZXN0IC0tanNvbiB8IGN1dCAtZCciJyAtZjIpIgogIE5QTV9JTlNUQUxMRURfVkVSU0lPTj0iJChucG0gLS12ZXJzaW9uKSIKICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiROUE1fSU5TVEFMTEVEX1ZFUlNJT04iCiAgcHJpbnRJbmRlbnQKICBpZiBbICIkTlBNX0xBVEVTVF9WRVJTSU9OIiAhPSAiJE5QTV9JTlNUQUxMRURfVkVSU0lPTiIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMgKHYlcyAtPiB2JXMpLi4uIiAiJF9NU0dfVVBEQVRJTkciICIkTlBNX0lOU1RBTExFRF9WRVJTSU9OIiAiJE5QTV9MQVRFU1RfVkVSU0lPTiIKICAgIE5QTV9VUERBVEVfU1RERVJSPSIkKHN1ZG8gbnBtIGluc3RhbGwgLS1xdWlldCAtLXNpbGVudCAtLW5vLXByb2dyZXNzIC1nIG5wbUBsYXRlc3QgMj4mMSA+IC9kZXYvbnVsbCkiCiAgICBOUE1fVVBEQVRFX0VYSVRfQ09ERT0kPwogICAgaWYgWyAiJE5QTV9VUERBVEVfU1RERVJSIiAhPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICJcbiVzOlxuIiAiJF9NU0dfRVJST1JfVVBEQVRJTkdfTlBNICROUE1fTEFURVNUX1ZFUlNJT04iID4mMgogICAgICBwcmludGYgIiVzIiAiJE5QTV9VUERBVEVfU1RERVJSIiA+JjIKICAgICAgZXhpdCAkTlBNX1VQREFURV9FWElUX0NPREUKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX1VQREFURUQiCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmVsc2UKICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCmZpOwpVU0VSX0hPTUU9IiQoZ2V0ZW50IHBhc3N3ZCAiJFNVRE9fVVNFUiIgfCBjdXQgLWQ6IC1mNikiCmZ1bmN0aW9uIGluc3RhbGxPclVwZGF0ZVlhcm4oKSB7CiAgc3VkbyBybSAtcmYgIiRVU0VSX0hPTUUvLnlhcm4iCiAgXz0kKAogICAgY3VybCAtc0wgaHR0cHM6Ly95YXJucGtnLmNvbS9pbnN0YWxsLnNoIHwgXAogICAgc3VkbyAtdSAiJFNVRE9fVVNFUiIgL2Jpbi9iYXNoIC0gXAogICAgMj4mMSA+IC9kZXYvbnVsbAogICkKICBpZiBbIC1mICIkSE9NRS8uYmFzaHJjIiBdOyB0aGVuCiAgICBzb3VyY2UgIiRIT01FLy5iYXNocmMiCiAgZmk7Cn0KcHJpbnRJbmRlbnQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19ZQVJOIgpwcmludEluZGVudApwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19JTlNUQUxMRUQiCllBUk5fQklOQVJZX0ZJTEVQQVRIPSIkVVNFUl9IT01FLy55YXJuL2Jpbi95YXJuIgppZiBbICEgLWYgIiRZQVJOX0JJTkFSWV9GSUxFUEFUSCIgXTsgdGhlbgogIGluc3RhbGxPclVwZGF0ZVlhcm4KZmk7CllBUk5fTEFURVNUX1ZFUlNJT049JChucG0gc2hvdyB5YXJuIGRpc3QtdGFncy5sYXRlc3QgLS1qc29uIHwgY3V0IC1kJyInIC1mMikKWUFSTl9JTlNUQUxMRURfVkVSU0lPTj0kKCRZQVJOX0JJTkFSWV9GSUxFUEFUSCAtLXZlcnNpb24pCnByaW50ZiAiICh2JXMpIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJFlBUk5fSU5TVEFMTEVEX1ZFUlNJT04iCnByaW50SW5kZW50CmlmIFsgIiRZQVJOX0xBVEVTVF9WRVJTSU9OIiA9ICIkWUFSTl9JTlNUQUxMRURfVkVSU0lPTiIgXTsgdGhlbgogIHByaW50ZiAiICAgICVzIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJF9NU0dfSVRTX1VQREFURUQiCmVsc2UKICBwcmludGYgIiAgICAlcyAodiVzIC0+IHYlcykuLi4iICIkX01TR19VUERBVElORyIgIiRZQVJOX0lOU1RBTExFRF9WRVJTSU9OIiAiJFlBUk5fTEFURVNUX1ZFUlNJT04iCiAgaW5zdGFsbE9yVXBkYXRlWWFybgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCAkX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7Cg=='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
