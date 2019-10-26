<template>
  <div>
    <h1>This is the review modal</h1>
    <form @submit="addReview">
      <input type="text" v-model="title" name="title" placeholder="Review Title" />
      <input type="text" v-model="content" name="content" placeholder="How was it?" />
      <input type="submit" value="Submit" class="btn" />
    </form>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "AddReview",
  data() {
    return {
      title: "",
      content: ""
    };
  },
  methods: {
    addReview(e) {
      e.preventDefault();
      axios
        .post("/api/reviews", {
          author_id: 1,
          restaurant_id: 5,
          title: this.title,
          content: this.content,
          rating: 4
        })
        .then(res => {
          console.log(res.data);
        })
        .catch(err => console.log(err));
    }
  }
};
</script>

<style scoped>
</style>