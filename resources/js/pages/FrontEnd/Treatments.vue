<template>
  <div class="card" v-for="(item, index) in treatmentsList" :key="index">
    <div class="treatment_front">
      <h3 class="text-primary">{{ item.name }}</h3>
      <div class="row_treatment_front">
        <div class="col1_treatment_front">
          <p style="text-align: justify;">{{ item.description }}</p>
        </div>
        <div class="col2_treatment_front">
          <img
            :src="`storage/${item.beforeOperationImage}`"
            class="img-fluid BeforeOperationImage"
          />
          <img
            :src="`storage/${item.afterOperationImage}`"
            class="img-fluid AfterOperationImage"
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

<style>
.BeforeOperationImage,
.AfterOperationImage {
  padding: 15px;
  border: 1px solid #ededed;
  width: 20rem;
  width: 20rem;
}
.treatment_front {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  padding: 2rem 25rem;
}
.row_treatment_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
}
.col1_treatment_front,
.col2_treatment_front {
  display: flex;
  flex-direction: row;
  width: 50%;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .BeforeOperationImage,
  .AfterOperationImage {
    padding: 15px;
    border: 1px solid #ededed;
    width: 24rem;
    width: 24rem;
  }
  .treatment_front {
    display: flex;
    flex-direction: column;
    gap: 2rem;
    padding: 2rem;
  }
  .row_treatment_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
  .col1_treatment_front,
  .col2_treatment_front {
    display: flex;
    flex-direction: row;
    width: 100%;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .BeforeOperationImage,
  .AfterOperationImage {
    padding: 15px;
    border: 1px solid #ededed;
    width: 24rem;
    width: 24rem;
  }
  .col2_treatment_front {
    display: flex;
    flex-direction: column;
    width: 100%;
  }
}
</style>
