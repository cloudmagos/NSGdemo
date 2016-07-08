try { $context = Get-AzureRmContext; }
catch { Login-AzureRmAccount }

$location = 'West Europe';
$resourceGroupName = "BlueSeaStar";
$nsgName = 'BSSNSG0006';
$void = Select-AzureRmSubscription -SubscriptionName "One Subscription to rule them all"

$void = Remove-AzureRMNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroupName -Force