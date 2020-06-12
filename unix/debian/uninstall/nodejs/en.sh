#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19VTklOU1RBTExJTkdfTk9ERUpTX0VDT1NZU1RFTT0iVW5pbnN0YWxsaW5nIE5vZGVKUyBlY29zeXN0ZW0uLi4iCl9NU0dfVU5JTlNUQUxMSU5HX05PREVKUz0iVW5pbnN0YWxsaW5nIE5vZGVKUyIKX01TR19OT0RFSlNfSVNfTk9UX0lOU1RBTExFRD0iTm9kZUpTIGlzIG5vdCBpbnN0YWxsZWQiCl9NU0dfTlBNX0lTX05PVF9JTlNUQUxMRUQ9Ik5QTSBpcyBub3QgaW5zdGFsbGVkIgpfTVNHX1VOSU5TVEFMTElOR19OUE09IlVuaW5zdGFsbGluZyBOUE0uLi4iCl9NU0dfWUFSTl9JU19OT1RfSU5TVEFMTEVEPSJZYXJuIGlzIG5vdCBpbnN0YWxsZWQiCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7CklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtLWRpc3RybykKICAgIHNoaWZ0CiAgICBVTklYX0RJU1RSTz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQppZiBbIC16ICIkVU5JWF9ESVNUUk8iIF07IHRoZW4KICBpZiBbWyAiJChzdWRvIGRwa2cgLXMgY3VybCAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBjdXJsID4gL2Rldi9udWxsCiAgZmk7CiAgc291cmNlIDwoY3VybCAtc0wgaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL3V0aWwvZ2V0LWRpc3Ryby9lbi5zaCkKZmk7CmlmIFsgIiRVTklYX0RJU1RSTyIgPSAidWJ1bnR1IiBdIHx8IFsgIiRVTklYX0RJU1RSTyIgPSAiZGViaWFuIiBdOyB0aGVuCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiVzXG4iICIkX01TR19VTklOU1RBTExJTkdfTk9ERUpTX0VDT1NZU1RFTSIKICBwcmludEluZGVudAogIE5PREVfSlNfQklOQVJZX1BBVEg9JChjb21tYW5kIC12IG5vZGUpCiAgaWYgWyAiJE5PREVfSlNfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfTk9ERUpTX0lTX05PVF9JTlNUQUxMRUQiCiAgZWxzZQogICAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfVU5JTlNUQUxMSU5HX05PREVKUyIgIiQobm9kZSAtdiB8IGN1dCAtYzItMTUpIgogICAgc3VkbyBhcHQtZ2V0IHB1cmdlIG5vZGVqcyAteSAtcXFxID4gL2Rldi9udWxsCiAgICBBUFRfU09VUkNFX0ZJTEVTX1RPX0RFTEVURT0oCiAgICAgICJub2Rlc291cmNlLmxpc3QiCiAgICAgICJub2Rlc291cmNlLmxpc3QuZGlzdFVwZ3JhZGUiCiAgICAgICJub2Rlc291cmNlLmxpc3Quc2F2ZSIKICAgICkKICAgIGZvciBBUFRfU09VUkNFX0ZJTEVOQU1FIGluICIke0FQVF9TT1VSQ0VfRklMRVNfVE9fREVMRVRFW0BdfSI7IGRvCiAgICAgIHN1ZG8gcm0gLWYgIi9ldGMvYXB0L3NvdXJjZXMubGlzdC5kLyRBUFRfU09VUkNFX0ZJTEVOQU1FIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBkb25lCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBOUE1fQklOQVJZX1BBVEg9JChjb21tYW5kIC12IG5wbSkKICBpZiBbICIkTlBNX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX05QTV9JU19OT1RfSU5TVEFMTEVEIgogIGVsc2UKICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX1VOSU5TVEFMTElOR19OUE0iCiAgICBucG0gdW5pbnN0YWxsIG5wbSAtZyAtLXF1aWV0CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBZQVJOX0JJTkFSWV9QQVRIPSQoY29tbWFuZCAtdiBucG0pCiAgaWYgWyAiJFlBUk5fQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogICAgcHJpbnRmICIgICVzIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJF9NU0dfWUFSTl9JU19OT1RfSU5TVEFMTEVEIgogIGZpOwpmaTsK' | base64 -d)
