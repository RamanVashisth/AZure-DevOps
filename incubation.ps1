connect-AzAccount
$rg= 'incubation-RG'
New-AzResourceGroup -Name $rg -Location 'eastus' -Force

New-AzResourceGroupDeployment `
-ResourceGroupName $rg `
-TemplateFile 'incubation.json' `
-TemplateParameterFile 'incubation.parameters.json'

