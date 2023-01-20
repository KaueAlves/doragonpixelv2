<template>
  <div class="about container">
    <div class="row">
      <div class="card text-start bg-default">
        <div class="card-body">
          <h4 class="card-title">Personagem</h4>
          <form>
            <div class="row">
              <div class="col-12">
                <div class="mb-3">
                  <label for="nome" class="form-label">Nome do Personagem</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Classe</label>
                  <select name="classe" class="form-select" aria-label="">
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
              <div class="col-6">
                <div class="mb-3">
                  <label for="nome" class="form-label">Raça</label>
                  <select name="raca" class="form-select" aria-label="">
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
              <!-- Atributos -->
              <div v-for="(atributo,key) in atributos[0]" class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">{{ key }}</label>
                  <input type="text" class="form-control" :value="atributo" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <!-- DEATH SAVES -->
              <div class="col-12 mb-4">
                <div class="row">
                  <p>DEATH SAVES</p>
                  <div v-for="ds in deathSaves" class="form-check col" >
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        {{ ds }}
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- SKILLS -->
              <div class="col-12">
                <div class="row">
                  <p>PERÍCIAS</p>
                  <div v-for="skill in skills" class="form-check col-6" >
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" :value="skill.nome" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        {{ skill.nome }}
                      </label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-12 d-flex text-right"><button type="submit" class="ms-auto btn ">Cadastrar</button></div>
            </div>
            
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
@media (min-width: 1024px) {
 
}
</style>

<script lang="ts">
  export default{
    data(){
      return {
        atributos: [
          {
          "STR":10,
          "DEX":10,
          "CON":10,
          "INT":10,
          "WIS":10,
          "CHA":10,
          }
        ],
        deathSaves: ['STR','DEX','CON','INT','WIS','CHA'],
        proficiencia: 2,
        iniciativa: 1,
        skills:     [
          {
            nome:"Acrobacia",
            valor: 0,
            atributo_base: "DEX"
          },
          {
            nome:"Adestrar Animais",
            valor: 0,
            atributo_base: "WIS"
          },
          {
            nome:"Arcanismo",
            valor: 0,
            atributo_base: "INT"
          },
          {
            nome:"Atletismo",
            valor: 0,
            atributo_base: "STR"
          },
          {
            nome:"Enganação",
            valor: 0,
            atributo_base: "CAR"
          },
          {
            nome:"História",
            valor: 0,
            atributo_base: "INT"
          },
          {
            nome:"Intuição",
            valor: 0,
            atributo_base: "SAB"
          },
          {
            nome:"Intimidação",
            valor: 0,
            atributo_base: "CAR"
          },
          {
            nome:"Investigação",
            valor: 0,
            atributo_base: "INT"
          },
          {
            nome:"Medicina",
            valor: 0,
            atributo_base: "SAB"
          },
          {
            nome:"Natureza",
            valor: 0,
            atributo_base: "INT"
          },
          {
            nome:"Percepção",
            valor: 0,
            atributo_base: "SAB"
          },
          {
            nome:"Atuação",
            valor: 0,
            atributo_base: "CAR"
          },
          {
            nome:"Persuasão",
            valor: 0,
            atributo_base: "CAR"
          },
          {
            nome:"Religião",
            valor: 0,
            atributo_base: "INT"
          },
          {
            nome:"Presdigitação",
            valor: 0,
            atributo_base: "DES"
          },
          {
            nome:"Furtividade",
            valor: 0,
            atributo_base: "DES"
          },
          {
            nome:"Sobrevivência",
            valor: 0,
            atributo_base: "DES"
          },
        ],
        spells:     [{}]
      }
    }
  }
</script>