# OpenShift ACM Deployment Automation
<b>This describes the various Ansible roles and their uses.<br></b>
<BR>

<table border="0" cellspacing="0" cellpadding="0">
        <tbody>
                <tr>
                  <td width="30"> &nbsp; </td>
                  <td>
                                <b><FONT SIZE=+1>Role</font></b>
                  </td>
                  <td>
                                <b><FONT SIZE=+1>Description</font></b>
                  </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-add-cluster-policy </p></font> </td>
                  <td> Adds cluster specific configurations such as Infra machinesets and TLS certificates to ACM policies.
                  <BR> Adds the cluster to appropriate placement rules</td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-cluster-deployment</p></font> </td>
                  <td> Set OpenStack Quotas and launch configured ACM deployment (<b>NOTE:</b> <i>Currently only sets OSP Quotas)</i></td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-configure-deployment </p></font> </td>
                  <td> Generate customized yaml configuration required for ACM deployment </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-deployment-defaults</p></font> </td>
                  <td> General role to set deployment defaults. &nbsp; &nbsp; No OpenStack or OpenShift interface is require for this role as its main purpose is to set default values</td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-gather-deployment-facts </p></font> </td>
                  <td> This role sets all necessary values from OpenStack and OpenShift to generate an OpenShift cluster deployment </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-launch-cluster-deployment </p></font> </td>
                  <td> Launches the ACM OpenShift cluster deployment </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> acm-pre-deployment </p></font> </td>
                  <td> Add OpenStack service account and set permissions </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> git-pull-install </p></font> </td>
                  <td> Bitbucket interface: Pulls the current "ocp-install" repo contents </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> git-pull-post-install </p></font> </td>
                  <td> Bitbucket interface: Pulls the current "ocp-post-install" repo contents </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> git-push-install </p></font> </td>
                  <td> Bitbucket interface: Commits and pushes the OpenShift Cluster configuration for ACM in the "ocp-install" repo </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> git-push-post-install </p></font> </td>
                  <td> Bitbucket interface: Commits and pushes the ACM policy definitions for OpenShift Cluster post deployment processing "ocp-post-install" repo </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> ocp-certificate-inject </p></font> </td>
                  <td> Generates custom TLS secrets for cluster API and Wildcard Ingress.
                  <br> Also Strips the root CA from the Ingress (app) certtificate bundle prior to encoding the certificate into the TLS secret. </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> ocp-generate-api-server-config </p></font> </td>
                  <td> Generates the custom APIserver definition with the new API Certificate for a cluster
                  <br> This definition is saved in the cluster specific policy definition folder "ocp-post-install/policies/post-deployment/clusters/${clustername} </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> ocp-infra-machinesets </p></font> </td>
                  <td> Generates infra node machinesets
                  <br> This definition is saved in the cluster specific policy definition folder "ocp-post-install/policies/post-deployment/clusters/${clustername} </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> osp-inventory-security-groups </p></font> </td>
                  <td> Locate OpenStack Security groups and populate variables for use in other functions like OpenShift machineset automation </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> ocp-ns-machinesets </p></font> </td>
                  <td> Generates ns machinesets for application namespaces </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> osp-network-vm-test </p></font> </td>
                  <td> Perform internal OpenStack Network connectiviy test. </td>
                  <td>    -e network_search_regex test=[string found in OpenStack network name </td>
                  <td>    -e az="[Availability Zone] </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> ocp-proxy-machinesets </p></font> </td>
                  <td> Generates custom proxy machineset definitions.
                  <br> &nbsp;&nbsp; NOTE: machineset yaml files are currently placed in "ocp-install/cluster/${clustername}/machineset" </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> osp-security-groups </p></font> </td>
                  <td> Define and configure OpenStack Security rules </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> osp-set-project </p></font> </td>
                  <td> Validates and sets OpenStack project ID variable </td>
                </tr>
                <tr>
                  <td> &nbsp; </td> <td> <p><FONT SIZE=+1> <FONT COLOR="blue"> ocp-vas-machinesets </p></font> </td>
                  <td> Generates custom VAS machineset definitions.
                  <br> &nbsp;&nbsp; NOTE: machineset yaml files are currently placed in "ocp-install/cluster/${clustername}/machineset" </td>
                </tr>
</table>

