#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX1VSTD0iVVJMIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FUlJPUl9DT0RFPSJFcnJvciBjb2RlIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfU0hVTklUX1JFTEVBU0VTX0lORk89IkFuIGVycm9yIGhhcHBlbiByZXRyaWV2aW5nIHNodW5pdDIgcmVsZWFzZXMgaW5mb3JtYXRpb24gZnJvbSBHaXRodWIgQVBJLiIKX01TR19DSEVDS0lOR19TSFVOSVQ9IkNoZWNraW5nIHNodW5pdDIuLi4iCl9NU0dfUkVUUklFVklOR19TSFVOSVRfTEFTVEVTVF9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhc3Rlc3QgdmVyc2lvbi4uLiIKX01TR19FUlJPUl9QQVJTSU5HX0xBU1RFU1RfU0hVTklUX1JFTEVBU0U9IkFuIGVycm9yIGhhcHBlbiBwYXJzaW5nIGxhc3Rlc3Qgc2h1bml0MiByZWxlYXNlIHZlcnNpb24gZnJvbSBHaXRodWIgQVBJLiIKX01TR19ET1dOTE9BRElOR19TSFVOSVQ9IkRvd25sb2FkaW5nIHNodW5pdDIiCl9NU0dfRVJST1JfRE9XTkxPQURJTkdfU0hVTklUPSJBbiBlcnJvciBoYXBwZW4gZG93bmxvYWRpbmcgc2h1bml0MiIKX01TR19VTlpJUFBJTkdfU0hVTklUPSJVbnppcHBpbmcuLi4iCl9NU0dfREVTVF9FWElTVFM9IkRlc3RpbmF0aW9uIGZpbGUgZXhpc3RzIgpfTVNHX0lORElDQVRFX0FOT1RIRVJfREVTVF9XSVRIX1BBUkFNPSJJbmRpY2F0ZSBhbm90aGVyIGRlc3RpbmF0aW9uIGZvciBzaHVuaXQyIHdpdGggcGFyYW1ldGVyIgpJTkRFTlRfU1RSSU5HPSIiCl9ERVNUX1BBVEg9IiRQV0Qvc2h1bml0MiIKR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiIKaWYgWyAtbiAiJEdJVEhVQl9VU0VSTkFNRSIgXSAmJiBbIC1uICIkR0lUSFVCX1RPS0VOIiBdOyB0aGVuCiAgR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiRHSVRIVUJfVVNFUk5BTUU6JEdJVEhVQl9UT0tFTiIKZmk7CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1kZXN0LXBhdGgpCiAgICBzaGlmdAogICAgX0RFU1RfUEFUSD0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCl9ERVNUX0RJUlBBVEg9IiQoZGlybmFtZSAiJF9ERVNUX1BBVEgiKSIKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CklOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICJjdXJsIgogICJqcSIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChzdWRvIGRwa2cgLXMgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmU7Cl9HRVRfU0hVTklUX1JFTEVBU0VTX1VSTD1odHRwczovL2FwaS5naXRodWIuY29tL3JlcG9zL2t3YXJkL3NodW5pdDIvcmVsZWFzZXMKZnVuY3Rpb24gZ2V0U2h1bml0TGFzdGVzdFZlcnNpb24oKSB7CiAgX1NIVU5JVF9SRUxFQVNFU19JTkZPPSIkKGN1cmwgLXNMICIkR0lUSFVCX0FQSV9DVVJMX0FVVEgiICIkX0dFVF9TSFVOSVRfUkVMRUFTRVNfVVJMIiAyPiYxKSIKICBfU0hVTklUX1JFTEVBU0VTX0lORk9fTUVTU0FHRT0iJChlY2hvICIkX1NIVU5JVF9SRUxFQVNFU19JTkZPIiB8IGpxIC1yICcubWVzc2FnZScgMj4mMSkiCiAgX1NIVU5JVF9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1NIVU5JVF9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFIC1lcSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX1NIVU5JVF9SRUxFQVNFU19JTkZPIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9TSFVOSVRfUkVMRUFTRVNfVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfU0hVTklUX1JFTEVBU0VTX0lORk9fTUVTU0FHRSIgPiYyCiAgICBleGl0ICRfU0hVTklUX1JFTEVBU0VTX0lORk9fTUVTU0FHRV9FWElUX0NPREUKICBmaTsKICBfUEFSU0VfU0hVTklUX0xBU1RFU1RfVkVSU0lPTj0kKAogICAgZWNobyAiJF9TSFVOSVRfUkVMRUFTRVNfSU5GTyIgfCBcCiAgICBqcSAtciAiLlswXS5uYW1lIiAyPiYxCiAgKQogIF9QQVJTRV9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9QQVJTRV9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUEFSU0lOR19MQVNURVNUX1NIVU5JVF9SRUxFQVNFIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9TSFVOSVRfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVkXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9QQVJTRV9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9QQVJTRV9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIGV4aXQgJF9QQVJTRV9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogIGZpOwogIF9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OPSIkKHByaW50ZiAiJXMiICIkX1BBUlNFX1NIVU5JVF9MQVNURVNUX1ZFUlNJT04iIHwgY3V0IC1kJyAnIC1mMikiCn0KZnVuY3Rpb24gZG93bmxvYWRTaHVuaXQoKSB7CiAgX0RPV05MT0FEX1NIVU5JVF9VUkw9Imh0dHBzOi8vZ2l0aHViLmNvbS9rd2FyZC9zaHVuaXQyL2FyY2hpdmUvdiQxLnRhci5neiIKICBfRE9XTkxPQURfU0hVTklUX09VVFBVVD0iJChjdXJsIC1zTCAiJF9ET1dOTE9BRF9TSFVOSVRfVVJMIiAtbyAiJDIiIDI+JjEpIgogIF9ET1dOTE9BRF9TSFVOSVRfRVhJVF9DT0RFPSQ/CiAgaWYgIFsgJF9ET1dOTE9BRF9TSFVOSVRfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzIHYlc1xuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfU0hVTklUIiAiJF9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX1NIVU5JVF9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET1dOTE9BRF9TSFVOSVRfT1VUUFVUIiA+JjIKICAgIGV4aXQgJF9ET1dOTE9BRF9TSFVOSVRfRVhJVF9DT0RFCiAgZmk7Cn0KZnVuY3Rpb24gbWFpbigpIHsKICBpZiBbIC1mICIkX0RFU1RfUEFUSCIgXSB8fCBbIC1kICIkX0RFU1RfUEFUSCIgXTsgdGhlbgogICAgcHJpbnRmICIlcyAoJXMpXG4iICIkX01TR19ERVNUX0VYSVNUUyIgIiRfREVTVF9QQVRIIiA+JjIKICAgIHByaW50ZiAiJXMgJy0tZGVzdC1wYXRoJy5cbiIgIiRfTVNHX0lORElDQVRFX0FOT1RIRVJfREVTVF9XSVRIX1BBUkFNIiA+JjIKICAgIGV4aXQgMQogIGZpOwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfU0hVTklUIgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIgogIGdldFNodW5pdExhc3Rlc3RWZXJzaW9uCiAgcHJpbnRmICIgKHYlcykiICIkX1NIVU5JVF9MQVNURVNUX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19ET1dOTE9BRElOR19TSFVOSVQiICIkX1NIVU5JVF9MQVNURVNUX1ZFUlNJT04iCiAgZG93bmxvYWRTaHVuaXQgIiRfU0hVTklUX0xBU1RFU1RfVkVSU0lPTiIgIiRfREVTVF9ESVJQQVRIL3NodW5pdDIudGFyLmd6IgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfVU5aSVBQSU5HX1NIVU5JVCIKICB0YXIgeHpmICIkX0RFU1RfRElSUEFUSC9zaHVuaXQyLnRhci5neiIgLUMgIiRfREVTVF9ESVJQQVRIIiB8fCBleGl0ICQ/CiAgbXYgIiRfREVTVF9ESVJQQVRIL3NodW5pdDItJF9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OL3NodW5pdDIiICIkX0RFU1RfUEFUSCIKICBybSAtcmYgIiRfREVTVF9ESVJQQVRIL3NodW5pdDItJF9TSFVOSVRfTEFTVEVTVF9WRVJTSU9OIgogIHJtIC1mICIkX0RFU1RfRElSUEFUSC9zaHVuaXQyLnRhci5neiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQppZiBbIC16ICIkU0hSRUFEX1RFU1QiIF07IHRoZW4KICBtYWluCmZpOwo=' | base64 -d)