<template>
  <div id="app">
    <Sidebar />
    <p>Hello</p>
  </div>
</template>

<script>
import axios from "axios";
import Sidebar from "./components/sidebar";

export default {
  name: "app",
  components: {
    Sidebar
  }
  // mounted() {
  //   axios.get("api/restaurants").then(res => (this.restaurants = res.data));
  // }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

#app {
  display: flex;
}
</style>
