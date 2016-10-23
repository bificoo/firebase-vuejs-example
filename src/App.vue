<template>
  <div id="app">
    <h1>Firebase + Vue.js example</h1>
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
  firebase = require 'firebase'

  config = {
    apiKey: "AIzaSyBA8CnXKlkk2seKlj6KIAVJrxu9moNmm_g"
    authDomain: "jsdc2016-54e08.firebaseapp.com"
    databaseURL: "https://jsdc2016-54e08.firebaseio.com"
    storageBucket: "jsdc2016-54e08.appspot.com"
    messagingSenderId: "12243581682"
  }
  firebase.initializeApp(config)

  module.exports =
    data: () ->
      return {
        newUser: {
          name: ''
          email: ''
        }
      }
</script>

<style src="bootstrap/dist/css/bootstrap.css"></style>
<style lang="sass?indentedSyntax" type="text/sass">
body
  font-family: sans-serif
</style>
