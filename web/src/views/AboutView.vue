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
                  <input type="text" class="form-control" id="nome" v-model="this.personagem.nome"
                    aria-describedby="nomeHelp">
                </div>
              </div>
              <!-- NOME -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="nome" class="form-label">Nível</label>
                  <input type="number" maxlength="2" min="3" max="99" class="form-control" id="nivel"
                    v-model="this.personagem.nivel" aria-describedby="nivelHelp">
                </div>
              </div>
              <!-- CLASSE -->
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Classe</label>
                  <select name="classe" v-model="this.personagem.classe" class="form-select" aria-label="">
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
                  <input type="text" class="form-control" id="sub_classe" v-model="this.personagem.sub_classe"
                    aria-describedby="sub_classeHelp">
                </div>
              </div>
              <!-- RAÇA -->
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Raça</label>
                  <select name="raca" v-model="this.personagem.raça" class="form-select" aria-label="">
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
                  <input type="text" class="form-control" id="sub_raca" v-model="this.personagem.sub_raca"
                    aria-describedby="sub_racaHelp">
                </div>
              </div>
              <!-- Atributos -->
              <div v-for="(atributo, key) in this.personagem.atributos[0]" class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">{{ key }}</label>
                  <input type="number" maxlength="2" min="3" max="99" class="form-control" :value="atributo.valor"
                    id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <!-- Deslocamento -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="deslocamento" class="form-label">Deslocamento</label>
                  <input type="text" v-model="this.personagem.deslocamento" class="form-control" id="iniciativa"
                    aria-describedby="deslocamentoHelp">
                </div>
              </div>
              <!-- CLASSE DE ARMADURA -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="ca" class="form-label">CA</label>
                  <input type="text" v-model="this.personagem.ca" class="form-control" id="ca"
                    aria-describedby="caHelp">
                </div>
              </div>
              <!-- PROFICIENCIA -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="proficiencia" class="form-label">Proficiência</label>
                  <input type="text" v-model="this.personagem.proficiencia" class="form-control" id="ca"
                    aria-describedby="proficienciaHelp">
                </div>
              </div>
              <!-- PONTOS DE VIDA ATUAL -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="hp_atual" class="form-label">HP Atual</label>
                  <input type="number" v-model="this.personagem.hp.atual" class="form-control" id="hp_atual"
                    aria-describedby="hp_atualHelp">
                </div>
              </div>
              <!-- PONTOS DE VIDA MAXIMO-->
              <div class="col-3">
                <div class="mb-3">
                  <label for="hp_max" class="form-label">HP MAX</label>
                  <input type="number" v-model="this.personagem.hp.max" class="form-control" id="hp_max"
                    aria-describedby="hp_maxHelp">
                </div>
              </div>
              <!-- PONTOS DE VIDA TEMPORARIO -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="hp_temp" class="form-label">HP Temporário</label>
                  <input type="number" v-model="this.personagem.hp.temp" class="form-control" id="hp_temp"
                    aria-describedby="hp_tempHelp">
                </div>
              </div>
              <!-- DADOS DE VIDA -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="hp_temp" class="form-label">Hit Dice | {{ this.personagem.hit_dice.valor }}</label>
                  <input type="number" v-model="this.personagem.hit_dice.quant" class="form-control" id="hp_temp"
                    aria-describedby="hp_tempHelp">
                </div>
              </div>
              <!-- INICIATIVA -->
              <div class="col-3">
                <div class="mb-3">
                  <label for="iniciativa" class="form-label">Iniciativa</label>
                  <input type="text" v-model="this.personagem.iniciativa" class="form-control" id="iniciativa"
                    aria-describedby="iniciativaHelp">
                </div>
              </div>
              <!-- DEATH SAVES -->
              <div class="col-12 mb-4">
                <div class="row">
                  <p>DEATH SAVES</p>
                  <div v-for="ds in this.deathSaves" class="form-check col">
                    <div class="form-check">
                      <input class="form-check-input" name="deathSaves[]" type="checkbox"
                        v-model="this.personagem.deathSaves" :value="ds" :id="'flexCheckDefault' + ds">
                      <label class="form-check-label" for="flexCheckDefault">
                        {{ ds }}
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- pericias -->
              <div class="col-12 mb-4">
                <div class="row">
                  <p>PERÍCIAS</p>
                  <div v-for="skill in this.pericias" class="form-check col-6">
                    <div class="form-check">
                      <input class="form-check-input" name="pericias[]" type="checkbox" v-model="this.personagem.pericias"
                        :value="skill" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        {{ skill.nome }}}
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- MAGIAS -->
              <div class="col-6 mb-4">
                <div class="mb-3">
                  <label for="Magias" class="form-label">Magias Disponiveis</label>
                  <select name="raca"  v-model="this.magia_selecionada" class="form-select mb-2" aria-label="">
                    <option  v-for="magia in this.magias" :value="magia.name + ' | ' + magia.level">{{ magia.name }} | lvl {{ magia.level }}</option>
                  </select>
                  <button @click.prevent="this.adicionarAprendidas" class="btn w-100">Adicionar</button>
                </div>
              </div>
              <div class="col-6 mb-4">
                <div class="mb-3">
                  <label for="Magias Aprendidas" class="form-label">Magias Aprendidas</label>
                  <select name="magias_aprendidas[]" v-model="this.magia_aprendida_selecionada" class="form-select mb-2" aria-label="">
                    <option  v-for="magia_aprendida in this.personagem.magia.aprendidas" :value="magia_aprendida">{{ magia_aprendida }}</option>
                  </select>
                  <div class="row">
                    <!-- <div class="col-6"><button @click.prevent="this.adicionarMemorizada" class="btn w-100">Preparar</button></div> -->
                    <div class="col-12"><button @click.prevent="this.removerAprendidas" class="btn w-100">Remover</button></div>
                  </div>
                </div>
              </div>
              <!-- PREPARADAS -->
              <!-- <div class="ms-auto me-auto col-6 mb-4">
                <div class="mb-3">
                  <label for="Magias memorizadas" class="form-label">Magias preparadas</label>
                  <select name="magias_memorizadas[]" v-model="this.magia_memorizada_selecionada" class="form-select mb-2" aria-label="">
                    <option  v-for="magia_memorizada in this.personagem.magia.memorizadas" :value="magia_memorizada">{{ magia_memorizada }}</option>
                  </select>
                  <button @click.prevent="this.removerMemorizada" class="btn w-100">Remover</button>
                </div>
              </div> -->
              <div class="col-12 d-flex text-right"><button type="submit" class="ms-auto btn ">Cadastrar</button></div>
            </div>

          </form>
        </div>
      </div>
      <div class="card text-start bg-default mb-4">
        <div class="card-body">
          {{ this.personagem }}
        </div>
      </div>
    </div>
  </div>
</template>

<style>
@media (min-width: 1024px) {}
</style>

<script lang="ts">
import jsonSpells from "@/assets/spells.json";
export default {
  data() {
    return {
      deathSaves: ['STR', 'DEX', 'CON', 'INT', 'WIS', 'CHA'],
      magias: jsonSpells,
      magia_selecionada: "",
      magia_aprendida_selecionada: "",
      magia_memorizada_selecionada: "",
      pericias: [{
        nome: "Acrobacia",
        valor: 0,
        atributo_base: "DEX"
      },
      {
        nome: "Adestrar Animais",
        valor: 0,
        atributo_base: "WIS"
      },
      {
        nome: "Arcanismo",
        valor: 0,
        atributo_base: "INT"
      },
      {
        nome: "Atletismo",
        valor: 0,
        atributo_base: "STR"
      },
      {
        nome: "Enganação",
        valor: 0,
        atributo_base: "CAR"
      },
      {
        nome: "História",
        valor: 0,
        atributo_base: "INT"
      },
      {
        nome: "Intuição",
        valor: 0,
        atributo_base: "SAB"
      },
      {
        nome: "Intimidação",
        valor: 0,
        atributo_base: "CAR"
      },
      {
        nome: "Investigação",
        valor: 0,
        atributo_base: "INT"
      },
      {
        nome: "Medicina",
        valor: 0,
        atributo_base: "SAB"
      },
      {
        nome: "Natureza",
        valor: 0,
        atributo_base: "INT"
      },
      {
        nome: "Percepção",
        valor: 0,
        atributo_base: "SAB"
      },
      {
        nome: "Atuação",
        valor: 0,
        atributo_base: "CAR"
      },
      {
        nome: "Persuasão",
        valor: 0,
        atributo_base: "CAR"
      },
      {
        nome: "Religião",
        valor: 0,
        atributo_base: "INT"
      },
      {
        nome: "Presdigitação",
        valor: 0,
        atributo_base: "DES"
      },
      {
        nome: "Furtividade",
        valor: 0,
        atributo_base: "DES"
      },
      {
        nome: "Sobrevivência",
        valor: 0,
        atributo_base: "DES"
      }],
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
          valor: "D" + 10
        },
        atributos: [
          {
            "STR": { valor: 10, mod: 0 },
            "DEX": { valor: 10, mod: 0 },
            "CON": { valor: 10, mod: 0 },
            "INT": { valor: 10, mod: 0 },
            "WIS": { valor: 10, mod: 0 },
            "CHA": { valor: 10, mod: 0 },
          }
        ],
        deathSaves: [],
        proficiencia: 2,
        iniciativa: 1,
        ca: 10,
        deslocamento: 30,
        pericias: [],
        magia: {
          slots: {
            "1":1,
            "2":1,
            "3":1,
            "4":1,
            "5":1,
            "6":1,
            "7":1,
            "8":1,
            "9":1,
          },
          memorizadas:[],
          aprendidas:[],
        }
      }
    }
  },
  methods: {
    adicionarAprendidas(e){
      e.preventDefault();
      this.personagem.magia.aprendidas.push(this.magia_selecionada);
    },
    removerAprendidas(e){
      e.preventDefault();
      this.personagem.magia.aprendidas.pop(this.magia_aprendida_selecionada);
    },
    adicionarMemorizada(e){
      e.preventDefault();
      this.personagem.magia.memorizadas.push(this.magia_aprendida_selecionada);
    },
    removerMemorizada(e){
      e.preventDefault();
      this.personagem.magia.memorizadas.pop(this.magia_memorizada_selecionada);
    },
  },
}
</script>