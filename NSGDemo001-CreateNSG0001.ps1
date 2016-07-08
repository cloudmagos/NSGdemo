try { $context = Get-AzureRmContext; }
catch { Login-AzureRmAccount }

$location = 'West Europe';
$resourceGroupName = "BlueSeaStar";
$nsgName = 'BSSNSG0001';
$void = Select-AzureRmSubscription -SubscriptionName "One Subscription to rule them all"

$void = New-AzureRMNetworkSecurityGroup -Location $location -Name $nsgName -ResourceGroupName $resourceGroupName