import React, { useState, useContext } from 'react';

import Input from '../../shared/components/FormElements/Input';
import Button from '../../shared/components/FormElements/Button';
import Card from '../../shared/components/UIElements/Card';

import {useForm} from '../../shared/hooks/form-hook'
import {VALIDATOR_REQUIRE, VALIDATOR_MINLENGTH, VALIDATOR_EMAIL} from '../../shared/util/validators';
import { AuthContext } from '../../shared/context/auth-context';

import './Auth.css'

export default function Auth() {
    const auth = useContext(AuthContext);
    const [isLoginMode, setIsLoginMode] = useState(true);
    const [formState, inputHandler, setFormData] = useForm(
        {
            email: {
                value: '', 
                isValid: false
            },
            password: {
                value: '',
                isValid: false
            }
        },
        false
    );

    const authSubmitHandler = e => {
        e.preventDefault();
        console.log(formState.inputs)
        auth.login()
    }

    const switchModeHandler = () => {
        if(!isLoginMode){
            setFormData({
                ...formState.inputs,
                name: undefined
            }, formState.inputs.email.isValid && formState.inputs.password.isValid)
        } else {
            setFormData({
                ...formState.inputs,
                name: {
                    value: '',
                    isValid: false
                }
            }, false);
        }
        setIsLoginMode(prevMode => !prevMode);
    }

  return (
    <Card className="authentication">
        <h2>Login Required</h2>
        <hr />
        <form onSubmit={authSubmitHandler}>
            {!isLoginMode && <Input 
                element='input' 
                id='name'
                type='text'
                label="Your Name"
                validators={[VALIDATOR_REQUIRE()]}
                errorText='Please Enter Your Name'
                onInput={inputHandler}
            />}
            <Input 
                id="email"
                element="input"
                type='email'
                label="Email"
                validators={[VALIDATOR_EMAIL()]}
                errorText="Please Enter a Valid Email"
                onInput={inputHandler}
            />
            <Input 
                id="password"
                element="input"
                type='password'
                label="Passsword"
                validators={[VALIDATOR_MINLENGTH(5)]}
                errorText="Please Enter a Password With At Least 5 Characters"
                onInput={inputHandler}
            />
            <Button type="submit" disabled={!formState.isValid}>
                {isLoginMode ? 'Login' : 'Sign Up'}
            </Button>
        </form>
        <Button inverse onClick={switchModeHandler}>{isLoginMode ? 'Sign Up' : 'Login'}</Button>
    </Card>
  );
}