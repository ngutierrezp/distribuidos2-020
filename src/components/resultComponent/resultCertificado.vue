<template>
  <v-row justify="center">
    <v-dialog v-model="local" max-width="30%">
      <v-card v-if="error">
        <v-spacer class="py-2"></v-spacer>

        <div
          class="swal2-icon swal2-error swal2-animate-error-icon my-1"
          style="display: flex"
        >
          <span class="swal2-x-mark">
            <span class="swal2-x-mark-line-left"></span>
            <span class="swal2-x-mark-line-right"></span>
          </span>
        </div>
        <v-card-title class="headline color-error justify-center"
          >Error!</v-card-title
        >
        <v-card-text class="text-center font-weight-light title"
          >No se ha podido generar el certificado</v-card-text
        >

        <v-card-text>
          <v-row justify="center">
            <v-btn color="red darken-1" outlined @click="setError(false)"
              >Cerrar</v-btn
            >
          </v-row>
        </v-card-text>
      </v-card>
    </v-dialog>
  </v-row>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      dialog: false,
    };
  },
  computed: {
    ...mapState("certificateStore", ["error"]),

    local(){
      return this.localError ? true : false;
    },
    localError: {
      get: function () {
        return this.error;
      },
      set: function () {
        return this.setError(!this.error);
      },
    },
  },
  methods: {
    ...mapMutations("certificateStore", ["setError","setSuccess"]),
  },
};
</script>


<style>
@import "../../assets/css/errorAndSuccess.scss";
.color-error {
  color: #f27474 !important;
}
.color-success {
  color: #a5dc86;
}
</style>
