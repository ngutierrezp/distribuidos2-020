<template>
  <v-main v-if="respose != null">
    <v-container class="fill-height" style="background-color: #d3d3d3" fluid>
      <v-row justify="center" fluid>
        <h1 class="font-logo font-weight-thin display-1 my-7 text-center">
          ¡Permiso Generado!
        </h1>
      </v-row>
      <v-row justify="center">
        <v-card elevation="0" class="pa-5" max-width="700" width="100%" tile>
          <v-card-text class="">
            Estimado/a
            <b style="color: #05007f">{{ respose.name.split(" ")[0] }}</b
            >, su permiso se ha generado exitosamente. A continuación se muestra
            los datos con los que se ha generado.
          </v-card-text>
          <v-card-title
            class="font-weight-normal justify-end"
            style="color: #05007f"
          >
            Documento N° : <b>{{ respose.id }}</b>
          </v-card-title>
          <img
            class="mx-5 mt-5"
            :src="require('@/assets/divider.png')"
            style="
              height: auto;
              border: 0;
              width: 100%;
              max-width: 120px;
              display: block;
            "
          />
          <v-card-title class="font-weight-light">
            Datos personales:
          </v-card-title>

          <v-container class="ml-7">
            <v-row>
              <v-col cols="12" md="7" lg="7" xl="7">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light">
                    Nombre completo
                  </span>
                </v-row>
                <v-row>
                  <span class="headline"> {{ respose.name }} </span>
                </v-row>
              </v-col>

              <v-col cols="12" md="5" lg="5" xl="5">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light">
                    N° de documento
                  </span>
                </v-row>
                <v-row>
                  <span class="headline">
                    {{ respose.document }}
                  </span>
                </v-row>
              </v-col>

              <v-col cols="12">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light">
                    Correo electrónico
                  </span>
                </v-row>
                <v-row>
                  <span class="headline"> {{ respose.email }} </span>
                </v-row>
              </v-col>

              <v-col cols="12">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light"> Dirección </span>
                </v-row>
                <v-row>
                  <span class="headline"> {{ respose.address }} </span>
                </v-row>
              </v-col>

              <v-col cols="12" md="6" lg="6" xl="6">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light">
                    Hora de inicio
                  </span>
                </v-row>
                <v-row>
                  <span class="headline"> {{ respose.starts_at }} </span>
                </v-row>
              </v-col>

              <v-col cols="12" md="6" lg="6" xl="6">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light">
                    Hora de termino
                  </span>
                </v-row>
                <v-row>
                  <span class="headline"> {{ respose.ends_at }} </span>
                </v-row>
              </v-col>

              <v-col cols="12">
                <v-row class="mb-3">
                  <span class="subtitle-2 font-weight-light">
                    Tipo de permiso
                  </span>
                </v-row>
                <v-row class="mr-2">
                  <span class="headline"> {{ respose.reason }} </span>
                </v-row>
              </v-col>
            </v-row>
          </v-container>
          <img
            class="mx-5 mt-5"
            :src="require('@/assets/divider.png')"
            style="
              height: auto;
              border: 0;
              width: 100%;
              max-width: 120px;
              display: block;
            "
          />
        </v-card>
      </v-row>
    </v-container>
  </v-main>
</template>

<script>
export default {
  props: ["respose"],
  mounted() {
    if (this.respose == null) {
      this.$router.push("/");
    }
  },
};
</script>

<style>
</style>
