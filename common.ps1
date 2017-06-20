Import-Module ".\lib.psm1"

$env:TEST_COMMON = Join-Path (pwd) "x"

$env:TEST_PROJECT = $env:TEST_PROJECT.Replace('_', '/')

$env:TEST_NODE_VER = "v7.10.0"

$env:TEST_NODE = "node-" + $env:TEST_NODE_VER + "-win-x64"
$env:TEST_NODE_FOLDER = Join-Path $env:TEST_COMMON $env:TEST_NODE
$env:Path = $env:TEST_NODE_FOLDER + ";" + $env:Path

$env:TEST_DOTNET_FOLDER = Join-Path $env:TEST_COMMON "dn"
$env:Path = $env:TEST_DOTNET_FOLDER + ";" + $env:Path

# Project

# A VSTS Build name can't contain '/' so the TEST_PROJECT parameter uses '_' 
# instead.
$env:TEST_PROJECT = $env:TEST_PROJECT.Replace('_', '/')

# $info = Read-SdkInfo

# $dotNet = $info.dotNet

# $info
# $dotNet
# $autorest

# $current = pwd

# $env:TEST_PROJECT_TEST = Join-Path $current "_\src\SDKs\$($dotNet.folder)\$($dotNet.test)"
# if(-Not (Test-Path $env:TEST_PROJECT_TEST))
# {
#     Write-Error "error: the path dosn't exist $env:TEST_PROJECT_TEST"
#     exit -1
# }
