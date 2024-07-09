from soda.contracts.contract_verification import ContractVerification, ContractVerificationResult

contract_verification_result: ContractVerificationResult = (
     ContractVerification.builder()
     .with_contract_yaml_file('marketing_campaign.yaml')
     .with_data_source_yaml_file('/Users/bichitra.sahoo/atlan/projects/fe-contracts-lineage-workshop/.atlan/data_sources.yaml')
     .with_soda_cloud_yaml_file("/Users/bichitra.sahoo/atlan/projects/fe-contracts-lineage-workshop/.atlan/soda_cloud.yaml")
     .execute()
)

print(str(contract_verification_result))
