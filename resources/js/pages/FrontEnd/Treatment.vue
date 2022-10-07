<template>
  <div
    class="card"
    style="
      width: 51%;
      margin-right: auto;
      margin-left: auto;
      margin-top: 10px;
      margin-bottom: 10px;
    "
    v-for="(item, index) in treatmentsList"
    :key="index"
  >
    <div class="card-header fa-2x text-primary border-bottom">
      <h3>{{ item.name }}</h3>
    </div>
    <div class="card-body text-center">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <p style="text-align: justify;">{{ item.description }}</p>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <img
            :src="`storage/${item.beforeOperationImage}`"
            class="img-fluid BeforeOperationImageTable"
          />
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <img
            :src="`storage/${item.afterOperationImage}`"
            class="img-fluid AfterOperationImageTable"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      treatmentsList: [],
    }
  },
  computed: {},
  methods: {
    getTreatmentsList() {
      axios
        .post(`/show-treatments`)
        .then((response) => {
          this.treatmentsList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getTreatmentsList()
  },
}
</script>

<style></style>
