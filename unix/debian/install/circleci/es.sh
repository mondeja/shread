#!/bin/bash
source <(printf 'X01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVI9IkVzdGUgc2NyaXB0IG5lY2VzaXRhIHNlciBlamVjdXRhZG8gY29tbyBzdXBlcnVzdWFyaW8uIgpfTVNHX0lOU1RBTExJTkdfQ0lSQ0xFQ0k9Ikluc3RhbGFuZG8gQ2lyY2xlQ0kiCl9NU0dfVVBEQVRJTkdfQ0lSQ0xFQ0k9IkFjdHVhbGl6YW5kbyBDaXJjbGVDSSIKX01TR19GT1VORF9DSVJDTEVDSV9JTlNUQUxMRUQ9IkVuY29udHJhZG8gQ2lyY2xlQ0kgaW5zdGFsYWRvIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpfUFJFUEVORF9TVERPVVRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIgpkbwogICAgY2FzZSAkYXJnIGluCiAgICAgICAgLS1wcmVwZW5kLXN0ZG91dCkKICAgICAgICBzaGlmdAogICAgICAgIF9QUkVQRU5EX1NURE9VVF9TVFJJTkc9JDEKICAgICAgICBzaGlmdAogICAgICAgIDs7CiAgICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRfUFJFUEVORF9TVERPVVRfU1RSSU5HIgp9CmlmIFtbICIkKHN1ZG8gZHBrZyAtcyBjdXJsIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBjdXJsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KZmk7Cl9DSVJDTEVDSV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGNpcmNsZWNpKSIKX0NJUkNMRUNJX0xBVEVTVF9SRUxFQVNFX1ZFUlNJT049JCgKICBjdXJsIC1zTEkgLW8gL2Rldi9udWxsIC13ICcle3VybF9lZmZlY3RpdmV9JyBcCiAgICBodHRwczovL2dpdGh1Yi5jb20vQ2lyY2xlQ0ktUHVibGljL2NpcmNsZWNpLWNsaS9yZWxlYXNlcy9sYXRlc3QvICB8IFwKICAgIGN1dCAtZCAidiIgLWYyKQpkb3dubG9hZENpcmNsZUNJKCkgewogIGN1cmwgLWZMU3MgaHR0cHM6Ly9jaXJjbGUuY2kvY2xpID4gaW5zdGFsbC1jaXJjbGVjaS5zaAogIGNobW9kICt4IGluc3RhbGwtY2lyY2xlY2kuc2gKICBzdWRvIERFU1RESVI9IiQxIiBWRVJTSU9OPSIkMiIgYmFzaCBpbnN0YWxsLWNpcmNsZWNpLnNoID4gL2Rldi9udWxsCiAgcm0gLWYgaW5zdGFsbC1jaXJjbGVjaS5zaAp9CnByaW50UHJlcGVuZGVkU3Rkb3V0CmlmIFsgIiRfQ0lSQ0xFQ0lfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogIHByaW50ZiAiJXMgKHYlcykuLi4iICIkX01TR19JTlNUQUxMSU5HX0NJUkNMRUNJIiAiJF9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OIgogIGRvd25sb2FkQ2lyY2xlQ0kgL3Vzci9iaW4gIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIKZWxzZQogIF9DSVJDTEVDSV9JTlNUQUxMRURfVkVSU0lPTj0kKAogICAgIiRfQ0lSQ0xFQ0lfQklOQVJZX1BBVEgiIHZlcnNpb24gfCAgY3V0IC1kJysnIC1mMSkKICBpZiBbICIkX0NJUkNMRUNJX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiVzICh2JXMiICIkX01TR19VUERBVElOR19DSVJDTEVDSSIgIiRfQ0lSQ0xFQ0lfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICBwcmludGYgIiAtPiB2JXMpLi4uIiAiJF9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OIgogICAgc3VkbyBybSAtZiAiJF9DSVJDTEVDSV9CSU5BUllfUEFUSCIKICAgIGRvd25sb2FkQ2lyY2xlQ0kgL3Vzci9iaW4gIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIKICBlbHNlCiAgICBwcmludGYgIiVzICh2JXMpIiAiJF9NU0dfRk9VTkRfQ0lSQ0xFQ0lfSU5TVEFMTEVEIiAiJF9DSVJDTEVDSV9JTlNUQUxMRURfVkVSU0lPTiIKICBmaTsKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgo=' | base64 -d)
