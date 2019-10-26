<template>
  <div id="review">
    <div class="review-content">
      <h1 class="review-item" id="title">{{this.review.title}}</h1>
      <h2 class="review-item" id="author">{{this.review.author_id}}</h2>
      <p class="review-item" id="content">{{this.review.content}}</p>
      <p class="review-item" id="rating">{{this.review.rating}}</p>
    </div>
    <div class="review-btns">
      <button v-on:click="deleteReview">Delete Review</button>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "review",
  props: ["review"],
  methods: {
    deleteReview() {
      axios.delete(`/api/reviews/${this.review.id}`);
    }
  }
};
</script>
<style scoped>
.review-content {
  display: flex;
  flex-direction: column;
  padding: 5px;
  box-sizing: border-box;
  border: 5px solid #4040af;
  border-radius: 8px;
  background-color: rgb(245, 230, 212);
  color: black;
}

.review-item {
  box-sizing: border-box;
  padding: 2px;
  width: 100%;
  margin: 0;
}

#title {
  height: 20%;
  font-size: 2rem;
}

#author {
  height: 15%;
}

#content {
  height: 50%;
}

#rating {
  height: 15%;
}
</style>
