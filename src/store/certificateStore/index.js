import router from "@/router/index.js"
import { instance, endPoints } from "@/api/index";

const state = {
  loading: false,
  error: null,
  success: null,
};
const mutations = {
  setLoading(state, payload) {
    state.loading = payload;
  },
  setError(state, payload) {
    state.error = payload;
  },
  setSuccess(state, payload) {
    state.success = payload;
  },
};

const actions = {
  async sendData({ commit }, payload) {
    commit("setLoading", true);
    commit("setError", null);
    commit("setSuccess", null);

    await instance
      .post(endPoints.sendUser, payload)
      .then(function(response) {
        console.log(response);
        commit("setSuccess", true);
        router.push({ name: 'Permiso', params: {respose: response }})
      })
      .catch(function(error) {
        commit("setError", true);
        console.log(error);
      })
      .finally(function() {
        commit("setLoading", false);
        
      });
  },
};



export const certificateStore = {
  namespaced: true,
  state,
  mutations,
  actions,
};
