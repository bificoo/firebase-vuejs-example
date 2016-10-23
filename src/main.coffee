Vue = require 'vue'
VueFire = require 'vuefire'
App = require './App.vue'
bootstrap = require 'bootstrap/dist/js/bootstrap'

# explicit installation required in module environments
Vue.use(VueFire)

new Vue
  el: 'body'
  components: { App }