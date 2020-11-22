import axios from 'axios'

const endPoints = {
    sendUser : "/users"
};



const instance = axios.create({
  baseURL: 'http://localhost:3000',
  timeout: 30000,
});

export { instance, endPoints };
