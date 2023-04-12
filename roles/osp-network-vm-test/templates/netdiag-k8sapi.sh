if [ "{{ netdiag_test_k8sapi|upper }}" = "TRUE" ]; then
   if [ $RC -eq 0 ]; then
      echo "."
      echo "================================================================================"
      echo "Test access to OpenShift k8s API at {{ netdiag_k8s_API }}"
      echo "--------------------------------------------------------------------------------"
      curl -k {{ netdiag_k8s_API }} --connect-timeout 5
      RC=$?
      echo "--------------------------------------------------------------------------------"
      echo "k8s API RESULT: $RC"
      echo "--------------------------------------------------------------------------------"
      echo "."
   fi
else
   echo "netdiag_test_k8sapi set to {{ netdiag_test_k8sapi }}"
fi
