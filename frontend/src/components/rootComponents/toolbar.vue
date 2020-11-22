<template>
  <!-- etiqueta propia de vuetiy para crear el navbar -->
  <v-app-bar
    app
    absolute
    height="100"
    elevation="0"
    class="custom-color-navbar"
  >
    <img
      v-if="$vuetify.breakpoint.width > 400"
      class="w-auto mx-5"
      height="75"
      :src="require('@/assets/logo.svg')"
    />

    <!-- En caso de ser la vista principal -->
    <h2 class="font-logo font-weight-thin mr-4">World govt.</h2>

    <!-- espacios -->
    &nbsp; &nbsp;
    <!-- fin espacios -->

    <v-spacer></v-spacer>

    <!-- ################## Parte responsive ################## -->

    <div v-if="$vuetify.breakpoint.mdAndUp">
      <v-btn
        v-for="(item, i) in modules"
        :key="i"
        class="custom-menu-btn"
        text
        :to="item.url"
        link
        :dark="$route.name == 'Inicio' && (scrollPosition > 0 ? false : true)"
        active-class="active-url"
      >
        <v-container>
          <v-row>
            <span class="mr-2 my-1 text--gray">{{ item.name }}</span>
          </v-row>
          <v-row>
            <div class="active-hover"></div>
          </v-row>
        </v-container>
      </v-btn>
    </div>

    <div v-if="$vuetify.breakpoint.smAndDown">
      <v-menu
        
        
        rounded="b-lg"
        offset-y
        offset-x
      >
        <template v-slot:activator="{ attrs, on }">
          <v-btn icon v-bind="attrs" v-on="on">
            <v-icon> fas fa-ellipsis-v </v-icon>
          </v-btn>
        </template>

        <v-list>
          <v-list-item v-for="item in [].concat(modules).reverse()" :key="item.name" link :to="item.url">
            <v-list-item-title v-text="item.name"></v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>
    </div>
  </v-app-bar>
</template>

<script>
export default {
  components: {},
  data: () => ({
    scrollPosition: 0,
    modules: [
      { name: "Validad permiso", url: "/validate" },
      { name: "Tramite", url: "/app" },
      { name: "Inicio", url: "/" },
    ],
    duration: 1000,
    offset: -70,
  }),
  computed: {
    options() {
      return {
        duration: this.duration,
        offset: this.offset,
      };
    },
  },
  methods: {
    updateScroll() {
      this.scrollPosition = window.scrollY;
    },
    updateSelector(element) {
      this.selector = "#" + element;
    },
  },
  mounted() {
    window.addEventListener("scroll", this.updateScroll);
  },
};
</script>



<style >
.font-logo {
  font-family: "Open Sans", sans-serif;
  color: #05007f !important;
}
.active-hover {
  width: 10px;
  height: 5px;
  background: rgb(5, 0, 127);
  background: linear-gradient(
    90deg,
    rgba(5, 0, 127, 1) 5%,
    rgba(212, 212, 255, 1) 90%
  );
  margin: 0 2px;
  border-radius: 20px;
  transition: width 0.5s;
}
.text--white {
  color: white;
}
.text--p-black {
  color: #2e2e2e;
}
.custom-navbar {
  transition: background-color 0.5s ease-out, box-shadow 0.5s ease-out !important;
}
.custom-color-navbar {
  background-color: transparent !important;
}
.custom-color-navbar-elevate {
  background-color: white !important;
}
.custom-solid {
  background-color: white !important;
}
.custom-color-divider {
  border-color: #cc1fa9 !important ;
}
.active-bot {
  background-size: 70px 15px;
  background-position: 100% 100%;
}
.custom-menu-btn {
  height: 50px !important;
  -webkit-transition: none !important;
  -moz-transition: none !important;
  -o-transition: none !important;
  transition: color 0.4s ease-out !important;
}
.custom-menu-btn:before {
  color: transparent !important;
}
.custom-menu-btn:hover .active-hover {
  width: 95%;
}
.active-url .active-hover {
  width: 95% !important;
  background: rgb(105, 105, 255);
  background: linear-gradient(
    90deg,
    rgba(105, 105, 255) 5%,
    rgba(212, 212, 255, 1) 90%
  );
}

.active-all {
  background-size: 12px 20px;
  background-position: 0% 45%;
}
</style>