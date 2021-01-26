import axios from 'axios'

const endPoints = {
    sendUser : "/users"
};



const instance = axios.create({
  baseURL: 'http://35.247.244.102',
  timeout: 30000,
});

export { instance, endPoints };
