## Play with Contracts using Atlan CLI

### Create a contract for the given asset 
```commandline
atlan init contract --data-source mysql-dev --asset "Table@marketing_campaign_dataset" -o datacontracts/marketing_campaign.yaml
```

### Push the contract to Atlan
```commandline
atlan push contract -f datacontracts/
```
