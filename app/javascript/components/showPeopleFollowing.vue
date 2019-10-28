<template >
  <div id="showPeopleFollowing">
    <div id="showPeopleFollowingArea">
      <h2 class="peopleTitle">People Following</h2>
      <div
        class="peopleSection"
        v-bind:key="person.id"
        v-for="person in this.user.people_following"
      >
        <router-link class="singlePerson" :to="{path: `/users/${person.id}`}">{{person.username}}</router-link>
      </div>
      <button class="closeBtn" v-on:click="$emit('close')">Close</button>
    </div>
  </div>
</template>
<script>
export default {
  name: "showPeopleFollowing",
  props: ["user"],
  methods: {
    test() {
      console.log(this.user);
    }
  }
};
</script>
<style scoped>
#showPeopleFollowing {
  position: fixed;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  background: rgb(0, 0, 0, 0.7);
}

#showPeopleFollowingArea {
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

.peopleTitle {
  margin: 5px auto;
}

.peopleSection {
  background-color: white;
  margin: 0 auto;
  text-align: center;
  width: 70%;
  height: 60%;
  display: flex;
  flex-direction: column;
}

.singlePerson {
  margin: 0 auto;
  text-decoration: none;
  color: black;
}

.singlePerson:hover {
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