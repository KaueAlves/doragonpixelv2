<script setup lang="ts">
import TimelineItem from './TimelineItem.vue'
import DocumentationIcon from './icons/IconDocumentation.vue'
import ToolingIcon from './icons/IconTooling.vue'
import EcosystemIcon from './icons/IconEcosystem.vue'
import CommunityIcon from './icons/IconCommunity.vue'
import SupportIcon from './icons/IconSupport.vue'
</script>

<template>
  <TimelineItem>
    <template #icon>
      <SupportIcon />
    </template>
    <template #heading>Role seus dados!</template>
      Role os dados 1 vez, e guarde esses valores, eles serão utilizados futuramente. Caso tenha tirado algum dado com o valor abaixo de 8, converse com o Mestre.
    <br/><br/>
    <button class="btn me-4 ps-3 pe-3" @click="rolarDados">{{ msg_dados }}</button> <span id="dados_valores" class="border p-2 border-1">{{ atributos_dnd.d1 }} {{ atributos_dnd.d2 }} {{ atributos_dnd.d3 }} {{ atributos_dnd.d4 }} {{ atributos_dnd.d5 }} {{ atributos_dnd.d6 }}</span>
    <div v-if="alert_dados" class="alert alert-secondary mt-4" role="alert">
      Os valores foram salvos, cole onde desejar.
    </div>
  </TimelineItem>

  <TimelineItem>
    <template #icon>
      <DocumentationIcon />
    </template>
    <template #heading>Escolha sua classe.</template>

    A classe é sua profissão/especialização no mundo de D&D.<br>
    <a target="_blank" href="https://www.dndbeyond.com/classes">Lista de Classes</a>
  </TimelineItem>

  <TimelineItem>
    <template #icon>
      <DocumentationIcon />
    </template>
    <template #heading>Escolha sua raça.</template>

    Humano, Elfo, Anão, Orc... As raças tem suas vantagens e desvantagens, então de uma olhada na lista e veja a que mais te agrada.

    <br />

    <a target="_blank" href="https://www.dndbeyond.com/races">Lista de Raças</a>
  </TimelineItem>

  <TimelineItem>
    <template #icon>
      <DocumentationIcon />
    </template>
    <template #heading>Escolha seu background.</template>
    Seu personagem já tem uma bagagem, mesmo sendo um personagem nvl 1. 
    Essas experiencias te fazem ter algumas vantagens. Escolha um dos backgrounds pré-definidos, ou converse com o Mestre para alinhar quais serão suas vantagens.
    <br/>
    <a target="_blank" href="https://www.dndbeyond.com/backgrounds">Lista de Backgrounds</a>
    
  </TimelineItem>
 
  <TimelineItem>
    <template #icon>
      <DocumentationIcon />
    </template>
    <template #heading>Descreva seu personagem!</template>
    Crie uma história, simples, levemente genérica, que case com seu background e com o nível do seu personagem. Como seu personagem é fisicamente? Ele tem manias? Medos? Qual é o seu objetivo ?
    anote tudo e envie para o Mestre verificar se você deve alterar algo.
    
  </TimelineItem>

  <TimelineItem>
    <template #icon>
      <SupportIcon />
    </template>
    <template #heading>Prepare-se para montar a ficha.</template>
    O D&D tem uma ficha padrão, é um modelo pronto para receber todos os elementos de um personagem. Para preencher a ficha é fácil. Coloque os atributos, adicione tudo o que for especificado na sua classe, adicione tudo o que for especificado em sua raça, adicione as vantagens do background.
    
    <br/>Seu personagem está pronto!
  </TimelineItem>
</template>

<script lang="ts">
export default {
  data() {
    return {
      msg_dados: "Rolar os dados",
      alert_dados: false,
      atributos_dnd: {
        d1: 15,
        d2: 14,
        d3: 12,
        d4: 12,
        d5: 10,
        d6: 8
      }
    }
  },
  mounted() {
  },
  methods: {
    rolarDados(){
      if(this.msg_dados == "Rolar os dados"){
        let atributos = ["d1","d2","d3","d4","d5","d6"];
        atributos.forEach(atributo => {
          let roll1 = parseInt(Math.random()*6) + 1;
          let roll2 = parseInt(Math.random()*6) + 1;
          let roll3 = parseInt(Math.random()*6) + 1;
          let roll4 = parseInt(Math.random()*6) + 1;
          let tmpArr = [roll1,roll2,roll3,roll4].sort((a, b) => a - b);
          this.atributos_dnd[atributo] = (tmpArr[3] + tmpArr[2] + tmpArr[1]);
        });
        this.msg_dados = "Salve os Valores";
      }else{
        navigator.clipboard.writeText(JSON.stringify(this.atributos_dnd));
        this.alert_dados = !this.alert_dados;
      }
    },
  }
}
</script>