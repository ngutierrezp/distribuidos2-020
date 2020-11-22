<template>
  <v-main>
    <div v-if="$vuetify.breakpoint.mdAndUp" class="square square-1"></div>
    <div v-if="$vuetify.breakpoint.mdAndUp" class="square square-2"></div>
    <resulteAction></resulteAction>
    <v-container>
      
      <h1 class="font-logo font-weight-thin display-1 mb-7  text-xs-center">
        Inicie el tramite
      </h1>
      <v-row justify="center">
        <v-card
          class="pa-7"
          :width="$vuetify.breakpoint.mdAndDown ? '95%' : '60%'"
          elevation="10"
          rounded="xl"
        >
          <v-card-title class="title font-weight-normal justify-center"
            >Ingrese sus datos para generar su permiso</v-card-title
          >

          <v-divider class="my-2 pb-3"></v-divider>

          <v-form ref="form-user-data" v-model="valid">
            <v-row class="ma-0 mt-n1 mb-3">Ingrese su nombre:</v-row>

            <v-text-field
              v-model="name"
              :rules="[rules.required]"
              required
              name="input-10-1"
              label="Nombre y Apellidos"
              outlined
            ></v-text-field>

            <v-row class="ma-0 mt-n1 mb-3"
              >Ingrese su documento de identificación:</v-row
            >
            <v-row>
              <v-col cols="4">
                <v-select
                  v-model="doc"
                  :items="documentos"
                  label="Documento"
                  single-line
                ></v-select>
              </v-col>

              <v-col cols="8">
                <v-text-field
                  v-model="rut"
                  :rules="
                    doc == 'RUT'
                      ? [rules.required, rules.rutRules]
                      : [rules.required]
                  "
                  name="input-10-1"
                  :label="doc"
                  outlined
                ></v-text-field>
              </v-col>
            </v-row>

            <v-row class="ma-0 mt-n1 mb-3">Ingrese su email:</v-row>

            <v-text-field
              v-model="email"
              :rules="[rules.required, rules.emailRules]"
              name="input-10-1"
              label="Correo electrónico"
              outlined
            ></v-text-field>

            <v-row class="ma-0 mt-n1 mb-3">Ingrese su Dirección:</v-row>

            <v-row>
              <v-col cols="8">
                <v-text-field
                  v-model="address"
                  :rules="[rules.required]"
                  name="input-10-1"
                  label="Dirección"
                  outlined
                ></v-text-field>
              </v-col>

              <v-col cols="4">
                <v-text-field
                  v-model="ad_number"
                  :rules="[rules.required]"
                  name="input-10-1"
                  label="Número"
                  outlined
                  
                ></v-text-field>
              </v-col>
            </v-row>

            <v-row class="ma-0 mt-n1 mb-3"
              >Seleccione el tipo de permiso:</v-row
            >

            <v-autocomplete
              v-model="permiso"
              :items="permisos"
              outlined
              label="Motivo del permiso"
              :rules="[rules.required]"
            ></v-autocomplete>

            <v-btn block color="primary" :disabled="!valid" :loading="loading" @click="submit">
              Generar certificado
            </v-btn>
          </v-form>
        </v-card>
      </v-row>
    </v-container>
  </v-main>
</template>

<script>
import resulteAction from "@/components/resultComponent/resultCertificado.vue"
import { mapActions, mapMutations, mapState } from "vuex";
export default {
  data() {
    return {
      valid: false,
      name: "",
      rut: "",
      email: "",
      doc: "RUT",
      address: "",
      ad_number: "",
      documentos: ["RUT", "DNI", "Pasaporte"],
      rules: {
        required: (v) => !!v || " Campo obligatorio.",
        edadRules: (v) =>
          /^(?:100|1[8-9]|[2-9][0-9])$/.test(v) ||
          "Ingrese una edad entre 18 y 100 años",
        rutRules: (v) =>
          /^(\d{2}\d{3}\d{3}-)([a-zA-Z]{1}$|\d{1}$)/.test(v) ||
          "Ingrese RUT sin puntos y con guión",
        emailRules: (v) =>
          /.+@.+\..+/.test(v) || "Ingrese un correo electrónico válido.",
      },
      permiso: "",
      permisos: [
        "Asistencia a establecimientos de salud",
        "Compra de insumos básicos",
        "Salida de personas con espectro autista u otra discapacidad mental",
        "Paseo de mascotas",
        "Pago de servicios básicos y gestiones",
        "Asistencia a funeral familiar directo",
        "Proceso de postulación al Sistema de Admisión Escolar",
        "Comparecencia a una citación en virtud de la Ley",
        "Entrega de alimentos a adultos mayores",
        "Proporcionar alimentos en Recinto Penitenciario",
        "Traslado del menor o adolescente al hogar del tutelar",
        "Traslado de padres a establecimientos de Salud",
        "Matrimonio y Unión Civil",
        "Salida de Niños, Niñas y Adolescentes",
        "Permiso de Traslado Interregional",
      ],
    };
  },
  computed:{
    ...mapState("certificateStore",["loading"]),
  },
  methods: {
    ...mapActions("certificateStore", ["sendData"]),
    ...mapMutations("certificateStore", ["setError","setSuccess"]),

    async submit() {
      await this.sendData({
        document: this.rut,
        name: this.name,
        address: "".concat(this.address, ", #", this.ad_number),
        reason: this.permiso,
        email: this.email,
      });
      


    },
  },
  components:{
    resulteAction,
  }
};
</script>

<style scoped>
.square {
  position: absolute;
  background-color: #05007f;
  border-radius: 20px;
  box-shadow: -1px 1px 10px #91109110;
}
.square-1 {
  top: 20%;
  left: 10%;
  height: 80%;
  width: 40%;

  transform: rotate(-7deg);
}
.square-2 {
  top: 20%;
  left: 50%;
  height: 80%;
  width: 40%;
  transform: rotate(7deg);
}
</style>