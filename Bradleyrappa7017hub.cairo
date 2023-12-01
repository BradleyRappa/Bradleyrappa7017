#[contract]
mod HalloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hallo(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hallo(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
