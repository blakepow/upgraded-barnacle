export const increment = (num) => {
    return{
        type: "INCREMENT",
        payload: num
    }
}
export const decrement = () => {
    return{
        type: "DECREMENT"
    }
}
export const sign_in = () => {
    return{
        type: "SIGN_IN",
    }
}