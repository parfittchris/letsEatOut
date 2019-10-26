<template>
  <div class="sidebar">
    <router-link class="homeBtn" :to="{path: '/'}">Home</router-link>
    <button class="homeBtn" v-on:click="logout">Logout</button>
    <h2>Hello {{this.user.username}}!</h2>
    <button v-on:click="test">test here</button>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "Sidebar",
  data() {
    return {
      user: []
    };
  },
  mounted() {
    axios
      .get(`/api/users/${this.$store.state.currentUser}`)
      .then(res => (this.user = res.data))
      .catch(err => console.log(err));
  },
  methods: {
    logout() {
      axios
        .delete("./api/session")
        .then(res => {
          this.$store.commit("setAuthentication", false);
          this.$store.commit("currentUser", null);
          this.$router.replace({ name: "login" });
        })
        .catch(err => console.log(err));
    },
    test() {
      console.log(this.$store.state.currentUser);
    }
  }
};
</script>

<style scoped>
.sidebar {
  width: 20vw;
  height: 100vh;
  border: 1px solid black;
  background-color: #4040af;
  color: white;
  position: fixed;
}

.homeBtn {
  color: white;
  display: inline-block;
  background-color: #eb2946;
  width: 20%;
  height: 30px;
  margin-top: 10px;
  margin-left: 20px;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
  padding-top: 10px;
}

.homeBtn:active {
  background-color: #a3182d;
}
</style>