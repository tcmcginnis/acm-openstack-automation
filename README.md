# OpenShift ACM Deployment Automation
<b>This is the ACM automation portion of the git repository.<br></b>
<BR>Run the following playbook to launch the automation
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; deploycluster.yaml</p></font>
<BR><BR>
<BR>Run the following playbook to produce a report of the generated configuration for a deployment<br>
<i><b> &emsp; No configurations touched or effected in this playbook.</b></i>
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; display-deploycluster.yaml</p></font>
<BR><BR>
<BR>For ease of use an interactive script can be run:
<p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; run-cluster-deployment.sh [<FONT COLOR="green">datacenter</font>] [<FONT COLOR="green">cloud</font>] [<FONT COLOR="green">project</font>]</p>
<BR>&emsp; &emsp;  <b>NOTE:</b> This script is interactive so all missing options will be prompted.

<BR><b><i>Special note:</b></i> You must be logged in to the Openshift Cluster with ACM so the automation can determine avalailable OpenShift Versions.<br><br></i>

<table border="0" cellspacing="0" cellpadding="0">
        <tbody>
                <tr>
                        <td width="60"> &nbsp; </td>
                        <td width="70">
                                <b>Option</b>
                        </td>
                        <td width="240">
                                <b>Description</b>
                        </td>
                        <td width="250">
                                <b>Default</b>
                        </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> cacert </td> <td> Location of certificate bundle for Openstack SDK</td><td><td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> git_repo_path </td> <td> Location to write deployment yaml files</td><td>/home/cloud-user/ocp-install/clusters/<i><b>cluster_name</b></i>/acm<td>
                </tr>
                <tr>
                        <td> &nbsp; </td> <td> ocp_release </td> <td> Version of Openshift to deploy</td> <td> 4.10 </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <b>osp_cloud</b> </td> <td> Openstack Cloud</td><td>Required unless the URL override is present<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <b>osp_datacenter</b> </td> <td> Openstack Datacenter (eg: cloud0, cloud1,cloud2)</td><td>Required unless the URL override is present<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <b>osp_project</b> </td> <td> Openstack Project (eg: ocp-c1degt0104-caas</td><td>Always Required<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> osp_url </td> <td> Authentication URL override for Openstack queries eg. https://openstack.com:13000</td><td>URL is constructed from the osp_dataceter+osp_cloud variables<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> os_image </td> <td> CoreOS image on Openstack </td><td>Latest rhcos-4.? that matches the Openshift Release <td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> server_flavor</td> <td> Node VM size on Openstack </td><td>oc-16x96-k8s-worker<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> subnet_search_regex </td> <td> Regex to identify Stretch network</td><td>-STRETCH- <td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <i>preview</i> </td> <td> <b>Set to "True" to display Deployment Configuration and prevent automation from generating and publishing the configuration.</b></td><td>False<td>
                </tr>
        </tbody>
</table>

<FONT SIZE=+1> <FONT COLOR="blue">Two Working Examples:</FONT></FONT>

<BR><BOLD>main playbooks</BOLD>
<br>deploycluster.yaml
<br>display-deploycluster.yaml
<br>display-security-groups.yaml
<br>full-deployment.yaml
<br>post-deployment.yaml
<br>pre-deploycluster.yaml
