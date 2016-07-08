try { $context = Get-AzureRmContext; }
catch { Login-AzureRmAccount }

$location = 'West Europe';
$resourceGroupName = "BlueSeaStar";
$nsgName = 'BSSNSG0001';
$void = Select-AzureRmSubscription -SubscriptionName "One Subscription to rule them all"

$nsgObject = Get-AzureRMNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroupName
$void = Remove-AzureRmNetworkSecurityRuleConfig  -NetworkSecurityGroup $nsgObject -Name "RULE0001"
$void = Set-AzureRMNetworkSecurityGroup -NetworkSecurityGroup $nsgObject