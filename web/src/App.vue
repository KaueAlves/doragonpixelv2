<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import Home from './components/Home.vue'
</script>

<template>
  <div class="container mb-4 mb-md-0">
    <div class="row vh-100 d-flex align-items-center">
      <header class="col-md-6 text-center">
        <div class="row ">
          <div class="col-md-8 ms-auto me-auto ">
            
            <img alt="Doragon Pixel" class="logo ms-auto me-auto mb-4" src="@/assets/pixel/falando-off-export.gif" width="125" height="125" />
            <div class="wrapper">
              <Home msg="Seja bem vindo!" />
              <nav>
                <RouterLink to="/">Início</RouterLink>
                <RouterLink to="/about">Criação</RouterLink>
              </nav>
            </div>
          </div>
        </div>
      </header>
      <div class="col-md-6  d-flex align-items-center">
        <RouterView />
      </div>
    </div>
  </div>
</template>

<style scoped>


.logo {
  display: block;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (min-width: 1024px) {
  nav {
    text-align: left;
    margin-left: -1rem;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
  }
}
</style>
