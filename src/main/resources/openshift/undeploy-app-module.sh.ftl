<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/sh
set -e
<#include "/openshift/oc-login-previousDeployed.ftl">

${previousDeployed.container.ocHome}/oc project ${previousDeployed.project}

${previousDeployed.container.ocHome}/oc delete all -l app=${previousDeployed.appName}
${previousDeployed.container.ocHome}/oc logout