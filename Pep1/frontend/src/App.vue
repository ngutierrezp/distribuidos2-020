<template>
  <v-app>
    <toolbar></toolbar>
    
    <router-view></router-view>
  </v-app>
</template>

<script>


import toolbar from '@/components/rootComponents/toolbar.vue'
export default {
  name: 'App',

  components: {
    toolbar
    
  },

  data: () => ({
    //
  }),
};
</script>
