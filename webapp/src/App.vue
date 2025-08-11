<template>
    <div id="app">
        <NavBar></NavBar>

        <router-view></router-view>

        <Footer></Footer>
    </div>
</template>

<script lang="ts">

export default {
    data() {
        return {
            name: ""
        }
    }
}

</script>