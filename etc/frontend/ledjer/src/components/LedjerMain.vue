<template>

  <main class="container">
    
        <!-- Just to make vertical spacing work. TODO: improve this! -->
        <div class="py-3"></div>

        <div class="starter-template text-center py-5 px-3">
        
            <ul class="nav nav-tabs" id="myTab" role="tablist">

              <li v-for="report in reports" :key="report" class="nav-item" role="presentation">
                <button class="nav-link" :id="report + '-tab'" data-bs-toggle="tab" :data-bs-target="'#' + report" type="button" role="tab" :aria-controls="report" aria-selected="false">
                  {{ report }}
                </button>
              </li>

            </ul>

            <div class="tab-content" id="myTabContent">
              <div v-for="report in reports" :key="report" :id="report" class="tab-pane fade" role="tabpanel">
                {{ report }}
              </div>
            </div>

        </div>


  </main>
    
</template>

<script>

export default {
  props: {
    reports: Array
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>