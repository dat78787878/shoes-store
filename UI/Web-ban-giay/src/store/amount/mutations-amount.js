export default{
    updateAmount : async function(state,res){
        state.amount = [...res];
    }
}