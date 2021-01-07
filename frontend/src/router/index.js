import Vue from 'vue'
import VueRouter from 'vue-router'
import home from '@/views/Home'
import tramite from '@/views/Tramite'
import permiso from '@/views/Permiso'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Inicio',
    component: home
  },
  {
    path: '/app',
    name: 'Tramite',
    component: tramite
  },
  {
    path: '/permiso',
    name: 'Permiso',
    component: permiso,
    props: true
  },
  
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
