<template>
  <div class="sidebar">
    <div class="topBtns">
      <router-link class="homeBtn" :to="{path: '/home'}">Home</router-link>
      <button class="logout" v-on:click="logout">Logout</button>
    </div>
    <h2 class="sidebarMessage">Logged in: {{this.user.username}}</h2>
    <img class="sidebarImage" src="./../../assets/images/profile.png" />
    <router-link
      class="homeBtn profile"
      :to="{path: `/users/${this.$store.state.currentUser}`}"
    >Profile</router-link>
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
      this.$store.commit("setAuthentication", false);
      this.$store.commit("setCurrentUser", null);
      this.$router.replace({ name: "login" });
    }
  }
};
</script>

<style scoped>
.sidebar {
  width: 20vw;
  height: 100vh;
  background-color: #4040af;
  color: white;
  position: fixed;
  display: flex;
  flex-direction: column;
  margin: -8px;
}

.topBtns {
  display: flex;
  justify-content: space-around;
}

.homeBtn {
  color: white;
  display: inline-block;
  background-color: #eb2946;
  width: 30%;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
  margin-top: 10px;
}

.logout {
  color: white;
  background-color: #eb2946;
  width: 30%;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
  margin-top: 10px;
}

.homeBtn:active {
  background-color: #a3182d;
}

.logout:active {
  background-color: #a3182d;
}

.sidebarMessage {
  margin-top: 10%;
  text-align: center;
}

.sidebarImage {
  height: 32%;
  width: 80%;
  margin: 10% auto;
  border-radius: 50%;
  border: 5px solid #272753;
}

.profile {
  margin: 10px auto;
}
</style>