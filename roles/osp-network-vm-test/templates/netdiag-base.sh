echo "ip routes"
ip route
echo "."
echo "--------------------------------------------------------------------------------"
echo "ifconfig"
echo "--------------------------------------------------------------------------------"
ifconfig
IP=$(ip addr show dev eth0 |grep "inet "|awk '{print $2}')
GW=$(ip route |grep ^default|awk '{print $3}')
echo "."
echo "================================================================================"
echo "Test connectivity from $IP to network gateway address $GW"
echo "SOURCE: $IP"
echo "DESTINATION: $GW"
echo "--------------------------------------------------------------------------------"
ping -c3 $GW
RC=$?
echo "--------------------------------------------------------------------------------"
echo "GATEWAY PING RESULT: $RC"
echo "--------------------------------------------------------------------------------"
echo "."
