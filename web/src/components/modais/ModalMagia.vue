<template>
  <!-- Button trigger modal -->
  <button
    type="button"
    class="btn btn-primary"
    data-bs-toggle="modal"
    data-bs-target="#modalMagias"
  >
    Lista de Magias
  </button>

  <!-- Modal -->
  <div
    class="modal fade modal-fullscreen"
    id="modalMagias"
    tabindex="-1"
    aria-labelledby="modalMagiasLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-fullscreen">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title white" id="modalMagiasLabel">Modal title</h5>
          <button
            type="button"
            class="btn-close"
            data-bs-dismiss="modal"
            aria-label="Close"
          ></button>
        </div>
        <div class="modal-body">
          <div class="row table-responsive">
            <div class="col-12">
              <table class="table table-dark table-striped">
                <thead class="thead">
                  <th>Name</th>
                  <th>School</th>
                  <th>Casting Time</th>
                  <th>Range</th>
                  <th>Duration</th>
                  <th>Components</th>
                  <th>Description</th>
                </thead>
                <tbody>
                  <tr class="" v-for="magia in magias" :key="magia.name">
                    <td class="">{{ magia.name }}</td>
                    <td class="">{{ magia.school }}</td>
                    <td class="">{{ magia.casting_time }}</td>
                    <td class="">{{ magia.range }}</td>
                    <td class="">{{ magia.duration }}</td>
                    <td class="">{{ magia.components.raw }}</td>
                    <td class="">{{ magia.description }}</td>
                    <td>
                      <button @click.prevent="adicionarMagia" class="btn">
                        +
                      </button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button
            @click.prevet="console.log('eba')"
            type="button"
            class="btn btn-secondary"
            data-bs-dismiss="modal"
          >
            Fechar
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import jsonSpells from "@/assets/spells.json";
export default {
  data() {
    return {
      magias: jsonSpells,
    };
  },
  methods: {
    adicionarMagia() {
      console.log("tresd");
    },
  },
};
</script>
<style>
.modal-content {
  background-color: transparent !important;
}
</style>
