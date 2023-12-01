#[contract]
mod HollaStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Holla(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Holla(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
