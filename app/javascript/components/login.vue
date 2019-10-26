<template>
  <div id="signup">
    <form class="signupPage" @submit="loginUser">
      <h1 class="signupHeader">Welcome to LetsEatOut!</h1>
      <h3
        class="signupDescription"
      >Welcome to LetsEatOut, a restaurant review platform! Don't know where to eat tonight? Browse our selection of restaurants and check out the reviews to find the hottest spot. Had a fantastic meal? Make sure to write that review! Log in now!</h3>
      <div class="formInputs">
        <div class="textInput">
          <label for="email">Enter Email Address:</label>
          <input type="text" v-model="email" name="email" />
        </div>
        <div class="textInput password">
          <label for="password">Enter Password:</label>
          <input type="password" v-model="password" name="password" />
        </div>
      </div>
      <div class="btns">
        <input class="loginBtn" type="submit" value="Login" />
        <button class="loginBtn demo" v-on:click="demoLogin">Demo Login</button>
      </div>
      <p class="signUpLink">
        Not a member? Sign up
        <router-link :to="{path: '/signUp'}">here!</router-link>
      </p>
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
        .then(res => {
          this.$store.commit("setAuthentication", true);
          this.$store.commit("setCurrentUser", res.data.id);
          this.$router.replace({ name: "home" });
        })
        .catch(err => console.log(err));
    },
    demoLogin(e) {
      e.preventDefault();
      axios
        .post("/api/session", {
          email: "demoUser@gmail.com",
          password: "password"
        })
        .then(res => {
          this.$store.commit("setAuthentication", true);
          this.$store.commit("setCurrentUser", res.data.id);
          this.$router.replace({ name: "home" });
        })
        .catch(err => console.log(err));
    }
  }
};
</script>
<style scoped>
.signupPage {
  position: absolute;
  width: 50vw;
  height: 50vh;
  left: 25vw;
  top: 25vh;
  background-color: rgb(245, 230, 212);
  display: flex;
  flex-direction: column;
  border-radius: 20px;
  border: 5px solid #3a3a69;
}

.signupHeader {
  height: 15%;
  text-align: center;
  margin-bottom: 0;
}

.signupDescription {
  height: 30%;
  margin-top: 5%;
  margin-left: 10%;
  width: 80%;
}

.formInputs {
  width: 60%;
  margin: 10px auto;
}

.textInput {
  margin: 5px;
}

.textInput input {
  width: 200px;
  border-style: solid;
  border-color: gray;
  border-width: 0 0 1px 0;
}

.password input {
  width: 233px;
}

.btns {
  display: flex;
  height: 30%;
  justify-content: center;
}

.loginBtn {
  width: 20%;
  height: 100%;
  color: white;
  font-weight: 600;
  background-color: #5252d4;
  border-radius: 8px;
  margin: 5px;
  cursor: pointer;
}

.loginBtn:active {
  background-color: #3a3a69;
}

.demo {
  background-color: #eb1736;
}

.demo:active {
  background-color: #a3182d;
}

.signUpLink {
  text-align: center;
}
</style>