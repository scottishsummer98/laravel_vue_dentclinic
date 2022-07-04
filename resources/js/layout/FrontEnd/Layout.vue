<template>
    <div class="row">

      <HeaderComponent></HeaderComponent>

      <router-view></router-view>
      
      <FooterComponent></FooterComponent>

    </div>

    
</template>

<script>

import HeaderComponent from '../FrontEnd/Header.vue';
import FooterComponent from '../FrontEnd/Footer.vue';

export default {
  components: {
      HeaderComponent, FooterComponent,
  },
};
</script>

<style>
</style>