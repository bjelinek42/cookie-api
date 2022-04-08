<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      cookies: [],
      createCookieParams: {},
      currentCookie: {}
    };
  },
  created: function () {
    this.indexCookies()
  },
  methods: {
    indexCookies: function () {
      axios.get("/cookies").then(response => {
        console.log(response.data)
        this.cookies = response.data
      })
    },
    createCookie: function () {
      axios.post("/cookies", this.createCookieParams).then(response => {
        console.log("creating cookie", response.data)
        this.cookies.push(response.data)
      })
    },
    showCookie: function (cookie) {
      console.log("showing cookie", cookie)
      this.currentCookie = cookie
      document.querySelector("#cookie-details").showModal()
    }
  },
};
</script>

<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <p>Create new Cookie</p>
    <p>
      Name:
      <input type="text" v-model="createCookieParams.name" />
    </p>
    <p>
      Colories:
      <input type="text" v-model="createCookieParams.calories" />
    </p>
    <p>
      Size:
      <input type="text" v-model="createCookieParams.size" />
    </p>
    <button @click="createCookie">Creat\e!</button>
    <div v-for="cookie in cookies" v-bind:key="cookie.id">
      <p>{{ cookie.name }}</p>
      <p>
        <button @click="showCookie()">More Information</button>
      </p>
      <dialog id="cookie-details">
        <form method="dialog">
          <p>Name: {{ cookie.name }}</p>
          <p>Colories: {{ cookie.calories }}</p>
          <p>Size: {{ cookie.size }}</p>
          <button>Close</button>
        </form>
      </dialog>
    </div>
  </div>
</template>

<style></style>