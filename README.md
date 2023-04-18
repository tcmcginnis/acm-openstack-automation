# OpenShift ACM Deployment Automation
<b>This *new* offering provides integration with RedHat Advanced Cluster Management provisioning clusters within an OpenStack virtualization environment<br></b>
<br><b>As a new offering the documentation and refactoring of the playbooks has just begun and will eventually meet the standards of an Ansible collection<br></b>

<BR>Run the following playbook to perform a FULL OpenShift cluster deployment and post deployment configuration
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; full-deployment.yaml</p></font>
&nbsp; &nbsp; &nbsp; &nbsp; <b>ansible-playbook ~/ocp-install/acm-automation/full-deployment.yaml \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  -i ~/ocp-install/inventory/<FONT COLOR="green"><i>[clustername]</i></font>.yml</b></p> 
<BR><BR>

<BR>Run the following playbook to configure and launch the <b>OpenShift build phase only</b>
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; deploycluster.yaml</p></font>
&nbsp; &nbsp; &nbsp; &nbsp; <b>ansible-playbook ~/ocp-install/acm-automation/deploycluster.yaml \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  -i ~/ocp-install/inventory/<FONT COLOR="green"><i>[clustername]</i></font>.yml</b></p> 
<BR>

<BR>Run the following playbook to perform <b>post deployment</b> configuration and generate ACM Policies
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; post-deployment.yaml</p></font>
&nbsp; &nbsp; &nbsp; &nbsp; <b>ansible-playbook ~/ocp-install/acm-automation/post-deployment.yaml \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  -i ~/ocp-install/inventory/<FONT COLOR="green"><i>[clustername]</i></font>.yml</b></p> 
<BR>

<BR>Run the following playbook to produce a report of the generated configuration for a deployment<br>
<i><b> &emsp; No configurations touched or effected in this playbook.</b></i>
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; display-deploycluster.yaml</p></font>
&nbsp; &nbsp; &nbsp; &nbsp; <b>ansible-playbook ~/ocp-install/acm-automation/display-deploycluster.yaml \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  -i ~/ocp-install/inventory/<FONT COLOR="green"><i>[clustername]</i></font>.yml</b></p> 
<BR>

<BR>For ease of use an interactive script can be run:
<p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; run-cluster-deployment.sh [<FONT COLOR="green">datacenter</font>] [<FONT COLOR="green">cloud</font>] [<FONT COLOR="green">project</font>]</p>
<BR>&emsp; &emsp;  <b>NOTE:</b> This script is interactive so all missing options will be prompted.

<BR><b><i>Special note:</b></i> You must be logged in to the Openshift Cluster with ACM so the automation can determine avalailable OpenShift Versions.<br><br></i>

<BR><p><FONT SIZE=+1> <FONT COLOR="green"><U>Additional Playbooks</u></font>

<BR>Run the following playbook to define the OpenStack Security Groups
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; define-security-groups.yaml</p></font>
<BR>

<BR>Run the following playbook to display the OpenStack Security Groups
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; display-security-groups.yaml</p></font>
<BR>

<BR>Run the following playbook to launch an ACM based OpenShift cluster build using the ACM Deployment YAML configuration files
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; launch-acm-cluster-deployment.yaml</p></font>
<BR>

<BR>Run the following playbook to test internal network connectivity for an OpenStack Network / Availability Zone
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; network-connectivity-test-yaml</p></font>
&nbsp; &nbsp; &nbsp; &nbsp; <b>ansible-playbook ~/ocp-install/acm-automation/network-connectivity-test-yaml \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -i ~/ocp-install/inventory/<FONT COLOR="green"><i>[clustername]</i></font>.yml \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -e network_search_regex=<FONT COLOR="green"><i>"[Unique string within Network Name]"</i></font> -e az=<FONT COLOR="green"><i>[Availability Zone]</i></font> \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -e netdiag_test_dns=<FONT COLOR="green"><i>[true|false]</i></font> \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -e netdiag_test_k8sapi=<FONT COLOR="green"><i>[true|false]</i></font> \\
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -e netdiag_test_rhacm=<FONT COLOR="green"><i>[true|false]</i></font></b></p>
<BR>

<BR>Run the following playbook to process cluster API and Ingress certificates then store in the TLS cluster policy
<BR><p><FONT SIZE=+1> <FONT COLOR="blue"> &emsp; process-certs.yaml</p></font>
<BR>

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
                  <td> &nbsp; </td> <td> git_repo_path </td> <td> Location to write deployment yaml files</td><td>{repo-folder}/clusters/<i><b>cluster_name</b></i>/acm<td>
                </tr>
                <tr>
                        <td> &nbsp; </td> <td> ocp_release </td> <td> Version of Openshift to deploy</td> <td> 4.10 </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <b>osp_cloud</b> </td> <td> Openstack Cloud (eg: ospcdl1, osp1, osp2, osp3)</td><td>Required unless the URL override is present<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <b>osp_datacenter</b> </td> <td> Openstack Datacenter (eg: cloud0, cloud1,cloud2)</td><td>Required unless the URL override is present<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <b>osp_project</b> </td> <td> Openstack Project (eg: ocp-c1degt0104-caas</td><td>Always Required<td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> osp_url </td> <td> Authentication URL override for Openstack queries eg. https://cloud.datacenter.openstack.com:13000</td><td>URL is constructed from the osp_dataceter+osp_cloud variables<td>
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

