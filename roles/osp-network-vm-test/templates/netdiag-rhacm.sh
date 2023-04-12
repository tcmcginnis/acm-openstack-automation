if [ "{{ netdiag_test_rhacm|upper }}" = "TRUE" ]; then
   if [ $RC -eq 0 ]; then
      echo "."
      echo "================================================================================"
      echo "Test access to ACM Server API at {{ netdiag_rhacm_hub }}"
      echo "--------------------------------------------------------------------------------"
      curl -k {{ netdiag_rhacm_hub }} --connect-timeout 5
      RC=$?
      echo "--------------------------------------------------------------------------------"
      echo "ACM API RESULT: $RC"
      echo "--------------------------------------------------------------------------------"
      echo "."
   fi
else
   echo "netdiag_test_rhacm set to {{ netdiag_test_rhacm }}"
fi
