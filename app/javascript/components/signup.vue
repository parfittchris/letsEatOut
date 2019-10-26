<template>
  <div id="signup">
    <form class="signupPage" @submit="addUser">
      <h1 class="signupHeader">Welcome to LetsEatOut!</h1>
      <h3
        class="signupDescription"
      >Welcome to LetsEatOut, a restaurant review platform! Don't know where to eat tonight? Browse our selection of restaurants and check out the reviews to find the hottest spot. Had a fantastic meal? Make sure to write that review! Sign up today!</h3>
      <div class="formInputs">
        <div class="textInput username">
          <label for="email">Enter Username:</label>
          <input type="text" v-model="username" name="username" />
        </div>
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
        <input class="loginBtn" type="submit" value="Sign Up" />
        <button class="loginBtn demo" v-on:click="demoLogin">Demo Login</button>
      </div>
      <p class="signUpLink">
        Already a member? Log in
        <router-link :to="{path: '/login'}">here!</router-link>
      </p>
    </form>
  </div>
</template>
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
    addUser(e) {
      e.preventDefault(e);
      axios
        .post("/api/users", {
          username: this.username,
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
  height: 24%;
  margin-top: 5%;
  margin-left: 10%;
  width: 80%;
}

.formInputs {
  width: 60%;
  margin: 0 auto;
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

.username input {
  width: 229px;
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