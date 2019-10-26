<template>
  <div id="home">
    <Sidebar />
    <Index />
  </div>
</template>
<script>
import axios from "axios";
import Sidebar from "./sidebar";
import Index from "./index";

export default {
  name: "home",
  components: {
    Sidebar,
    Index
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

#home {
  display: flex;
}
</style>
