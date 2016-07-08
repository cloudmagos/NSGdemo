try { $context = Get-AzureRmContext; }
catch { Login-AzureRmAccount }

$location = 'West Europe';
$resourceGroupName = "BlueSeaStar";
$nsgName = 'BSSNSG0001';
$void = Select-AzureRmSubscription -SubscriptionName "One Subscription to rule them all"

$nsgObject = Get-AzureRMNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroupName
$void = Add-AzureRMNetworkSecurityRuleConfig `
    -Name "RULE0001" `
    -NetworkSecurityGroup $nsgObject `
    -Access Allow `
    -Description "Famous last words" `    -DestinationAddressPrefix "10.42.1.4" `
    -DestinationPortRange "80" `
    -Direction Inbound `
    -Priority 1500 `
    -Protocol Tcp `
    -SourceAddressPrefix "10.42.1.4/32" `
    -SourcePortRange "*"

$void = Set-AzureRMNetworkSecurityGroup -NetworkSecurityGroup $nsgObject