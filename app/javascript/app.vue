<template>
  <div id="app">
    <div v-if="this.session_token">
      <router-view></router-view>
    </div>
    <div v-else>
      <SignUp />
    </div>
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
  },
  data() {
    return {
      session_token: true
    };
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
