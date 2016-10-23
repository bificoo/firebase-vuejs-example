<template>
  <div id="app">
    <h1>{{ msg }}</h1>
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
  module.exports =
    data: () ->
      return {
        msg: 'Hello Vue!'
      }
</script>

<style src="bootstrap/dist/css/bootstrap.css"></style>
<style lang="sass?indentedSyntax" type="text/sass">
body
  font-family: sans-serif
</style>
