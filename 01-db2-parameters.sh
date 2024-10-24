
# db2 project name
db2OnOcpProjectName=ibm-db2

# DB2 Standard license key base64 encoded
#   If this key is not available, leave empty (but remove the value 'REQUIRED') - then the Community edition is used that allows less CPU & RAM
#   In that case, also update parameters db2Cpu and db2Memory below (the defaults there assume you have a DB2 Standard license available)
db2StandardLicenseKey=

# Version of DB2 operator to install. Change only when a new operator version should be used.
db2OperatorVersion=db2u-operator.v110509.0.0

# Channel version for Operator updates. Change only if a new DB2 operator version requires a new channel version.
db2OperatorChannel=v110509.0

# DB2 instance version to be created. Change only when a new version of DB2 should be used.  
# This version of DB2 must be supported by the Operator version installed as specified above.
db2InstanceVersion=s11.5.9.0

# db2 admin user name
db2AdminUserName=db2inst1

# Password for DB2 Admin User (Admin User name see below), for example passw0rd
db2AdminUserPassword=passw0rd

# Size of the PVC for DB2 (on ROKS: the larger the faster, good performance with 500Gi)
db2StorageSize=200Gi

# Cpu
db2Cpu=4

# Memory
db2Memory=16Gi

# Name of the storage class used for DB2's PVC
db2OnOcpStorageClassName=nfs-client

# Deployment platform, either ROKS or OCP
cp4baDeploymentPlatform=OCP

# Name of the storage class used for DB2's PVC
db2OnOcpStorageClassName=ocs-storagecluster-cephfs

# !!! NOTE !!!
# make block default storage class
# oc get storageclass
# kubectl patch storageclass ocs-storagecluster-cephfs -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'
# kubectl patch storageclass ocs-storagecluster-ceph-rbd  -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
# oc get storageclass

# Number of DBs that should be supported by the DB instance
db2NumOfDBsSupported=30

# With problems on activation, or if on slow environments, try to increase this delay
db2ActivationDelay=20
