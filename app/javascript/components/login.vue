<template>
  <div id="signup">
    <form @submit="loginUser">
      <label for="email">Enter Email Address</label>
      <input type="text" v-model="email" name="email" />
      <label for="password">Enter Password</label>
      <input type="text" v-model="password" name="password" />
      <input type="submit" value="Login" />
    </form>
    <button v-on:click="test"></button>
    <button v-on:click="test2"></button>
  </div>
</template>
<script>
import axios from "axios";
export default {
  name: "signup",
  data() {
    return {
      username: "",
      email: "",
      password: "",
      info: [],
      userInfo: []
    };
  },
  methods: {
    loginUser(e) {
      e.preventDefault();
      axios
        .post("/api/session", {
          email: this.email,
          password: this.password
        })
        .then(res => (this.info = res.data))
        .catch(err => console.log(err));
    },
    test() {
      console.log(this.info);
      console.log(this.userInfo);
    },
    test2() {
      axios
        .get(`/api/users/${this.info.id}`)
        .then(res => (this.userInfo = res.data));
    }
  }
};
</script>
<style scoped></style>