<template>
  <div class="card text-center">
    <div class="card-header fa-2x">
      OUR SERVICES
    </div>
    <div
      class="card-body"
      style="width: 50%; margin-left: auto; margin-right: auto;"
    >
      <table
        class="table table-bordered"
        style="background-color: RGB(47, 137, 252); color: white;"
      >
        <tbody>
          <tr v-for="(item, index) in servicesList" :key="index">
            <th>{{ item.title }}</th>
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
</style>
