#!/bin/bash

const jwt = require('jsonwebtoken');
const fs = require('fs');
const { v4: uuidv4 } = require('uuid');
const now = Math.floor(Date.now() / 1000); 

const privateKey = fs.readFileSync('private.key');
const token = jwt.sign({
  iss: 'j7sJq7BuoNBs7rByFizN3BoWjP78xW55',
  sub: 'j7sJq7BuoNBs7rByFizN3BoWjP78xW55',
  aud: 'https://dev-8r5puiwt4gcv3eps.us.auth0.com/oauth/token',
  iat: now,
  exp: now + (5 * 60), 
  jti: uuidv4()
}, privateKey, { algorithm: 'RS256' });

console.log(token);



