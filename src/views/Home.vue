<template>
  <v-main>
    <div class="square square-1"></div>

    
      <v-row  class="mx-auto max-he" justify="center" align="center">
        <v-col class="pl-10"  cols="5">
          <h1 class="font-logo font-weight-normal display-2 mb-7">
            World Government
          </h1>
          <span class="font-weight-thin headline">
            Ahora puedes solicitar tus permisos temporales individuales para
            toda ocación con <b>World govt.</b>
          </span>
          <v-row class="mt-10" justify="center">
              <v-btn rounded dark color="#05007f">
              Iniciar tramite
              <v-icon class="ml-3">
                  fas fa-arrow-right
              </v-icon>
          </v-btn>
          </v-row>
          
        </v-col>
        <v-col  cols="7">
          <v-img
             class="mx-auto w-auto mr-10 "
            :src="require('@/assets/animations/security-animate.svg')"
            aspect-ratio="1"
            width="70%"

            
          />
        </v-col>
      </v-row>
    
  </v-main>
</template>

<script>
export default {};
</script>

<style scoped>
.square {
  position:absolute;
  background-color: #05007f;
  border-radius: 20px;
  box-shadow: -1px 1px 10px #91109110;
}
.square-1 {
  top: -55%;
  left: 45%;
  height: 143%;
  width: 80%;

  transform: rotate(-7deg);
}


</style>