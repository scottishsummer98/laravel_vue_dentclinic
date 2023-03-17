<template>
  <div class="card">
    <div class="services_front">
      <h3 class="text-center">OUR SERVICES</h3>
      <table
        class="table table-bordered mt-2"
        style="background-color: RGB(47, 137, 252); color: white;"
      >
        <tbody>
          <tr v-for="(item, index) in servicesList" :key="index">
            <th>{{ item.type }}</th>
            <td>{{ item.price }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      servicesList: [],
    }
  },
  computed: {},
  methods: {
    getServicesList() {
      axios
        .post(`/show-services`)
        .then((response) => {
          this.servicesList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getServicesList()
  },
}
</script>

<style>
.table-bordered td {
  background-color: white;
  color: black;
}
.table-bordered td:hover {
  background-color: RGB(47, 137, 252);
  color: white;
}
.services_front {
  display: flex;
  flex-direction: column;
  padding: 2rem 25rem;
}

/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .services_front {
    display: flex;
    flex-direction: column;
    padding: 2rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .services_front {
    display: flex;
    flex-direction: column;
    padding: 1rem;
  }
}
</style>
