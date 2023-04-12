if [ "{{ netdiag_test_dns|upper }}" = "TRUE" ]; then
   if [ $RC -eq 0 ]; then
      echo "."
      echo "================================================================================"
      echo "Perform DNS lookup test: {{ netdiag_domain }} {{ netdiag_dns }}"
      echo "--------------------------------------------------------------------------------"
      echo "nameserver {{ netdiag_dns }}" >/etc/resolv.conf
      ping -c 1 {{ netdiag_domain }}
      RC=$?
      echo "--------------------------------------------------------------------------------"
      echo "DNS TEST RESULT: $RC"
      echo "--------------------------------------------------------------------------------"
      echo "."
   fi
else
   echo "netdiag_test_dns set to {{ netdiag_test_dns }}"
fi

