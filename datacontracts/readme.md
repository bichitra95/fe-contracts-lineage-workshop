## Play with Contracts using Atlan CLI

### Download the .env file
[.env](https://drive.usercontent.google.com/u/0/uc?id=1iwTXmirpKsmnHVUfkfhXbEhDKvHhpvtL&export=download)

### Create a contract for the given asset 
```commandline
atlan init contract --data-source mysql-dev --asset "View@marketing_view" -o datacontracts/
```

### Verify the contract with your local mysql dataset

```commandline 
docker image build -t contract-verification .
```
```commandline

docker container run contract-verification 
```



### Push the contract to Atlan
```commandline
atlan push contract -f datacontracts/
```
