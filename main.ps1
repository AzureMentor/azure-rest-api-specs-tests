param([string]$TEST_PROJECT, [string] $TEST_LANG, [string]$TEST_CSM_ORGID_AUTHENTICATION)

.\build.ps1 -TEST_PROJECT $TEST_PROJECT -TEST_LANG $TEST_LANG
.\test.ps1 -TEST_PROJECT $TEST_PROJECT -TEST_LANG $TEST_LANG -TEST_CSM_ORGID_AUTHENTICATION $TEST_CSM_ORGID_AUTHENTICATION
