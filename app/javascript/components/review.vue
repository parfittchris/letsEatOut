<template>
  <div id="review">
    <div class="review-content">
      <h1 class="review-item" id="title">{{this.review.title}}</h1>
      <router-link
        class="review-item"
        id="author"
        :to="{path: `/users/${this.user.id}`}"
      >{{this.user.username}}</router-link>
      <p class="review-item" id="content">{{this.review.content}}</p>
      <div v-if="this.$store.state.currentUser === this.user.id">
        <form class="review-btns" @submit="deleteReview">
          <p class="review-item" id="rating">Rating: {{this.review.rating}}</p>
          <input type="submit" value="Delete Review" class="submitReview" />
        </form>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "review",
  props: ["review"],
  data() {
    return {
      user: []
    };
  },
  mounted() {
    axios
      .get(`/api/users/${this.review.author_id}`)
      .then(res => (this.user = res.data))
      .catch(err => console.log(err));
  },
  methods: {
    deleteReview(e) {
      e.preventDefault();

      axios
        .delete(`/api/reviews/${this.review.id}`)
        .then(res => {
          this.$emit("deleted");
        })
        .catch(err => console.log(err));
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
  text-decoration: none;
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
  text-decoration: none;
  font-size: 18px;
  height: 15%;
}

#content {
  height: 50%;
}

#rating {
  height: 15%;
}

.review-btns {
  display: flex;
}

.submitReview {
  color: white;
  background-color: #eb2946;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  cursor: pointer;
  font-size: 16px;
  bottom: 0px;
  margin-right: 10px;
}

.submitReview:active {
  background-color: #a3182d;
}
</style>
