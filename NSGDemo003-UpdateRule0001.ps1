try { $context = Get-AzureRmContext; }
catch { Login-AzureRmAccount }

$location = 'West Europe';
$resourceGroupName = "BlueSeaStar";
$nsgName = 'BSSNSG0001';
$void = Select-AzureRmSubscription -SubscriptionName "One Subscription to rule them all"

$nsgObject = Get-AzureRMNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroupName

$ruleConfig=Get-AzureRmNetworkSecurityRuleConfig -NetworkSecurityGroup $nsgObject -Name "RULE0001"
$ruleConfig.Priority=2345
$ruleConfig.Description="I *love* comments!"
$void = Set-AzureRMNetworkSecurityGroup -NetworkSecurityGroup $nsgObject