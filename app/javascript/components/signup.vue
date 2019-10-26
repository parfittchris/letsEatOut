<template>
  <div id="signup">
    <form @submit="addUser">
      <label for="username">Enter Username</label>
      <input type="text" v-model="username" name="username" />
      <label for="email">Enter Email Address</label>
      <input type="text" v-model="email" name="email" />
      <label for="password">Enter Password</label>
      <input type="text" v-model="password" name="password" />
      <input type="submit" value="Submit" />
    </form>
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
      password: ""
    };
  },
  methods: {
    addUser() {
      axios
        .post("/api/users", {
          username: this.username,
          email: this.email,
          password: this.password
        })
        .then(res => console.log(res.data))
        .catch(err => console.log(err));
    }
  }
};
</script>
<style scoped></style>