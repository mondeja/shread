#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19BRERJTkdfUkVQTz0iQcOxYWRpZW5kbyByZXBvc2l0b3Jpby4uLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX1BPU1RHUkVTUUxfUFVCTElDX0tFWT0iT2N1cnJpw7MgdW4gZXJyb3Igb2J0ZW5pZW5kbyBsYSBjbGF2ZSBww7pibGljYSBkZSBQb3N0Z3JlU1FMIgpfTVNHX1VQREFUSU5HX1BBQ0tBR0VTPSJBY3R1YWxpemFuZG8gcGFxdWV0ZXMuLi4iCl9NU0dfUkVNT1ZJTkdfUFJFVklPVVNfUEFDS0FHRVM9IkVsaW1pbmFuZG8gcGFxdWV0ZXMgYW50ZXJpb3Jlcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049Ik9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzacOzbiBlc3RhYmxlIGRpc3BvbmlibGUuLi4iCl9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT049IkNvbXByb2JhbmRvIHZlcnNpw7NuIGRpc3BvbmlibGUiCl9NU0dfVkVSU0lPTl9OT1RfT0ZGSUNJQUxMWV9BVkFJTEFCTEU9IlZlcnNpw7NuIG5vIGRpc3BvbmlibGUgZW4gbG9zIHJlcG9zaXRvcmlvcyBkZSBQb3N0Z3JlU1FMIG9maWNpYWxlcyIKX01TR19WRVJTSU9OX09GX1BPU1RHSVNfVFJZSU5HX1RPX0lOU1RBTEw9IkxhIHZlcnNpw7NuIGRlIFBvc3RnaXMgcXVlIGVzdMOhcyBpbnRlbnRhbmRvIGluc3RhbGFyIgpfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0U9Im5vIGV4aXN0ZSBjb21vIHVuIHBhcXVldGUgQVBUIHBhcmEgUG9zdGdyZVNRTCIKX01TR19USEVfUEFDS0FHRT0iZWwgcGFxdWV0ZSIKX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TPSJubyBleGlzdGUgZW4gbG9zIHJlcG9zaXRvcmlvcyBvZmljaWFsZXMgZGUgUG9zdGdyZVNRTC4iCl9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OPSJFc3BlY2lmaWNhIHVuYSB2ZXJzacOzbiBleGlzdGVudGUgZGUgZW50cmUgbGFzIHNpZ3VpZW50ZXMgdXNhbmRvIGVsIHBhcsOhbWV0cm8gJy0tcG9zdGdpcy12ZXJzaW9uJzoiCl9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUc9IkNvbXByb2JhbmRvIGxhIGNvbmZpZ3VyYWNpw7NuIGRlbCBzZXJ2aWNpbyAncG9zdGdyZXNxbCcuLi4iCl9NU0dfRU5BQkxJTkc9IkhhYmlsaXRhbmRvLi4uIgpfTVNHX0lUU19FTkFCTEVEPSJFc3TDoSBoYWJpbGl0YWRvIgpfTVNHX0VSUk9SX0VOQUJMSU5HX1BHX1NFUlZJQ0U9Ik9jdXJyacOzIHVuIGVycm9yIGhhYmlsaXRhbmRvIGVsIHNlcnZpY2lvICdwb3N0Z3Jlc3FsJy4iCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0VYSVRfQ09ERT0iQ8OzZGlnbyBkZSBzYWxpZGEiCl9NU0dfTEFVTkNISU5HPSJFamVjdXRhbmRvLi4uIgpfTVNHX1BHX1NFUlZJQ0VfQ09VTEROVF9CRV9TVEFSVEVEPSJFbCBzZXJ2aWNpbyAncG9zdGdyZXNxbCcgbm8gcHVkbyBzZXIgaW5pY2lhZG8uIgpfTVNHX0lUU19JTl9TVEFURT0iU2UgZW5jdWVudHJhIGVuIGVzdGFkbyIKX01TR19JVFNfUlVOTklORz0iRXN0YSBlbiBlamVjdWNpw7NuIgpfTVNHX0lOU1RBTExJTkdfUEc9Ikluc3RhbGFuZG8gUG9zdGdyZVNRTC4uLiIKX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTPSJJbnN0YWxhbmRvIHBhcXVldGVzLi4uIgpfTVNHX0NIRUtJTkdfUEdfRU5WPSJDb21wcm9iYW5kbyBlbnRvcm5vIFBvc3RncmVTUUwuLi4iCl9NU0dfQ0hFQ0tJTkdfUEFDS0FHRVM9IkNvbXByb2JhbmRvIHBhcXVldGVzLi4uIgpfTVNHX0RJU1RST19WRVJTSU9OX05PVF9TVVBQT1JURUQ9IlR1IHZlcnNpw7NuIGRlIERlYmlhbi9VYnVudHUgbm8gZXN0w6Egc29wb3J0YWRhIHBvciBsb3MgcmVwb3NpdG9yaW9zIG9maWNpYWxlcyBkZSBQb3N0Z3JlU1FMIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpJTkRFTlRfU1RSSU5HPSIiCl9WRVJTSU9OPSIiCl9JTkNMVURFX1BPU1RHSVM9MApfUE9TVEdJU19WRVJTSU9OPSIiCl9JTkNMVURFX1BHQURNSU49MApfSU5DTFVERV9QTFBZVEhPTjM9MApmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLXZlcnNpb24pCiAgICBzaGlmdAogICAgX1ZFUlNJT049JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1pbnN0YWxsLXBvc3RnaXMpCiAgICBfSU5DTFVERV9QT1NUR0lTPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1wb3N0Z2lzLXZlcnNpb24pCiAgICBzaGlmdAogICAgX1BPU1RHSVNfVkVSU0lPTj0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtLWluc3RhbGwtcGdhZG1pbikKICAgIF9JTkNMVURFX1BHQURNSU49MQogICAgc2hpZnQKICAgIDs7CiAgICAtLWluc3RhbGwtcGxweXRob24zKQogICAgX0lOQ0xVREVfUExQWVRIT04zPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQppZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgaWYgWyAteiAiJF9TQ1JJUFRfRklMRU5BTUUiIF07IHRoZW4KICAgIGZpbGVwYXRoPSJzcmMvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC9tYWluLnNoIgogICAgYmFzaCAiJGZpbGVwYXRoIiA+IC9kZXYvbnVsbAogIGVsc2UKICAgIHVybD0iaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC8kX1NDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7CmZpOwpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAid2dldCIKICAiYXB0aXR1ZGUiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBwYWNtYW4gLVMgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKZG9uZTsKX1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIPSIvZXRjL2FwdC9zb3VyY2VzLmxpc3QuZC9wZ2RnIgpERUJJQU5fVkVSU0lPTj0iJChsc2JfcmVsZWFzZSAtYyAtcykiCmZ1bmN0aW9uIGNoZWNrRGViaWFuVmVyc2lvblN1cHBvcnRlZCgpIHsKICBERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQ9MAogIF9HRVRfREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPSQoCiAgICBjdXJsIC1zTCBodHRwOi8vYXB0LnBvc3RncmVzcWwub3JnL3B1Yi9yZXBvcy9hcHQvZGlzdHMvIHwgXAogICAgZ3JlcCAtbyAiJERFQklBTl9WRVJTSU9OLXBnZGciCiAgKQogIGlmIFsgIiRfR0VUX0RFQklBTl9WRVJTSU9OX1NVUFBPUlRFRCIgIT0gIiIgXTsgdGhlbgogICAgREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPTEKICBmaTsKfQpmdW5jdGlvbiBzaWduU291cmNlcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfQURESU5HX1JFUE8iCiAgU0lHTl9QR0RHX0dQR19LRVlfU1RERVJSPSQoCiAgICB3Z2V0IC1xTyAtIGh0dHBzOi8vd3d3LnBvc3RncmVzcWwub3JnL21lZGlhL2tleXMvQUNDQzRDRjguYXNjIHwgXAogICAgc3VkbyBhcHQta2V5IGFkZCAtIDI+JjEgPiAvZGV2L251bGwpCiAgU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lczpcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRTSUdOX1BHREdfR1BHX0tFWV9TVERFUlIiID4mMgogICAgZXhpdCAkU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX1VQREFUSU5HX1BBQ0tBR0VTIgogIHN1ZG8gcGFjbWFuIHVwZGF0ZSA+IC9kZXYvbnVsbAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIHB1cmdlUHJldmlvdXNQYWNrYWdlcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfUkVNT1ZJTkdfUFJFVklPVVNfUEFDS0FHRVMiCiAgc3VkbyBwYWNtYW4gLVJucyBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBjbGVhblByZXZpb3VzU291cmNlcygpIHsKICBfUEdER19TT1VSQ0VTX0VYVFM9KAogICAgImxpc3QiCiAgICAiZGlzdFVwZ3JhZGUiCiAgICAic2F2ZSIKICApCiAgZm9yIEVYVCBpbiAiJHtfUEdER19TT1VSQ0VTX0VYVFNbQF19IjsgZG8KICAgIGlmIFsgLWYgIiR7X1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIfS4ke0VYVH0iIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJHtfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEh9LiR7RVhUfSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgZG9uZQp9CmZ1bmN0aW9uIGNyZWF0ZVNvdXJjZXNMaXN0KCkgewogIHRvdWNoICIkX1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRILmxpc3QiCiAgZWNobyAiZGViIGh0dHA6Ly9hcHQucG9zdGdyZXNxbC5vcmcvcHViL3JlcG9zL2FwdC8gJERFQklBTl9WRVJTSU9OLXBnZGcgbWFpbiIgPiBcCiAgICAiJF9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSC5saXN0Igp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMoKSB7CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MQogIGlmICEgc3VkbyBzeXN0ZW1jdGwgc3RhdHVzIHBvc3RncmVzcWwgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MAogIGZpOwp9Cl9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldExhc3Rlc3RTdGFibGVQb3N0Z3Jlc1ZlcnNpb24oKSB7CiAgX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT049JCgKICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbCIgfCBcCiAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtWzAtOV17MSwzfS57MCwxfVswLTldezEsM30gIiB8IFwKICAgIGF3ayAneyBwcmludCAkMSB9JyB8IFwKICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCBcCiAgICB0YWlsIC1uIDEgfCBcCiAgICBjdXQgLWQnLScgLWYyCiAgKQp9Cl9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9IiIKZnVuY3Rpb24gZ2V0UG9zdGdyZXNWZXJzaW9uVG9JbnN0YWxsKCkgewogIGlmIFsgIiRfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogICAgZ2V0TGFzdGVzdFN0YWJsZVBvc3RncmVzVmVyc2lvbgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0iJF9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OIgogICAgcHJpbnRmICIgKHYlcykiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICBlbHNlCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzICglcykuLi4iICIkX01TR19DSEVDS0lOR19BVkFJTEFCTEVfVkVSU0lPTiIgIiRfVkVSU0lPTiIKICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsIiB8IFwKICAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCBcCiAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8IFwKICAgICAgZ3JlcCAtbyAiJF9WRVJTSU9OIiB8IFwKICAgICAgdHIgLWQgJ1xuJwogICAgKQogICAgaWYgWyAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiID0gIiIgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiICAgICVzICglcykuXG4iICIkX01TR19WRVJTSU9OX05PVF9PRkZJQ0lBTExZX0FWQUlMQUJMRSIgIiRfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgMQogICAgZmk7CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVEPSIiCmZ1bmN0aW9uIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbigpIHsKICBfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQ9JCgKICAgIHBzcWwgLS12ZXJzaW9uIHwgXAogICAgY3V0IC1kJyAnIC1mMyB8IFwKICAgIGN1dCAtZCcuJyAtZjEgfHwgZXhpdCAkPwogICkKfQpmdW5jdGlvbiBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcygpIHsKICBQT1NUR1JFU19QQUNLQUdFUz0oCiAgICAicG9zdGdyZXNxbC0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLWNsaWVudC0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLWNvbnRyaWItJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1zZXJ2ZXItZGV2LSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgImxpYnBxLWRldiIKICApCiAgaWYgWyAkX0lOQ0xVREVfUE9TVEdJUyAtZXEgMSBdOyB0aGVuCiAgICBpZiBbICIkX1BPU1RHSVNfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICAgIF9QT1NUR0lTX1BBQ0tBR0U9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzIiB8IFwKICAgICAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLVswLTldezEsM30uezAsMX1bMC05XXswLDN9ICIgfCBcCiAgICAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgXAogICAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCBcCiAgICAgICAgdGFpbCAtbiAxCiAgICAgICkKICAgIGVsc2UKICAgICAgX1BPU1RHSVNfUEFDS0FHRV9FWElTVFM9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLSR7X1BPU1RHSVNfVkVSU0lPTn0iCiAgICAgICkKICAgICAgaWYgWyAiJF9QT1NUR0lTX1BBQ0tBR0VfRVhJU1RTIiA9ICIiIF07IHRoZW4KICAgICAgICBwcmludGYgIlxuJXMgKHYlcykiICIkX01TR19WRVJTSU9OX09GX1BPU1RHSVNfVFJZSU5HX1RPX0lOU1RBTEwiICIkX1BPU1RHSVNfVkVSU0lPTiIgPiYyCiAgICAgICAgcHJpbnRmICIgJXMgdiVzIiAiJF9NU0dfRE9FU05UX0VYSVNUU19BU19BUFRfUEdfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiA+JjIKICAgICAgICBwcmludGYgIiAoJXMgJ3Bvc3RncmVzcWwtJXMtcG9zdGdpcyVzJykiICIkX01TR19USEVfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiAiJF9QT1NUR0lTX1ZFUlNJT04iID4mMgogICAgICAgIHByaW50ZiAiICVzXG4iICIkX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TIiA+JjIKICAgICAgICBwcmludGYgIiVzXG4iICIkX01TR19TUEVDSUZZX0FOX0VYSVNURU5UX1ZFUlNJT04iID4mMgogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMiID4mMgogICAgICAgIGV4aXQgMQogICAgICBmaTsKICAgICAgX1BPU1RHSVNfUEFDS0FHRT0icG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMtJHtfUE9TVEdJU19WRVJTSU9OfSIKICAgIGZpOwogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfUE9TVEdJU19QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BHQURNSU4gLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBnYWRtaW4iIHwgXAogICAgICBncmVwIC1FbyAiIHBnYWRtaW5bMC05XXsxLDN9LnswLDF9WzAtOV17MCwzfSAiIHwgXAogICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCBcCiAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCBcCiAgICAgIHRhaWwgLW4gMQogICAgKQogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUEdBRE1JTl9QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BMUFlUSE9OMyAtZXEgMSBdOyB0aGVuCiAgICBfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtcGxweXRob24zLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0iIHwgXAogICAgICBoZWFkIC1uIDEgfCBcCiAgICAgIGdyZXAgLW8gIiBwb3N0Z3Jlc3FsLXBscHl0aG9uMy0xMiIgfCBcCiAgICAgIGF3ayAneyBwcmludCAkMSB9JwogICAgKQogICAgaWYgWyAiJF9MQVNURVNUX1NUQUJMRV9QTFBZVEhPTjNfQ09NUEFUSUJMRV9QQUNLQUdFIiAhPSAiIiBdOyB0aGVuCiAgICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIKICAgICAgKQogICAgZmk7CiAgZmk7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiQxIgogIGZvciBQQUNLQUdFIGluICIke1BPU1RHUkVTX1BBQ0tBR0VTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkUEFDS0FHRSIKICAgIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJFBBQ0tBR0UiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIF9BUFRfSU5TVEFMTF9TVERFUlI9JCgKICAgICAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkUEFDS0FHRSIgMj4mMQogICAgICApCiAgICAgIF9BUFRfSU5TVEFMTF9FWElUX0NPREU9JD8KICAgICAgaWYgWyAkX0FQVF9JTlNUQUxMX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgICAgcHJpbnRmICIlcyIgIiRfQVBUX0lOU1RBTExfU1RERVJSIiA+JjIKICAgICAgICBleGl0ICRfQVBUX0lOU1RBTExfRVhJVF9DT0RFCiAgICAgIGZpOwogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCn0KZnVuY3Rpb24gY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUNvbmZpZygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUciCiAgcHJpbnRJbmRlbnQKICBfUE9TVEdSRVNRTF9TRVJWSUNFX0VOQUJMRURfRk9VTkQ9JCgKICAgIHN5c3RlbWN0bCBsaXN0LXVuaXQtZmlsZXMgfCBcCiAgICBncmVwIGVuYWJsZWQgfCBcCiAgICBncmVwIHBvc3RncmVzcWwpCiAgaWYgWyAiJF9QT1NUR1JFU1FMX1NFUlZJQ0VfRU5BQkxFRF9GT1VORCIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VOQUJMSU5HIgogICAgX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQ9JCgKICAgICAgc3VkbyBzeXN0ZW1jdGwgZW5hYmxlIHBvc3RncmVzcWwuc2VydmljZSAyPiYxID4gL2Rldi9udWxsCiAgICApCiAgICBfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgaWYgWyAkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VSUk9SX0VOQUJMSU5HX1BHX1NFUlZJQ0UiID4mMgogICAgICBwcmludGYgIiVzOiAlZFxuIiAiJF9NU0dfRVhJVF9DT0RFIiAiJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfT1VUUFVUIiA+JjIKICAgICAgZXhpdCAkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX0VOQUJMRUQiCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUz0kKAogICAgc3VkbyBzeXN0ZW1jdGwgc2hvdyAtcCBBY3RpdmVTdGF0ZSBwb3N0Z3Jlc3FsIHwgXAogICAgY3V0IC1kJz0nIC1mMiB8IFwKICAgIHRyIC1kICdcbicpCiAgaWYgWyAiJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTIiAhPSAiYWN0aXZlIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0xBVU5DSElORyIKICAgIHN1ZG8gc3lzdGVtY3RsIHN0YXJ0IHBvc3RncmVzcWwgPiAvZGV2L251bGwKICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRD0kPwogICAgaWYgWyAkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVEIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRCIgPiYyCiAgICAgIHByaW50ZiAiJXMgJyVzJy5cbiIgIiRfTVNHX0lUU19JTl9TVEFURSIgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUyIgPiYyCiAgICAgIGV4aXQgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRAogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfUlVOTklORyIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBpbnN0YWxsUG9zdGdyZVNRTCgpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfSU5TVEFMTElOR19QRyIKICBjaGVja0RlYmlhblZlcnNpb25TdXBwb3J0ZWQKICBpZiBbICRERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICIlcyAoJXMpLiIgIiRfTVNHX0RJU1RST19WRVJTSU9OX05PVF9TVVBQT1JURUQiICIkREVCSUFOX1ZFUlNJT04iID4mMgogICAgZXhpdCAxCiAgZmk7CiAgY2xlYW5QcmV2aW91c1NvdXJjZXMKICBwdXJnZVByZXZpb3VzUGFja2FnZXMKICBjcmVhdGVTb3VyY2VzTGlzdAogIHNpZ25Tb3VyY2VzCiAgZ2V0UG9zdGdyZXNWZXJzaW9uVG9JbnN0YWxsCiAgaW5zdGFsbFBvc3RncmVzUGFja2FnZXMgIiRfTVNHX0lOU1RBTExJTkdfUEFDS0FHRVMiCn0KZnVuY3Rpb24gbWFpbigpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUtJTkdfUEdfRU5WIgogIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMKICBpZiBbICRfUE9TVEdSRVNRTF9TRVJWSUNFX0VYSVNUUyAtZXEgMCBdOyB0aGVuCiAgICBpbnN0YWxsUG9zdGdyZVNRTAogIGVsc2UKICAgIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0kX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVECiAgICBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcyAiJF9NU0dfQ0hFQ0tJTkdfUEFDS0FHRVMiCiAgZmk7CiAgY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUNvbmZpZwp9Cm1haW4K'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
