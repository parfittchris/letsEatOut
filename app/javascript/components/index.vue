<template>
  <div class="index">This is the index</div>
</template>
<script>
export default {
  name: "Index",
  data() {
    return {
      restaurants: []
    };
  },
  mounted() {
    axios.get("api/restaurants").then(res => (this.restaurants = res.data));
  }
};
</script>

<style scoped>
.sidebar {
  width: 75vw;
  height: 100vh;
  border: 1px solid black;
}
</style>