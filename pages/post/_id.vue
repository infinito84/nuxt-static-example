<template>
  <div class="container">
    <div>
      <logo />
      <h1 class="title">
        {{post.title}}
      </h1>
      <p>{{post.body}}</p>
    </div>
  </div>
</template>

<script>
import Logo from '~/components/Logo.vue'
import Link from '~/components/Link.vue'
import axios from 'axios'

export default {
  components: {
    Logo,
    Link
  },
  async asyncData ({ isServer, params }) {
    if (process.server){
        const { data } = await axios.get(`https://jsonplaceholder.typicode.com/posts/${params.id}`)
        return { post: data }
    }
  }
}
</script>

<style>
h1{
    font-size: 3rem!important;
}
ul{
  text-align: left;
}
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
