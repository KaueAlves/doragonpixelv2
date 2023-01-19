<script setup lang="ts">
defineProps<{
  msg: string
}>()
</script>

<template>
  <div class="greetings">
    <h2 class="roxo">{{ msg }}</h2>
    <h3>
      Primeira etapa do projeto é a criação de um gerador de personagens de D&D 5e.
    </h3>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  top: -10px;
}

h3 {
  font-size: 1.2rem;
}

.greetings h1,
.greetings h2,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {
.greetings h1,
.greetings h2,
.greetings h3 {
    text-align: left;
  }
}
</style>
