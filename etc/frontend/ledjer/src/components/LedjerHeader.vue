<template>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Ledjer</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Reports</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" @click="$emit('newReport', 'balanceSheet')">Balancesheet</a></li>
              <li><a class="dropdown-item" @click="$emit('newReport', 'balanceSheetEquity')">Balancesheet w/ equity</a></li>
              <li><a class="dropdown-item" @click="$emit('newReport', 'incomeStatement')">Incomestatement</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Graphs</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="#">Some graph 1</a></li>
              <li><a class="dropdown-item" href="#">Some graph 2</a></li>
              <li><a class="dropdown-item" href="#">Some graph 3</a></li>
            </ul>
          </li>
        </ul>

        <!--
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        -->
      </div>
    </div>
  </nav>

</template>

<script>

import { isKnownReport } from './Ledjer.vue'

export default {
  emits: {
    newReport: (reportName) => {
      if (isKnownReport(reportName)) {
        return true
      } else {
        console.error('invalid report name: ' + reportName)
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>