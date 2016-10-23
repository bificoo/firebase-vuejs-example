<template>
  <div id="app">
    <h1>Firebase + Vue.js example</h1>
    <div class="form-inline">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="name" v-model="newUser.name">
      </div>
      <div class="form-group">
        <input type="text" class="form-control" placeholder="email" v-model="newUser.email">
      </div>
      <button type="button" class="btn btn-success" v-on:click="addUser(user)">Add</button>
    </div>
    <h2>User List</h2>
    <ul v-for="user in users" :key="user['.key']">
      <li>
        {{ user | json }}
        <button class="btn btn-success" v-on:click="updateUser(user)">Update</button>
        <button class="btn btn-success" v-on:click="setUser(user)">Set</button>
        <button class="btn btn-danger" v-on:click="removeUser(user)">Delete</button>
      </li>
    </ul>
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

  usersRef = firebase.database().ref('users')

  module.exports =
    data: () ->
      return {
        newUser: {
          name: ''
          email: ''
        }
      }
    firebase:
      users: usersRef
    methods: {
      addUser: () ->
        usersRef.push(this.newUser)
        this.newUser.name = ''
        this.newUser.email = ''
        return
      updateUser: (user) ->
        usersRef.child(user['.key']).update {
          name: 'peggy'
        }
        return
      setUser: (user) ->
        usersRef.child(user['.key']).set {
          name: 'peggy shih'
        }
        return
      removeUser: (user) ->
        usersRef.child(user['.key']).remove()
        return
    }
</script>

<style src="bootstrap/dist/css/bootstrap.css"></style>
<style lang="sass?indentedSyntax" type="text/sass">
body
  font-family: sans-serif
</style>
