<template>
  <div class="sidebar">
    <router-link class="homeBtn" :to="{path: '/'}">Home</router-link>
  </div>
</template>
<script>
export default {
  name: "Sidebar"
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