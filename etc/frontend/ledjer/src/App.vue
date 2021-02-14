<template>
  <Ledjer msg="Welcome to Your Vue.js App"/>
</template>

<script>
import Ledjer from './components/Ledjer.vue'

export default {
  name: 'App',
  components: {
    Ledjer
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /*margin-top: 0px;*/
}
</style>
