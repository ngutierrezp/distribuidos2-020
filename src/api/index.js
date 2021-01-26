import axios from 'axios'

const endPoints = {
    sendUser : "/users"
};



const instance = axios.create({
  baseURL: 'https://app.worldgovt.ml',
  timeout: 30000,
});

export { instance, endPoints };
