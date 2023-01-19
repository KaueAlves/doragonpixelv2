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
                  <select class="form-select" aria-label="">
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
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">STR</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">DEX</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">CON</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">INT</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">WIS</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
                </div>
              </div>
              <div class="col-2">
                <div class="mb-3">
                  <label for="nome" class="form-label">CHA</label>
                  <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp">
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
