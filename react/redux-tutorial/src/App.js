import React from 'react'
import {useSelector, useDispatch} from 'react-redux'
import {increment, decrement, sign_in} from './actions'

export default function App() {
  const counter = useSelector(state => state.counter)
  const isLogged = useSelector(state => state.isLogged)
  const dispatch = useDispatch()
  
  return (
    <div>
      <h1>Counter: {counter}</h1>
      <button onClick={() => dispatch(increment(5))}>+</button>
      <button onClick={() => dispatch(decrement())}>-</button>

      <button onClick={() => dispatch(sign_in('Blake'))}>Sign in/out</button>
      {isLogged ? <h3>Confidential Info...</h3> : null}
      
    </div>
  )
}

