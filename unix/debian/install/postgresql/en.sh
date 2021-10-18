#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfQURESU5HX1JFUE89IkFkZGluZyByZXBvc2l0b3J5Li4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBQb3N0Z3JlU1FMIHB1YmxpYyBrZXkiCl9NU0dfVVBEQVRJTkdfUEFDS0FHRVM9IlVwZGF0aW5nIHBhY2thZ2VzLi4uIgpfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTPSJSZW1vdmluZyBwcmV2aW91cyBwYWNrYWdlcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT049IkNoZWNraW5nIHZlcnNpb24gYXZhaWxhYmxlIgpfTVNHX1ZFUlNJT05fTk9UX09GRklDSUFMTFlfQVZBSUxBQkxFPSJWZXJzaW9uIG5vdCBhdmFpbGFibGUgYXQgb2ZmaWNpYWwgUG9zdGdyZVNRTCByZXBvc2l0b3JpZXMiCl9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMPSJUaGUgdmVyc2lvbiBvZiBQb3N0Z2lzIHRoYXQgeW91J3JlIHRyeWluZyB0byBpbnN0YWxsIgpfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0U9ImRvZXNuJ3QgZXhpc3RzIGFzIEFQVCBwYWNrYWdlIGZvciBQb3N0Z3JlU1FMIgpfTVNHX1RIRV9QQUNLQUdFPSJ0aGUgcGFja2FnZSIKX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TPSJkb2Vzbid0IGV4aXN0cyBpbiBQb3N0Z3JlU1FMIG9mZmljaWFsIHJlcG9zaXRvcmllcy4iCl9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OPSJTcGVjaWZ5IGFuIGV4aXN0ZW50IHZlcnNpb24gYmV0d2VlbiB0aGUgbmV4dCB1c2luZyB0aGUgcGFyYW0gJy0tcG9zdGdpcy12ZXJzaW9uJzoiCl9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUc9IkNoZWNraW5nIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBzZXJ2aWNlICdwb3N0Z3Jlc3FsJy4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfSVRTX0VOQUJMRUQ9Ikl0J3MgZW5hYmxlZCIKX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFPSJBbiBlcnJvciBoYXBwZW4gZW5hYmxpbmcgJ3Bvc3RncmVzcWwnIHNlcnZpY2UuIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FWElUX0NPREU9IkV4aXQgY29kZSIKX01TR19MQVVOQ0hJTkc9IkxhdW5jaGluZy4uLiIKX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRD0iVGhlICdwb3N0Z3Jlc3FsJyBzZXJ2aWNlIGNvdWxkbid0IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19JTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5uaW5nIgpfTVNHX0lOU1RBTExJTkdfUEc9Ikluc3RhbGxpbmcgUG9zdGdyZVNRTC4uLiIKX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTPSJJbnN0YWxsaW5nIHBhY2thZ2VzLi4uIgpfTVNHX0NIRUtJTkdfUEdfRU5WPSJDaGVja2luZyBQb3N0Z3JlU1FMIGVudmlyb25tZW50Li4uIgpfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTPSJDaGVja2luZyBwYWNrYWdlcy4uLiIKX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEPSJZb3VyIHZlcnNpb24gb2YgRGViaWFuL1VidW50dSBpcyBub3Qgc3VwcG9ydGVkIGJ5IG9mZmljaWFsIFBvc3RncmVTUUwgcmVwb3NpdG9yaWVzIgpfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEg9Ii9ldGMvYXB0L3NvdXJjZXMubGlzdC5kL3BnZGciCklOREVOVF9TVFJJTkc9IiIKU0VUWD0wCl9WRVJTSU9OPSIiCl9JTkNMVURFX1BPU1RHSVM9MApfUE9TVEdJU19WRVJTSU9OPSIiCl9JTkNMVURFX1BHQURNSU49MApfSU5DTFVERV9QTFBZVEhPTjM9MApfQ0hFQ0tfU0VSVklDRT0xCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcG9zdGdyZXNxbC8kX1NDUklQVF9GSUxFTkFNRSBbLWhdIFstaSBTVFJJTkddIFstcGd2IFBPU1RHUkVTUUxfVkVSU0lPTl0gWy1naXNdIFstZ2lzdiBQT1NUR0lTX1ZFUlNJT05dIFstcGdhZF0gWy1wbHB5M10KCiAgSW5zdGFsbHMgUG9zdGdyZVNRTCBwYWNrYWdlcyBhbmQsIG9wdGlvbmFsbHksIHNvbWUgYWRkaXRpb25hbCBwYWNrYWdlcyBmcm9tIG9mZmljaWFsIHNvdXJjZXMuCiAgQWxzbyBjaGVja3MgaWYgdGhlICdwb3N0Z3Jlcycgc2VydmljZSBpcyBydW5uaW5nIGFuZCBlbmFibGVzIGl0LCBpZiBpcyBub3QgYWxyZWFkeS4KCk9wdGlvbnM6CiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgICAgICAgIFNob3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXQuCiAgLWkgU1RSSU5HLCAtLWluZGVudCBTVFJJTkcgICAgICAgIEVhY2ggbGluZSBvZiB0aGUgc2NyaXB0IG91dHB1dCB3aWxsIGJlIHByZWNlZGVkIHdpdGggdGhlIHN0cmluZyBkZWZpbmVkIGluIHRoaXMgcGFyYW1ldGVyLgogIC0tc2V0LXggICAgICAgICAgICAgICAgICAgICAgICAgICBTZXRzIHRoZSAteCBvcHRpb24gaW4gQmFzaCB0byBwcmludCBvdXQgdGhlIHN0YXRlbWVudHMgYXMgdGhleSBhcmUgYmVpbmcgZXhlY3V0ZWQuIFVzZWZ1bCBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLgogIC1wZ3YgUE9TVEdSRVNRTF9WRVJTSU9OLCAtLXBvc3RncmVzcWwtdmVyc2lvbiBQT1NUR1JFU1FMX1ZFUlNJT04KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUG9zdGdyZVNRTCB2ZXJzaW9uIHRvIGluc3RhbGwuIElmIG5vdCBwcm92aWRlZCwgdGhlIGxhdGVzdCB2ZXJzaW9uIGF2YWlsYWJsZSBpbiByZXBvc2l0b3JpZXMgd2lsbCBiZSBpbnN0YWxsZWQuCiAgLWdpcywgLS1pbnN0YWxsLXBvc3RnaXMgICAgICAgICAgIEluc3RhbGwgUG9zdGdpcyBwYWNrYWdlIGNvcnJlc3BvbmRlbnQgdG8gdGhlIFBvc3RncmVTUUwgdmVyc2lvbiB0byBpbnN0YWxsLgogIC1naXN2IFBPU1RHSVNfVkVSU0lPTiwgLS1wb3N0Z2lzLXZlcnNpb24gUE9TVEdJU19WRVJTSU9OCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwZWNpZmllcyB3aGF0IHZlcnNpb24gb2YgUG9zdEdJUyB3aWxsIGJlIGluc3RhbGxlZC4gT25seSBoYXMgZWZmZWN0IHBhc3NpbmcgJy0taW5zdGFsbC1wb3N0Z2lzJyBvcHRpb24uCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElmIG5vdCBwcm92aWRlZCwgd2lsbCBiZSBpbnN0YWxsZWQgdGhlIGxhdGVzdCBhdmFpbGFibGUgdmVyc2lvbiBvZiB0aGUgcGFja2FnZS4KICAtcGdhZCwgLS1pbnN0YWxsLXBnYWRtaW4gICAgICAgICAgSW5zdGFsbCBsYXRlc3QgdmVyc2lvbiBhdmFpbGFibGUgb2YgJ3BnYWRtaW4nIHBhY2thZ2UuCiAgLXBscHkzLCAtLWluc3RhbGwtcGxweXRob24zICAgICAgIEluc3RhbGwgbGF0ZXN0IHZlcnNpb24gYXZhaWxhYmxlIG9mICdwb3N0Z3Jlc3FsLXBscHl0aG9uMy0qJyBwYWNrYWdlLgogIC0tbm8tY2hlY2stc2VydmljZSAgICAgICAgICAgICAgICBEbyBub3QgY2hlY2sgdGhhdCB0aGUgc2VydmljZSBpcyBjb25maWd1cmVkIHRvIHJ1biBhdCBib290IHRpbWUuCgpIRUxQX1VTQUdFCiAgICBleGl0IDEKfQpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtaXwtLWluZGVudCkKICAgIElOREVOVF9TVFJJTkc9IiQyIgogICAgc2hpZnQgMgogICAgOzsKICAgIC1ofC0taGVscCkKICAgIHNoaWZ0CiAgICB1c2FnZQogICAgOzsgICAgLS1zZXQteCkKICAgIFNFVFg9MQogICAgc2hpZnQKICAgIDs7ICAgIAogICAgLXBndnwtLXBvc3RncmVzcWwtdmVyc2lvbikKICAgIHNoaWZ0CiAgICBfVkVSU0lPTj0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtZ2lzfC0taW5zdGFsbC1wb3N0Z2lzKQogICAgX0lOQ0xVREVfUE9TVEdJUz0xCiAgICBzaGlmdAogICAgOzsKICAgIC1naXN2fC0tcG9zdGdpcy12ZXJzaW9uKQogICAgc2hpZnQKICAgIF9QT1NUR0lTX1ZFUlNJT049JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLXBnYWR8LS1pbnN0YWxsLXBnYWRtaW4pCiAgICBfSU5DTFVERV9QR0FETUlOPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLXBscHkzfC0taW5zdGFsbC1wbHB5dGhvbjMpCiAgICBfSU5DTFVERV9QTFBZVEhPTjM9MQogICAgc2hpZnQKICAgIDs7CiAgICAtLW5vLWNoZWNrLXNlcnZpY2UpCiAgICBfQ0hFQ0tfU0VSVklDRT0wCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiRTRVRYIiAtZXEgMSBdOyB0aGVuIHNldCAteDsgZmkKZnVuY3Rpb24gaW5zdGFsbFBhY21hbklmTm90SW5zdGFsbGVkKCkgewogIGlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICAgIHVybD0iaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC8kX1NDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7Cn0KZnVuY3Rpb24gaW5zdGFsbEluc3RhbGxhdGlvbkRlcGVuZGVuY2llcygpIHsKICBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQKICBJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAgICJ3Z2V0IgogICAgImFwdGl0dWRlIgogICAgImN1cmwiCiAgKQogIGZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgZG9uZTsKfQpERUJJQU5fVkVSU0lPTj0iIgpmdW5jdGlvbiBnZXREZWJpYW5WZXJzaW9uKCkgewogIERFQklBTl9WRVJTSU9OPSIkKGxzYl9yZWxlYXNlIC1jIC1zKSIKfQpmdW5jdGlvbiBjaGVja0RlYmlhblZlcnNpb25TdXBwb3J0ZWQoKSB7CiAgREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPTAKICBfR0VUX0RFQklBTl9WRVJTSU9OX1NVUFBPUlRFRD0kKAogICAgY3VybCAtc0wgaHR0cDovL2FwdC5wb3N0Z3Jlc3FsLm9yZy9wdWIvcmVwb3MvYXB0L2Rpc3RzLyB8ICAgICBncmVwIC1vICIkREVCSUFOX1ZFUlNJT04tcGdkZyIKICApCiAgaWYgWyAiJF9HRVRfREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEIiAhPSAiIiBdOyB0aGVuCiAgICBERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQ9MQogIGZpOwp9CmZ1bmN0aW9uIHNpZ25Tb3VyY2VzKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19BRERJTkdfUkVQTyIKICBTSUdOX1BHREdfR1BHX0tFWV9TVERFUlI9JCgKICAgIHdnZXQgLXFPIC0gaHR0cHM6Ly93d3cucG9zdGdyZXNxbC5vcmcvbWVkaWEva2V5cy9BQ0NDNENGOC5hc2MgfCAgICAgc3VkbyBhcHQta2V5IGFkZCAtIDI+JjEgPiAvZGV2L251bGwpCiAgU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lczpcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRTSUdOX1BHREdfR1BHX0tFWV9TVERFUlIiID4mMgogICAgZXhpdCAkU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX1VQREFUSU5HX1BBQ0tBR0VTIgogIHN1ZG8gcGFjbWFuIHVwZGF0ZSA+IC9kZXYvbnVsbAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIHB1cmdlUHJldmlvdXNQYWNrYWdlcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfUkVNT1ZJTkdfUFJFVklPVVNfUEFDS0FHRVMiCiAgc3VkbyBwYWNtYW4gLVJucyBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBjbGVhblByZXZpb3VzU291cmNlcygpIHsKICBfUEdER19TT1VSQ0VTX0VYVFM9KAogICAgImxpc3QiCiAgICAic2F2ZSIKICAgICJkaXN0VXBncmFkZSIKICApCiAgZm9yIEVYVCBpbiAiJHtfUEdER19TT1VSQ0VTX0VYVFNbQF19IjsgZG8KICAgIGlmIFsgLWYgIiR7X1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIfS4ke0VYVH0iIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJHtfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEh9LiR7RVhUfSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgZG9uZQp9CmZ1bmN0aW9uIGNyZWF0ZVNvdXJjZXNMaXN0KCkgewogIHRvdWNoICIkX1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRILmxpc3QiCiAgZWNobyAiZGViIGh0dHA6Ly9hcHQucG9zdGdyZXNxbC5vcmcvcHViL3JlcG9zL2FwdC8gJERFQklBTl9WRVJTSU9OLXBnZGcgbWFpbiIgPiAgICAgIiRfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEgubGlzdCIKfQpmdW5jdGlvbiBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlRXhpc3RzKCkgewogIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRVhJU1RTPTEKICBpZiAhIHN1ZG8gc3lzdGVtY3RsIHN0YXR1cyBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIDI+JjE7IHRoZW4KICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRVhJU1RTPTAKICBmaTsKfQpfTEFTVEVTVF9TVEFCTEVfUE9TVEdSRVNfVkVSU0lPTj0iIgpmdW5jdGlvbiBnZXRMYXN0ZXN0U3RhYmxlUG9zdGdyZXNWZXJzaW9uKCkgewogIF9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OPSQoCiAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwiIHwgICAgIGdyZXAgLUVvICIgcG9zdGdyZXNxbC1bMC05XXsxLDN9LnswLDF9WzAtOV17MSwzfSAiIHwgICAgIGF3ayAneyBwcmludCAkMSB9JyB8ICAgICBzb3J0IC0tdmVyc2lvbi1zb3J0IHwgICAgIHRhaWwgLW4gMSB8ICAgICBjdXQgLWQnLScgLWYyCiAgKQp9Cl9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9IiIKZnVuY3Rpb24gZ2V0UG9zdGdyZXNWZXJzaW9uVG9JbnN0YWxsKCkgewogIGlmIFsgIiRfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogICAgZ2V0TGFzdGVzdFN0YWJsZVBvc3RncmVzVmVyc2lvbgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0iJF9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OIgogICAgcHJpbnRmICIgKHYlcykiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICBlbHNlCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzICglcykuLi4iICIkX01TR19DSEVDS0lOR19BVkFJTEFCTEVfVkVSU0lPTiIgIiRfVkVSU0lPTiIKICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsIiB8ICAgICAgIGdyZXAgLUVvICIgcG9zdGdyZXNxbC1bMC05XXsxLDN9LnswLDF9WzAtOV17MSwzfSAiIHwgICAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgICAgICAgZ3JlcCAtbyAiJF9WRVJTSU9OIiB8ICAgICAgIHRyIC1kICdcbicKICAgICkKICAgIGlmIFsgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiA9ICIiIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiAgICAlcyAoJXMpLlxuIiAiJF9NU0dfVkVSU0lPTl9OT1RfT0ZGSUNJQUxMWV9BVkFJTEFCTEUiICIkX1ZFUlNJT04iID4mMgogICAgICBleGl0IDEKICAgIGZpOwogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9Cl9QT1NUR1JFU19WRVJTSU9OX0lOU1RBTExFRD0iIgpmdW5jdGlvbiBnZXRJbnN0YWxsZWRQb3N0Z3Jlc1ZlcnNpb24oKSB7CiAgX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVEPSQoCiAgICBwc3FsIC0tdmVyc2lvbiB8ICAgICBjdXQgLWQnICcgLWYzIHwgICAgIGN1dCAtZCcuJyAtZjEgfHwgZXhpdCAkPwogICkKfQpmdW5jdGlvbiBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcygpIHsKICBQT1NUR1JFU19QQUNLQUdFUz0oCiAgICAicG9zdGdyZXNxbC0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLWNsaWVudC0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLWNvbnRyaWItJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1zZXJ2ZXItZGV2LSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgImxpYnBxLWRldiIKICApCiAgaWYgWyAkX0lOQ0xVREVfUE9TVEdJUyAtZXEgMSBdOyB0aGVuCiAgICBpZiBbICIkX1BPU1RHSVNfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICAgIF9QT1NUR0lTX1BBQ0tBR0U9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzIiB8ICAgICAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcy1bMC05XXsxLDN9LnswLDF9WzAtOV17MCwzfSAiIHwgICAgICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCAgICAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCAgICAgICAgIHRhaWwgLW4gMQogICAgICApCiAgICBlbHNlCiAgICAgIF9QT1NUR0lTX1BBQ0tBR0VfRVhJU1RTPSQoCiAgICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcy0ke19QT1NUR0lTX1ZFUlNJT059IgogICAgICApCiAgICAgIGlmIFsgIiRfUE9TVEdJU19QQUNLQUdFX0VYSVNUUyIgPSAiIiBdOyB0aGVuCiAgICAgICAgcHJpbnRmICJcbiVzICh2JXMpIiAiJF9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMIiAiJF9QT1NUR0lTX1ZFUlNJT04iID4mMgogICAgICAgIHByaW50ZiAiICVzIHYlcyIgIiRfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0UiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIgPiYyCiAgICAgICAgcHJpbnRmICIgKCVzICdwb3N0Z3Jlc3FsLSVzLXBvc3RnaXMlcycpIiAiJF9NU0dfVEhFX1BBQ0tBR0UiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIgIiRfUE9TVEdJU19WRVJTSU9OIiA+JjIKICAgICAgICBwcmludGYgIiAlc1xuIiAiJF9NU0dfRE9FU05UX0VYSVNUU19JTl9QR19PRkZJQ0lBTF9SRVBPUyIgPiYyCiAgICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OIiA+JjIKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzIiA+JjIKICAgICAgICBleGl0IDEKICAgICAgZmk7CiAgICAgIF9QT1NUR0lTX1BBQ0tBR0U9InBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLSR7X1BPU1RHSVNfVkVSU0lPTn0iCiAgICBmaTsKICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICIkX1BPU1RHSVNfUEFDS0FHRSIKICAgICkKICBmaTsKICBpZiBbICRfSU5DTFVERV9QR0FETUlOIC1lcSAxIF07IHRoZW4KICAgIF9MQVNURVNUX1NUQUJMRV9QR0FETUlOX1BBQ0tBR0U9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wZ2FkbWluIiB8ICAgICAgIGdyZXAgLUVvICIgcGdhZG1pblswLTldezEsM30uezAsMX1bMC05XXswLDN9ICIgfCAgICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCAgICAgICBzb3J0IC0tdmVyc2lvbi1zb3J0IHwgICAgICAgdGFpbCAtbiAxCiAgICApCiAgICBQT1NUR1JFU19QQUNLQUdFUys9KAogICAgICAiJF9MQVNURVNUX1NUQUJMRV9QR0FETUlOX1BBQ0tBR0UiCiAgICApCiAgZmk7CiAgaWYgWyAkX0lOQ0xVREVfUExQWVRIT04zIC1lcSAxIF07IHRoZW4KICAgIF9MQVNURVNUX1NUQUJMRV9QTFBZVEhPTjNfQ09NUEFUSUJMRV9QQUNLQUdFPSQoCiAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC1wbHB5dGhvbjMtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfSIgfCAgICAgICBoZWFkIC1uIDEgfCAgICAgICBncmVwIC1vICIgcG9zdGdyZXNxbC1wbHB5dGhvbjMtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfSIgfCAgICAgICBhd2sgJ3sgcHJpbnQgJDEgfScKICAgICkKICAgIGlmIFsgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIgIT0gIiIgXTsgdGhlbgogICAgICBQT1NUR1JFU19QQUNLQUdFUys9KAogICAgICAgICIkX0xBU1RFU1RfU1RBQkxFX1BMUFlUSE9OM19DT01QQVRJQkxFX1BBQ0tBR0UiCiAgICAgICkKICAgIGZpOwogIGZpOwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzXG4iICIkMSIKICBmb3IgUEFDS0FHRSBpbiAiJHtQT1NUR1JFU19QQUNLQUdFU1tAXX0iOyBkbwogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAgICVzIiAiJFBBQ0tBR0UiCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRQQUNLQUdFIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBfQVBUX0lOU1RBTExfU1RERVJSPSQoc3VkbyBwYWNtYW4gLVMgLS0gLXkgIiRQQUNLQUdFIiA+IC9kZXYvbnVsbCAyPiYxKQogICAgICBfQVBUX0lOU1RBTExfRVhJVF9DT0RFPSQ/CiAgICAgIGlmIFsgJF9BUFRfSU5TVEFMTF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICAgIHByaW50ZiAiJXMiICIkX0FQVF9JTlNUQUxMX1NUREVSUiIgPiYyCiAgICAgICAgZXhpdCAkX0FQVF9JTlNUQUxMX0VYSVRfQ09ERQogICAgICBmaTsKICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VDb25maWcoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1BHX1NFUlZJQ0VfQ09ORklHIgogIHByaW50SW5kZW50CiAgc2VydmljZV9wcm92aWRlcj0iJChwcyAtcCAxIC1vIGNvbW09KSIKICBpZiBbICIkc2VydmljZV9wcm92aWRlciIgPSAic3lzdGVtZCIgXTsgdGhlbgogICAgc3VkbyBzeXN0ZW1jdGwgaXMtZW5hYmxlZCBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIDI+JjEKICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRElTQUJMRUQ9JD8KICBlbHNlCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX0VOQUJMRURfT1VUPSIkKAogICAgICBzdWRvIHNlcnZpY2UgcG9zdGdyZXNxbCBzdGF0dXMgfCBncmVwICJMb2FkZWQ6ICIgfCBncmVwICIuc2VydmljZTsgZW5hYmxlZDsiCiAgICApIgogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9ESVNBQkxFRD0xCiAgICBpZiBbIC1uICIkX1BPU1RHUkVTUUxfU0VSVklDRV9FTkFCTEVEX09VVCIgXTsgdGhlbgogICAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX0RJU0FCTEVEPTAKICAgIGZpOwogIGZpOwogIGlmIFsgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX0RJU0FCTEVEIiAtZXEgMSBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VOQUJMSU5HIgogICAgaWYgWyAiJHNlcnZpY2VfcHJvdmlkZXIiID0gInN5c3RlbWQiIF07IHRoZW4KICAgICAgX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQ9IiQoc3VkbyBzeXN0ZW1jdGwgZW5hYmxlIHBvc3RncmVzcWwuc2VydmljZSkiCiAgICAgIF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFPSQ/CiAgICBlbHNlCiAgICAgIF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfT1VUUFVUPSIkKHN1ZG8gdXBkYXRlLXJjLmQgcG9zdGdyZXNxbCBlbmFibGUpIgogICAgICBfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgZmk7CiAgICBpZiBbICRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVJST1JfRU5BQkxJTkdfUEdfU0VSVklDRSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVkXG4iICIkX01TR19FWElUX0NPREUiICIkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQiID4mMgogICAgICBleGl0ICRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERQogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfRU5BQkxFRCIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludEluZGVudAogIGlmIFsgIiRzZXJ2aWNlX3Byb3ZpZGVyIiA9ICJzeXN0ZW1kIiBdOyB0aGVuCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUz0kKAogICAgICBzdWRvIHN5c3RlbWN0bCBzaG93IC1wIEFjdGl2ZVN0YXRlIHBvc3RncmVzcWwgICAgICAgfCBjdXQgLWQnPScgLWYyCiAgICApCiAgZWxzZQogICAgX0NIRUNLX0FDVElWRV9PVVRQVVQ9IiQoCiAgICAgIGVjaG8gIiQoc3VkbyBzZXJ2aWNlIHBvc3RncmVzcWwgc3RhdHVzIDI+JjEgfHwgZWNobyAiIikiICAgICAgIHwgZ3JlcCAiQWN0aXZlOiAiICAgICAgIHwgZ3JlcCAiIGFjdGl2ZSAocnVubmluZykiCiAgICApIgogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVM9ImluYWN0aXZlIgogICAgaWYgWyAtbiAiJF9DSEVDS19BQ1RJVkVfT1VUUFVUIiBdOyB0aGVuCiAgICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTPSJhY3RpdmUiCiAgICBmaTsKICBmaTsKICBpZiBbICIkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVMiICE9ICJhY3RpdmUiIF07IHRoZW4KICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfTEFVTkNISU5HIgogICAgaWYgWyAiJHNlcnZpY2VfcHJvdmlkZXIiID0gInN5c3RlbWQiIF07IHRoZW4KICAgICAgc3VkbyBzeXN0ZW1jdGwgc3RhcnQgcG9zdGdyZXNxbCA+IC9kZXYvbnVsbAogICAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQ9JD8KICAgIGVsc2UKICAgICAgc3VkbyBzZXJ2aWNlIHBvc3RncmVzcWwgc3RhcnQgPiAvZGV2L251bGwKICAgICAgX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVEPSQ/CiAgICBmaTsKICAgIGlmIFsgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRCAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfUEdfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQiID4mMgogICAgICBwcmludGYgIiVzICclcycuXG4iICIkX01TR19JVFNfSU5fU1RBVEUiICIkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVMiID4mMgogICAgICBleGl0ICRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX1JVTk5JTkciCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gaW5zdGFsbFBvc3RncmVTUUwoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0lOU1RBTExJTkdfUEciCiAgaW5zdGFsbEluc3RhbGxhdGlvbkRlcGVuZGVuY2llcwogIGdldERlYmlhblZlcnNpb24KICBjaGVja0RlYmlhblZlcnNpb25TdXBwb3J0ZWQKICBpZiBbICRERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICIlcyAoJXMpLiIgIiRfTVNHX0RJU1RST19WRVJTSU9OX05PVF9TVVBQT1JURUQiICIkREVCSUFOX1ZFUlNJT04iID4mMgogICAgZXhpdCAxCiAgZmk7CiAgY2xlYW5QcmV2aW91c1NvdXJjZXMKICBwdXJnZVByZXZpb3VzUGFja2FnZXMKICBjcmVhdGVTb3VyY2VzTGlzdAogIHNpZ25Tb3VyY2VzCiAgZ2V0UG9zdGdyZXNWZXJzaW9uVG9JbnN0YWxsCiAgaW5zdGFsbFBvc3RncmVzUGFja2FnZXMgIiRfTVNHX0lOU1RBTExJTkdfUEFDS0FHRVMiCn0KZnVuY3Rpb24gbWFpbigpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUtJTkdfUEdfRU5WIgogIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMKICBpZiBbICRfUE9TVEdSRVNRTF9TRVJWSUNFX0VYSVNUUyAtZXEgMCBdOyB0aGVuCiAgICBpbnN0YWxsUG9zdGdyZVNRTAogIGVsc2UKICAgIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0kX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVECiAgICBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcyAiJF9NU0dfQ0hFQ0tJTkdfUEFDS0FHRVMiCiAgZmk7CiAgaWYgWyAiJF9DSEVDS19TRVJWSUNFIiAtZXEgMSBdOyB0aGVuCiAgICBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlQ29uZmlnCiAgZmk7Cn0KaWYgKHJldHVybiAwIDI+L2Rldi9udWxsKTsgdGhlbgogIGV4cG9ydFZhcmlhYmxlcwplbHNlCiAgbWFpbgpmaTsKaWYgWyAiJFNFVFgiIC1lcSAxIF07IHRoZW4gc2V0ICt4OyBmaQ=='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
