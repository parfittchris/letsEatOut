<template >
  <div id="showFollowers">
    <div id="showFollowersArea">
      <h2 class="followerTitle">Followers</h2>
      <div class="followerSection" v-bind:key="follower.id" v-for="follower in this.user.follows">
        <router-link
          class="singleFollower"
          :to="{path: `/users/${follower.id}`}"
        >{{follower.username}}</router-link>
      </div>
      <button class="closeBtn" v-on:click="$emit('close')">Close</button>
    </div>
  </div>
</template>
<script>
export default {
  name: "showFollowers",
  props: ["user"],
  methods: {
    test() {
      console.log(this.user);
    }
  }
};
</script>
<style scoped>
#showFollowers {
  position: fixed;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  background: rgb(0, 0, 0, 0.7);
}

#showFollowersArea {
  width: 20vw;
  height: 50vh;
  position: fixed;
  left: 40vw;
  top: 25vh;
  background-color: rgb(245, 230, 212);
  border: 5px solid #3a3a69;
  border-radius: 10px;
  display: flex;
  flex-direction: column;
}

.followerTitle {
  margin: 5px auto;
}

.followerSection {
  background-color: white;
  margin: 0 auto;
  text-align: center;
  width: 70%;
  height: 60%;
  display: flex;
  flex-direction: column;
}

.singleFollower {
  margin: 0 auto;
  text-decoration: none;
  color: black;
}

.singleFollower:hover {
  color: rgb(33, 33, 172);
}

.closeBtn {
  width: 30%;
  color: white;
  background-color: #eb2946;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
  margin: 10px auto;
}

.closeBtn:active {
  background-color: #a3182d;
}
</style>