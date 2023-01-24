<template>
  <div class="about container">
    <div class="row">
      <div class="card text-start bg-default mb-4">
        <div class="card-body">
          <h4 class="card-title">Personagem</h4>
          <form>
            <div class="row">
              <!-- NOME -->
              <div class="col-9">
                <div class="mb-3">
                  <label for="nome" class="form-label">Nome do Personagem</label>
                  <input type="text" class="form-control" id="nome" v-model="personagem.nome"
                    aria-describedby="nomeHelp" />
                </div>
              </div>
              <!-- NIVEL -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="nome" class="form-label">Nível</label>
                  <input type="number" maxlength="2" min="3" max="99" class="form-control" id="nivel"
                    v-model="personagem.nivel" aria-describedby="nivelHelp" />
                </div>
              </div>
              <!-- CLASSE -->
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Classe</label>
                  <select name="classe" v-model="personagem.classe" class="form-select" aria-label="">
                    <option selected>Escolha sua classe</option>
                    <option value="Barbarian">Barbarian</option>
                    <option value="Bard">Bard</option>
                    <option value="Cleric">Cleric</option>
                    <option value="Druid">Druid</option>
                    <option value="Fighter">Fighter</option>
                    <option value="Monk">Monk</option>
                    <option value="Paladin">Paladin</option>
                    <option value="Ranger">Ranger</option>
                    <option value="Ladino">Ladino</option>
                    <option value="Sorcerer">Sorcerer</option>
                    <option value="Warlock">Warlock</option>
                    <option value="Wizard">Wizard</option>
                    <option value="Artificer">Artificer</option>
                    <option value="Blood Hunter">Blood Hunter</option>
                  </select>
                </div>
              </div>
              <!-- SUBCLASSE -->
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Sub-Classe</label>
                  <input type="text" class="form-control" id="sub_classe" v-model="personagem.sub_classe"
                    aria-describedby="sub_classeHelp" />
                </div>
              </div>
              <!-- RAÇA -->
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Raça</label>
                  <select name="raca" v-model="personagem.raça" class="form-select" aria-label="">
                    <option selected>Escolha sua raça</option>
                    <option value="Dragonborn">Dragonborn</option>
                    <option value="Dwarf">Dwarf</option>
                    <option value="Elf">Elf</option>
                    <option value="Druid">Gnome</option>
                    <option value="Fighter">Half-Elf</option>
                    <option value="Halfling">Halfling</option>
                    <option value="Half-Orc">Half-Orc</option>
                    <option value="Human">Human</option>
                    <option value="Tiefling">Tiefling</option>
                    <option value="Satyr">Satyr</option>
                  </select>
                </div>
              </div>
              <!-- SUBRAÇA -->
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Sub-Raça</label>
                  <input type="text" class="form-control" id="sub_raca" v-model="personagem.sub_raca"
                    aria-describedby="sub_racaHelp" />
                </div>
              </div>
              <!-- Atributos -->
              <div v-for="(atributo, key) in personagem.atributos[0]" class="col-2 mb-4">
                <div class="mb-3">
                  <label for="nome" class="form-label">{{ key }}</label>
                  <input type="number" maxlength="2" min="3" max="99" class="form-control" :value="atributo.valor"
                    id="nome" aria-describedby="nomeHelp" />
                </div>
              </div>
              <div class="col-12 mb-4">
                <div class="row">
                  <!-- Deslocamento -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="deslocamento" class="form-label">Deslocamento</label>
                      <input type="text" v-model="personagem.deslocamento" class="form-control" id="iniciativa"
                        aria-describedby="deslocamentoHelp" />
                    </div>
                  </div>
                  <!-- CLASSE DE ARMADURA -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="ca" class="form-label">CA</label>
                      <input type="text" v-model="personagem.ca" class="form-control" id="ca"
                        aria-describedby="caHelp" />
                    </div>
                  </div>
                  <!-- PROFICIENCIA -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="proficiencia" class="form-label">Proficiência</label>
                      <input type="text" v-model="personagem.proficiencia" class="form-control" id="ca"
                        aria-describedby="proficienciaHelp" />
                    </div>
                  </div>
                  <!-- PONTOS DE VIDA ATUAL -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="hp_atual" class="form-label">HP Atual</label>
                      <input type="number" v-model="personagem.hp.atual" class="form-control" id="hp_atual"
                        aria-describedby="hp_atualHelp" />
                    </div>
                  </div>
                  <!-- PONTOS DE VIDA MAXIMO-->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="hp_max" class="form-label">HP MAX</label>
                      <input type="number" v-model="personagem.hp.max" class="form-control" id="hp_max"
                        aria-describedby="hp_maxHelp" />
                    </div>
                  </div>
                  <!-- PONTOS DE VIDA TEMPORARIO -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="hp_temp" class="form-label">HP Temporário</label>
                      <input type="number" v-model="personagem.hp.temp" class="form-control" id="hp_temp"
                        aria-describedby="hp_tempHelp" />
                    </div>
                  </div>
                  <!-- DADOS DE VIDA -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="hp_temp" class="form-label">Hit Dice | {{ personagem.hit_dice.valor }}</label>
                      <input type="number" v-model="personagem.hit_dice.quant" class="form-control" id="hp_temp"
                        aria-describedby="hp_tempHelp" />
                    </div>
                  </div>
                  <!-- INICIATIVA -->
                  <div class="col-3">
                    <div class="mb-3">
                      <label for="iniciativa" class="form-label">Iniciativa</label>
                      <input type="text" v-model="personagem.iniciativa" class="form-control" id="iniciativa"
                        aria-describedby="iniciativaHelp" />
                    </div>
                  </div>
                </div>
              </div>
              <!-- DEATH SAVES -->
              <div class="col-12 mb-4">
                <div class="row">
                  <p>DEATH SAVES</p>
                  <div v-for="ds in deathSaves" class="form-check col" v-bind:key="ds">
                    <div class="form-check">
                      <input class="form-check-input" name="deathSaves[]" type="checkbox"
                        v-model="personagem.deathSaves" :value="ds" :id="'flexCheckDefault' + ds" />
                      <label class="form-check-label" for="flexCheckDefault">
                        {{ ds }}
                      </label>
                    </div>
                  </div>
                </div>
              </div>

              <!-- pericias -->


                <p>PERÍCIAS</p>
                <div class="row mb-4">
                  <div v-for="skill in pericias" class="form-check col-6">
                    <div class="form-check">
                      <input class="form-check-input" name="pericias[]" type="checkbox" v-model="personagem.pericias"
                        :value="skill" id="flexCheckDefault" />
                      <label class="form-check-label" for="flexCheckDefault">
                        {{ skill.nome }}
                      </label>
                    </div>
                  </div>
                </div>
    

              <div class="col-12 mb-4">
                <div class="row">
                  <div v-if="personagem.magia.aprendidas[0]" class="card mb-4 pt-4 pb-4 bg-default mb-4 col-12">
                    <p class="mb-0">MAGIAS</p>
                    <ul class="mt-2 mb-2 row">
                      <li class="col-md-6" v-for="(ma, index) in personagem.magia.aprendidas" v-bind:key="index">
                        {{ ma.name }}
                      </li>
                    </ul>
                  </div>

                  <modalMagias @adicionarMagia="adicionarMagias" @removerMagia="removerMagias"
                    :magias_aprendidas="personagem.magia.aprendidas" />
                </div>
              </div>
              <div class="col-12 d-flex text-right">
                <!-- Magias -->
              </div>
            </div>
          </form>
        </div>
      </div>

    </div>
  </div>
</template>

<style>
@media (min-width: 1024px) {}
</style>

<script lang="ts">
import jsonSkills from "@/assets/skills.json";
import modalMagias from "@/components/modais/ModalMagia.vue";
import { throwStatement } from "@babel/types";
export default {
  components: {
    modalMagias,
  },
  data() {
    return {
      deathSaves: ["STR", "DEX", "CON", "INT", "WIS", "CHA"],
      pericias: jsonSkills,
      personagem: {
        nome: "",
        nivel: 1,
        classe: "",
        sub_classe: "",
        raca: "",
        sub_raca: "",
        hp: {
          atual: 10,
          max: 10,
          temp: 0,
        },
        hit_dice: {
          quant: 1,
          valor: "D" + 10,
        },
        atributos: [
          {
            STR: { valor: 10, mod: 0 },
            DEX: { valor: 10, mod: 0 },
            CON: { valor: 10, mod: 0 },
            INT: { valor: 10, mod: 0 },
            WIS: { valor: 10, mod: 0 },
            CHA: { valor: 10, mod: 0 },
          },
        ],
        deathSaves: [],
        proficiencia: 2,
        iniciativa: 1,
        ca: 10,
        deslocamento: 30,
        pericias: [],
        magia: {
          memorizadas: [],
          aprendidas: [],
          slots: {
            "1": 1,
            "2": 1,
            "3": 1,
            "4": 1,
            "5": 1,
            "6": 1,
            "7": 1,
            "8": 1,
            "9": 1,
          },
        },
      },
    };
  },
  methods: {
    adicionarMagias(magia: Object) {
      if (!this.personagem.magia.aprendidas.includes(magia)) {
        this.personagem.magia.aprendidas.push(magia);
      }
    },
    removerMagias(magia: Object) {
      this.arrayRemove(this.personagem.magia.aprendidas, magia);
    },
    arrayRemove(arr: Array<Object>, value: Object) {
      this.personagem.magia.aprendidas = arr.filter(function (ele) {
        return ele != value;
      });
    },
  },
};
</script>
