<template>
  <li>
    <a :href="`/post/${post.id}`">{{post.title}}</a>
  </li>
</template>

<script>
export default {
    props: {
        post: Object
    },
    data(){
        return {post: this.post}
    }
}
</script>

<style>
</style>
