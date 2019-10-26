<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>
<script>
import axios from "axios";
import SignUp from "./components/signup";
import Login from "./components/login";

export default {
  name: "app",
  components: {
    SignUp,
    Login
  }
};
</script>

<style>
/* Painful Red: #eb1736 */
/* 35 Years Old Purple: #5252d4 */
/* Lighter purple on the gradient: #7575dd */
/* Shadow Purple Red: #781a44 */
body {
  background-color: #a3a3ff;
}
</style>
