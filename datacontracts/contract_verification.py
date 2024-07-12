import glob
from soda.contracts.contract_verification import ContractVerification, ContractVerificationResult
from colorama import Fore, Back, Style


def fetch_and_verify_all_contracts(directory: str = "datacontracts/"):
    files = glob.glob(f"{directory}*.yaml")  # list of all .yaml files in a directory
    print("Fetched files:", files)
    for file in files:
        verify_contract(file)


def verify_contract(filename):
    contract_verification_result: ContractVerificationResult = (
        ContractVerification.builder()
        .with_contract_yaml_file(filename)
        .with_data_source_yaml_file('.atlan/data_sources.yaml')
        .with_soda_cloud_yaml_file('.atlan/soda_cloud.yaml')
        .execute()
    )
    if not contract_verification_result.is_ok():
        print(Fore.RED + f"Contract verification failed for: {filename}")
        print(str(contract_verification_result))
    else:
        print(Fore.GREEN + str(contract_verification_result))


if __name__ == '__main__':
    print("Starting the contract verification")
    fetch_and_verify_all_contracts()
