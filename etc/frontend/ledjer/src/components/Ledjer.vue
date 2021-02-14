<template>
  <div>

    <LedjerHeader @newReport="addReport($event)" />

    <LedjerMain v-bind:reports="['a', 'b']" />

  </div>
</template>

<script>

var knownReports = [ 'balanceSheet', 'balanceSheetEquity', 'incomeStatement' ]

const isKnownReport = (r) => {
    return knownReports.includes(r)
}

export { isKnownReport }

import LedjerHeader from './LedjerHeader.vue'
import LedjerMain from './LedjerMain.vue'

export default {
  components: { LedjerHeader, LedjerMain },
  methods: {
    addReport(reportName) {
      console.log("I shall add " + reportName)
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
