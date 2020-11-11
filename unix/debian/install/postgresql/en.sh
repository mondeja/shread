#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfQURESU5HX1JFUE89IkFkZGluZyByZXBvc2l0b3J5Li4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBQb3N0Z3JlU1FMIHB1YmxpYyBrZXkiCl9NU0dfVVBEQVRJTkdfUEFDS0FHRVM9IlVwZGF0aW5nIHBhY2thZ2VzLi4uIgpfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTPSJSZW1vdmluZyBwcmV2aW91cyBwYWNrYWdlcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT049IkNoZWNraW5nIHZlcnNpb24gYXZhaWxhYmxlIgpfTVNHX1ZFUlNJT05fTk9UX09GRklDSUFMTFlfQVZBSUxBQkxFPSJWZXJzaW9uIG5vdCBhdmFpbGFibGUgYXQgb2ZmaWNpYWwgUG9zdGdyZVNRTCByZXBvc2l0b3JpZXMiCl9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMPSJUaGUgdmVyc2lvbiBvZiBQb3N0Z2lzIHRoYXQgeW91J3JlIHRyeWluZyB0byBpbnN0YWxsIgpfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0U9ImRvZXNuJ3QgZXhpc3RzIGFzIEFQVCBwYWNrYWdlIGZvciBQb3N0Z3JlU1FMIgpfTVNHX1RIRV9QQUNLQUdFPSJ0aGUgcGFja2FnZSIKX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TPSJkb2Vzbid0IGV4aXN0cyBpbiBQb3N0Z3JlU1FMIG9mZmljaWFsIHJlcG9zaXRvcmllcy4iCl9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OPSJTcGVjaWZ5IGFuIGV4aXN0ZW50IHZlcnNpb24gYmV0d2VlbiB0aGUgbmV4dCB1c2luZyB0aGUgcGFyYW0gJy0tcG9zdGdpcy12ZXJzaW9uJzoiCl9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUc9IkNoZWNraW5nIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBzZXJ2aWNlICdwb3N0Z3Jlc3FsJy4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfSVRTX0VOQUJMRUQ9Ikl0J3MgZW5hYmxlZCIKX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFPSJBbiBlcnJvciBoYXBwZW4gZW5hYmxpbmcgJ3Bvc3RncmVzcWwnIHNlcnZpY2UuIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FWElUX0NPREU9IkV4aXQgY29kZSIKX01TR19MQVVOQ0hJTkc9IkxhdW5jaGluZy4uLiIKX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRD0iVGhlICdwb3N0Z3Jlc3FsJyBzZXJ2aWNlIGNvdWxkbid0IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19JTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5uaW5nIgpfTVNHX0lOU1RBTExJTkdfUEc9Ikluc3RhbGxpbmcgUG9zdGdyZVNRTC4uLiIKX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTPSJJbnN0YWxsaW5nIHBhY2thZ2VzLi4uIgpfTVNHX0NIRUtJTkdfUEdfRU5WPSJDaGVja2luZyBQb3N0Z3JlU1FMIGVudmlyb25tZW50Li4uIgpfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTPSJDaGVja2luZyBwYWNrYWdlcy4uLiIKX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEPSJZb3VyIHZlcnNpb24gb2YgRGViaWFuL1VidW50dSBpcyBub3Qgc3VwcG9ydGVkIGJ5IG9mZmljaWFsIFBvc3RncmVTUUwgcmVwb3NpdG9yaWVzIgpfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEg9Ii9ldGMvYXB0L3NvdXJjZXMubGlzdC5kL3BnZGciCklOREVOVF9TVFJJTkc9IiIKX1ZFUlNJT049IiIKX0lOQ0xVREVfUE9TVEdJUz0wCl9QT1NUR0lTX1ZFUlNJT049IiIKX0lOQ0xVREVfUEdBRE1JTj0wCl9JTkNMVURFX1BMUFlUSE9OMz0wCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcG9zdGdyZXNxbC8kX1NDUklQVF9GSUxFTkFNRSBbLWhdIFstaSBTVFJJTkddIFstcGd2IFBPU1RHUkVTUUxfVkVSU0lPTl0gWy1naXNdIFstZ2lzdiBQT1NUR0lTX1ZFUlNJT05dIFstcGdhZF0gWy1wbHB5M10KCiAgSW5zdGFsbCBQb3N0Z3JlU1FMIHBhY2thZ2VzIGFuZCwgb3B0aW9uYWxseSwgc29tZSBhZGRpdGlvbmFsIHBhY2thZ2VzIGZyb20gb2ZmaWNpYWwgc291cmNlcy4KICBBbHNvIGNoZWNrIGlmIHRoZSBwb3N0Z3JlcyBzZXJ2aWNlIGlzIHJ1bm5pbmcgYW5kIGVuYWJsZXMgaXQsIGlmIG5vdCBhbHJlYWR5LCBmb3IgZXhlY3V0ZSBhdCBzdGFydC4KCk9wdGlvbnM6CiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgICAgICAgIFNob3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXQuCiAgLWkgU1RSSU5HLCAtLWluZGVudCBTVFJJTkcgICAgICAgIEVhY2ggbGluZSBvZiB0aGUgc2NyaXB0IG91dHB1dCB3aWxsIGJlIHByZWNlZGVkIHdpdGggdGhlIHN0cmluZyBkZWZpbmVkIGluIHRoaXMgcGFyYW1ldGVyLgogIC1wZ3YgUE9TVEdSRVNRTF9WRVJTSU9OLCAtLXBvc3RncmVzcWwtdmVyc2lvbiBQT1NUR1JFU1FMX1ZFUlNJT04KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUG9zdGdyZVNRTCB2ZXJzaW9uIHRvIGluc3RhbGwuIElmIG5vdCBwcm92aWRlZCwgdGhlIGxhdGVzdCB2ZXJzaW9uIGluIHJlcG9zaXRvcmllcyB3aWxsIGJlIGluc3RhbGxlZC4KICAtZ2lzLCAtLWluc3RhbGwtcG9zdGdpcyAgICAgICAgICAgSW5zdGFsbCBQb3N0Z2lzIHBhY2thZ2UgY29ycmVzcG9uZGVudCB0byB0aGUgUG9zdGdyZVNRTCB2ZXJzaW9uIHRvIGluc3RhbGwuCiAgLWdpc3YgUE9TVEdJU19WRVJTSU9OLCAtLXBvc3RnaXMtdmVyc2lvbiBQT1NUR0lTX1ZFUlNJT04KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BlY2lmaWVzIHdoYXQgdmVyc2lvbiBvZiBQb3N0R0lTIHdpbGwgYmUgaW5zdGFsbGVkLiBPbmx5IGhhcyBlZmZlY3QgcGFzc2luZyAnLS1pbnN0YWxsLXBvc3RnaXMnIG9wdGlvbi4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSWYgbm90IHByb3ZpZGVkLCB3aWxsIGJlIGluc3RhbGxlZCB0aGUgbGF0ZXN0IGF2YWlsYWJsZSB2ZXJzaW9uIG9mIHRoZSBwYWNrYWdlLgogIC1wZ2FkLCAtLWluc3RhbGwtcGdhZG1pbiAgICAgICAgICBJbnN0YWxsIGxhdGVzdCB2ZXJzaW9uIGF2YWlsYWJsZSBvZiAncGdhZG1pbicgcGFja2FnZS4KICAtcGxweTMsIC0taW5zdGFsbC1wbHB5dGhvbjMgICAgICAgSW5zdGFsbCBsYXRlc3QgdmVyc2lvbiBhdmFpbGFibGUgb2YgJ3Bvc3RncmVzcWwtcGxweXRob24zLSonIHBhY2thZ2UuCgpIRUxQX1VTQUdFCiAgICBleGl0IDEKfQpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtaXwtLWluZGVudCkKICAgIElOREVOVF9TVFJJTkc9IiQyIgogICAgc2hpZnQgMgogICAgOzsKICAgIC1ofC0taGVscCkKICAgIHNoaWZ0CiAgICB1c2FnZQogICAgOzsgICAgCiAgICAtcGd2fC0tcG9zdGdyZXNxbC12ZXJzaW9uKQogICAgc2hpZnQKICAgIF9WRVJTSU9OPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC1naXN8LS1pbnN0YWxsLXBvc3RnaXMpCiAgICBfSU5DTFVERV9QT1NUR0lTPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLWdpc3Z8LS1wb3N0Z2lzLXZlcnNpb24pCiAgICBzaGlmdAogICAgX1BPU1RHSVNfVkVSU0lPTj0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtcGdhZHwtLWluc3RhbGwtcGdhZG1pbikKICAgIF9JTkNMVURFX1BHQURNSU49MQogICAgc2hpZnQKICAgIDs7CiAgICAtcGxweTN8LS1pbnN0YWxsLXBscHl0aG9uMykKICAgIF9JTkNMVURFX1BMUFlUSE9OMz0xCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmZ1bmN0aW9uIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZCgpIHsKICBpZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwp9CmZ1bmN0aW9uIGluc3RhbGxTY3JpcHREZXBlbmRlbmNpZXMoKSB7CiAgaW5zdGFsbFBhY21hbklmTm90SW5zdGFsbGVkCiAgSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgICAid2dldCIKICAgICJhcHRpdHVkZSIKICAgICJjdXJsIgogICkKICBmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICAgIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgICAgc3VkbyBwYWNtYW4gLVMgLS0gLXkgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICAgIGZpOwogIGRvbmU7Cn0KREVCSUFOX1ZFUlNJT049IiIKZnVuY3Rpb24gZ2V0RGViaWFuVmVyc2lvbigpIHsKICBERUJJQU5fVkVSU0lPTj0iJChsc2JfcmVsZWFzZSAtYyAtcykiCn0KZnVuY3Rpb24gY2hlY2tEZWJpYW5WZXJzaW9uU3VwcG9ydGVkKCkgewogIERFQklBTl9WRVJTSU9OX1NVUFBPUlRFRD0wCiAgX0dFVF9ERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQ9JCgKICAgIGN1cmwgLXNMIGh0dHA6Ly9hcHQucG9zdGdyZXNxbC5vcmcvcHViL3JlcG9zL2FwdC9kaXN0cy8gfCAgICAgZ3JlcCAtbyAiJERFQklBTl9WRVJTSU9OLXBnZGciCiAgKQogIGlmIFsgIiRfR0VUX0RFQklBTl9WRVJTSU9OX1NVUFBPUlRFRCIgIT0gIiIgXTsgdGhlbgogICAgREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPTEKICBmaTsKfQpmdW5jdGlvbiBzaWduU291cmNlcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfQURESU5HX1JFUE8iCiAgU0lHTl9QR0RHX0dQR19LRVlfU1RERVJSPSQoCiAgICB3Z2V0IC1xTyAtIGh0dHBzOi8vd3d3LnBvc3RncmVzcWwub3JnL21lZGlhL2tleXMvQUNDQzRDRjguYXNjIHwgICAgIHN1ZG8gYXB0LWtleSBhZGQgLSAyPiYxID4gL2Rldi9udWxsKQogIFNJR05fUEdER19HUEdfS0VZX0VYSVRfQ09ERT0kPwogIGlmIFsgJFNJR05fUEdER19HUEdfS0VZX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXM6XG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX1BPU1RHUkVTUUxfUFVCTElDX0tFWSIgPiYyCiAgICBwcmludGYgIiVzXG4iICIkU0lHTl9QR0RHX0dQR19LRVlfU1RERVJSIiA+JjIKICAgIGV4aXQgJFNJR05fUEdER19HUEdfS0VZX0VYSVRfQ09ERQogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19VUERBVElOR19QQUNLQUdFUyIKICBzdWRvIHBhY21hbiB1cGRhdGUgPiAvZGV2L251bGwKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBwdXJnZVByZXZpb3VzUGFja2FnZXMoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTIgogIHN1ZG8gcGFjbWFuIC1SbnMgcG9zdGdyZXNxbCA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gY2xlYW5QcmV2aW91c1NvdXJjZXMoKSB7CiAgX1BHREdfU09VUkNFU19FWFRTPSgKICAgICJsaXN0IgogICAgImRpc3RVcGdyYWRlIgogICAgInNhdmUiCiAgKQogIGZvciBFWFQgaW4gIiR7X1BHREdfU09VUkNFU19FWFRTW0BdfSI7IGRvCiAgICBpZiBbIC1mICIke19QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSH0uJHtFWFR9IiBdOyB0aGVuCiAgICAgIHN1ZG8gcm0gLWYgIiR7X1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIfS4ke0VYVH0iID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICAgIGZpOwogIGRvbmUKfQpmdW5jdGlvbiBjcmVhdGVTb3VyY2VzTGlzdCgpIHsKICB0b3VjaCAiJF9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSC5saXN0IgogIGVjaG8gImRlYiBodHRwOi8vYXB0LnBvc3RncmVzcWwub3JnL3B1Yi9yZXBvcy9hcHQvICRERUJJQU5fVkVSU0lPTi1wZ2RnIG1haW4iID4gICAgICIkX1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRILmxpc3QiCn0KZnVuY3Rpb24gY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUV4aXN0cygpIHsKICBfUE9TVEdSRVNRTF9TRVJWSUNFX0VYSVNUUz0xCiAgaWYgISBzdWRvIHN5c3RlbWN0bCBzdGF0dXMgcG9zdGdyZXNxbCA+IC9kZXYvbnVsbCAyPiYxOyB0aGVuCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX0VYSVNUUz0wCiAgZmk7Cn0KX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT049IiIKZnVuY3Rpb24gZ2V0TGFzdGVzdFN0YWJsZVBvc3RncmVzVmVyc2lvbigpIHsKICBfTEFTVEVTVF9TVEFCTEVfUE9TVEdSRVNfVkVSU0lPTj0kKAogICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsIiB8ICAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtWzAtOV17MSwzfS57MCwxfVswLTldezEsM30gIiB8ICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCAgICAgc29ydCAtLXZlcnNpb24tc29ydCB8ICAgICB0YWlsIC1uIDEgfCAgICAgY3V0IC1kJy0nIC1mMgogICkKfQpfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSIiCmZ1bmN0aW9uIGdldFBvc3RncmVzVmVyc2lvblRvSW5zdGFsbCgpIHsKICBpZiBbICIkX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICAgIGdldExhc3Rlc3RTdGFibGVQb3N0Z3Jlc1ZlcnNpb24KICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9IiRfTEFTVEVTVF9TVEFCTEVfUE9TVEdSRVNfVkVSU0lPTiIKICAgIHByaW50ZiAiICh2JXMpIiAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgZWxzZQogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAoJXMpLi4uIiAiJF9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT04iICIkX1ZFUlNJT04iCiAgICBfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSQoCiAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbCIgfCAgICAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtWzAtOV17MSwzfS57MCwxfVswLTldezEsM30gIiB8ICAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8ICAgICAgIGdyZXAgLW8gIiRfVkVSU0lPTiIgfCAgICAgICB0ciAtZCAnXG4nCiAgICApCiAgICBpZiBbICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIgPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIgICAgJXMgKCVzKS5cbiIgIiRfTVNHX1ZFUlNJT05fTk9UX09GRklDSUFMTFlfQVZBSUxBQkxFIiAiJF9WRVJTSU9OIiA+JjIKICAgICAgZXhpdCAxCiAgICBmaTsKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQ9IiIKZnVuY3Rpb24gZ2V0SW5zdGFsbGVkUG9zdGdyZXNWZXJzaW9uKCkgewogIF9QT1NUR1JFU19WRVJTSU9OX0lOU1RBTExFRD0kKAogICAgcHNxbCAtLXZlcnNpb24gfCAgICAgY3V0IC1kJyAnIC1mMyB8ICAgICBjdXQgLWQnLicgLWYxIHx8IGV4aXQgJD8KICApCn0KZnVuY3Rpb24gaW5zdGFsbFBvc3RncmVzUGFja2FnZXMoKSB7CiAgUE9TVEdSRVNfUEFDS0FHRVM9KAogICAgInBvc3RncmVzcWwtJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1jbGllbnQtJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1jb250cmliLSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgInBvc3RncmVzcWwtc2VydmVyLWRldi0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJsaWJwcS1kZXYiCiAgKQogIGlmIFsgJF9JTkNMVURFX1BPU1RHSVMgLWVxIDEgXTsgdGhlbgogICAgaWYgWyAiJF9QT1NUR0lTX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgICBfUE9TVEdJU19QQUNLQUdFPSQoCiAgICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcyIgfCAgICAgICAgIGdyZXAgLUVvICIgcG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMtWzAtOV17MSwzfS57MCwxfVswLTldezAsM30gIiB8ICAgICAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgICAgICAgICBzb3J0IC0tdmVyc2lvbi1zb3J0IHwgICAgICAgICB0YWlsIC1uIDEKICAgICAgKQogICAgZWxzZQogICAgICBfUE9TVEdJU19QQUNLQUdFX0VYSVNUUz0kKAogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMtJHtfUE9TVEdJU19WRVJTSU9OfSIKICAgICAgKQogICAgICBpZiBbICIkX1BPU1RHSVNfUEFDS0FHRV9FWElTVFMiID0gIiIgXTsgdGhlbgogICAgICAgIHByaW50ZiAiXG4lcyAodiVzKSIgIiRfTVNHX1ZFUlNJT05fT0ZfUE9TVEdJU19UUllJTkdfVE9fSU5TVEFMTCIgIiRfUE9TVEdJU19WRVJTSU9OIiA+JjIKICAgICAgICBwcmludGYgIiAlcyB2JXMiICIkX01TR19ET0VTTlRfRVhJU1RTX0FTX0FQVF9QR19QQUNLQUdFIiAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiID4mMgogICAgICAgIHByaW50ZiAiICglcyAncG9zdGdyZXNxbC0lcy1wb3N0Z2lzJXMnKSIgIiRfTVNHX1RIRV9QQUNLQUdFIiAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiICIkX1BPU1RHSVNfVkVSU0lPTiIgPiYyCiAgICAgICAgcHJpbnRmICIgJXNcbiIgIiRfTVNHX0RPRVNOVF9FWElTVFNfSU5fUEdfT0ZGSUNJQUxfUkVQT1MiID4mMgogICAgICAgIHByaW50ZiAiJXNcbiIgIiRfTVNHX1NQRUNJRllfQU5fRVhJU1RFTlRfVkVSU0lPTiIgPiYyCiAgICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcyIgPiYyCiAgICAgICAgZXhpdCAxCiAgICAgIGZpOwogICAgICBfUE9TVEdJU19QQUNLQUdFPSJwb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcy0ke19QT1NUR0lTX1ZFUlNJT059IgogICAgZmk7CiAgICBQT1NUR1JFU19QQUNLQUdFUys9KAogICAgICAiJF9QT1NUR0lTX1BBQ0tBR0UiCiAgICApCiAgZmk7CiAgaWYgWyAkX0lOQ0xVREVfUEdBRE1JTiAtZXEgMSBdOyB0aGVuCiAgICBfTEFTVEVTVF9TVEFCTEVfUEdBRE1JTl9QQUNLQUdFPSQoCiAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecGdhZG1pbiIgfCAgICAgICBncmVwIC1FbyAiIHBnYWRtaW5bMC05XXsxLDN9LnswLDF9WzAtOV17MCwzfSAiIHwgICAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgICAgICAgc29ydCAtLXZlcnNpb24tc29ydCB8ICAgICAgIHRhaWwgLW4gMQogICAgKQogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUEdBRE1JTl9QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BMUFlUSE9OMyAtZXEgMSBdOyB0aGVuCiAgICBfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtcGxweXRob24zLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0iIHwgICAgICAgaGVhZCAtbiAxIHwgICAgICAgZ3JlcCAtbyAiIHBvc3RncmVzcWwtcGxweXRob24zLTEyIiB8ICAgICAgIGF3ayAneyBwcmludCAkMSB9JwogICAgKQogICAgaWYgWyAiJF9MQVNURVNUX1NUQUJMRV9QTFBZVEhPTjNfQ09NUEFUSUJMRV9QQUNLQUdFIiAhPSAiIiBdOyB0aGVuCiAgICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIKICAgICAgKQogICAgZmk7CiAgZmk7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiQxIgogIGZvciBQQUNLQUdFIGluICIke1BPU1RHUkVTX1BBQ0tBR0VTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkUEFDS0FHRSIKICAgIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJFBBQ0tBR0UiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIF9BUFRfSU5TVEFMTF9TVERFUlI9JChzdWRvIHBhY21hbiAtUyAtLSAteSAiJFBBQ0tBR0UiID4gL2Rldi9udWxsIDI+JjEpCiAgICAgIF9BUFRfSU5TVEFMTF9FWElUX0NPREU9JD8KICAgICAgaWYgWyAkX0FQVF9JTlNUQUxMX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgICAgcHJpbnRmICIlcyIgIiRfQVBUX0lOU1RBTExfU1RERVJSIiA+JjIKICAgICAgICBleGl0ICRfQVBUX0lOU1RBTExfRVhJVF9DT0RFCiAgICAgIGZpOwogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCn0KZnVuY3Rpb24gY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUNvbmZpZygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUciCiAgcHJpbnRJbmRlbnQKICBfUE9TVEdSRVNRTF9TRVJWSUNFX0VOQUJMRURfRk9VTkQ9JCgKICAgIHN5c3RlbWN0bCBsaXN0LXVuaXQtZmlsZXMgfCAgICAgZ3JlcCBlbmFibGVkIHwgICAgIGdyZXAgcG9zdGdyZXNxbCkKICBpZiBbICIkX1BPU1RHUkVTUUxfU0VSVklDRV9FTkFCTEVEX0ZPVU5EIiA9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfRU5BQkxJTkciCiAgICBfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX09VVFBVVD0kKAogICAgICBzdWRvIHN5c3RlbWN0bCBlbmFibGUgcG9zdGdyZXNxbC5zZXJ2aWNlIDI+JjEgPiAvZGV2L251bGwKICAgICkKICAgIF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFPSQ/CiAgICBpZiBbICRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVJST1JfRU5BQkxJTkdfUEdfU0VSVklDRSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVkXG4iICIkX01TR19FWElUX0NPREUiICIkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQiID4mMgogICAgICBleGl0ICRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERQogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfRU5BQkxFRCIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludEluZGVudAogIF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTPSQoCiAgICBzdWRvIHN5c3RlbWN0bCBzaG93IC1wIEFjdGl2ZVN0YXRlIHBvc3RncmVzcWwgfCAgICAgY3V0IC1kJz0nIC1mMiB8ICAgICB0ciAtZCAnXG4nKQogIGlmIFsgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUyIgIT0gImFjdGl2ZSIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19MQVVOQ0hJTkciCiAgICBzdWRvIHN5c3RlbWN0bCBzdGFydCBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQ9JD8KICAgIGlmIFsgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRCAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfUEdfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQiID4mMgogICAgICBwcmludGYgIiVzICclcycuXG4iICIkX01TR19JVFNfSU5fU1RBVEUiICIkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVMiID4mMgogICAgICBleGl0ICRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX1JVTk5JTkciCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gaW5zdGFsbFBvc3RncmVTUUwoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0lOU1RBTExJTkdfUEciCiAgZ2V0RGViaWFuVmVyc2lvbgogIGNoZWNrRGViaWFuVmVyc2lvblN1cHBvcnRlZAogIGlmIFsgJERFQklBTl9WRVJTSU9OX1NVUFBPUlRFRCAtZXEgMCBdOyB0aGVuCiAgICBwcmludGYgIiVzICglcykuIiAiJF9NU0dfRElTVFJPX1ZFUlNJT05fTk9UX1NVUFBPUlRFRCIgIiRERUJJQU5fVkVSU0lPTiIgPiYyCiAgICBleGl0IDEKICBmaTsKICBjbGVhblByZXZpb3VzU291cmNlcwogIHB1cmdlUHJldmlvdXNQYWNrYWdlcwogIGNyZWF0ZVNvdXJjZXNMaXN0CiAgc2lnblNvdXJjZXMKICBnZXRQb3N0Z3Jlc1ZlcnNpb25Ub0luc3RhbGwKICBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcyAiJF9NU0dfSU5TVEFMTElOR19QQUNLQUdFUyIKfQpmdW5jdGlvbiBtYWluKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFS0lOR19QR19FTlYiCiAgY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUV4aXN0cwogIGlmIFsgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfRVhJU1RTIC1lcSAwIF07IHRoZW4KICAgIGluc3RhbGxQb3N0Z3JlU1FMCiAgZWxzZQogICAgZ2V0SW5zdGFsbGVkUG9zdGdyZXNWZXJzaW9uCiAgICBfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSRfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQKICAgIGluc3RhbGxQb3N0Z3Jlc1BhY2thZ2VzICIkX01TR19DSEVDS0lOR19QQUNLQUdFUyIKICBmaTsKICBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlQ29uZmlnCn0KaWYgKHJldHVybiAwIDI+L2Rldi9udWxsKTsgdGhlbgogIGV4cG9ydFZhcmlhYmxlcwplbHNlCiAgbWFpbgpmaTs='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
