import React, { useState, useContext } from 'react';

import Input from '../../shared/components/FormElements/Input';
import Button from '../../shared/components/FormElements/Button';
import Card from '../../shared/components/UIElements/Card';

import {useForm} from '../../shared/hooks/form-hook'
import {useHttpClient} from '../../shared/hooks/http-hook'
import {VALIDATOR_REQUIRE, VALIDATOR_MINLENGTH, VALIDATOR_EMAIL} from '../../shared/util/validators';
import { AuthContext } from '../../shared/context/auth-context';
import ErrorModal from '../../shared/components/UIElements/ErrorModal';
import LoadingSpinner from '../../shared/components/UIElements/LoadingSpinner';
import imageUpload from '../../shared/components/FormElements/ImageUpload';

import './Auth.css'
import ImageUpload from '../../shared/components/FormElements/ImageUpload';

export default function Auth() {
    const auth = useContext(AuthContext);
    const [isLoginMode, setIsLoginMode] = useState(true);
    const {isLoading, error, sendRequest, clearError } = useHttpClient();

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

    const switchModeHandler = () => {
        if(!isLoginMode){
            setFormData({
                ...formState.inputs,
                name: undefined,
                image: undefined
            }, formState.inputs.email.isValid && formState.inputs.password.isValid)
        } else {
            setFormData({
                ...formState.inputs,
                name: {
                    value: '',
                    isValid: false
                },
                image: {
                    value: null,
                    isValid: false
                }
            }, false);
        }
        setIsLoginMode(prevMode => !prevMode);
    }

    const authSubmitHandler = async e => {
        e.preventDefault();

        console.log(formState.inputs);

        if(isLoginMode){
            try{
                const responseData = await sendRequest(
                    'http://localhost:5000/api/users/login', 
                    'POST',
                    JSON.stringify({
                        email: formState.inputs.email.value,
                        password: formState.inputs.password.value
                    }),
                    {
                        'Content-Type': 'application/json'
                    }
                    );
                    auth.login(responseData.user.id);
            } catch (err) {}
        } else {
            try {
                const responseData = await sendRequest('http://localhost:5000/api/users/signup', {
                    method: "POST",
                    headers: {
                        'Content-type': 'application/json'
                    },
                    body: JSON.stringify({
                        name: formState.inputs.name.value,
                        email: formState.inputs.email.value,
                        password: formState.inputs.password.value
                    })
                });
                auth.login(responseData.user.id);
            } catch (err) {}
        }
        
    };

  return (
      <>
        <ErrorModal error={error} onClear={clearError}/>
        <Card className="authentication">
            {isLoading && <LoadingSpinner asOverlay/>}
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
                {!isLoginMode && <ImageUpload center id='image' onInput={inputHandler}/>}
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
                    validators={[VALIDATOR_MINLENGTH(6)]}
                    errorText="Please Enter a Password With At Least 6 Characters"
                    onInput={inputHandler}
                />
                <Button type="submit" disabled={!formState.isValid}>
                    {isLoginMode ? 'Login' : 'Sign Up'}
                </Button>
            </form>
            <Button inverse onClick={switchModeHandler}>{isLoginMode ? 'Sign Up' : 'Login'}</Button>
        </Card>
      </>
  );
}
