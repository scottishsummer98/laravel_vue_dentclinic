<template>
  <section class="section" style="margin-top: 2rem;">
    <div class="container">
      <div
        class="row"
        style="border-top: 2px solid black;"
        v-for="(item, index) in teamList"
        :key="index"
      >
        <div class="col-lg-3 col-md-3 col-sm-3">
          <img
            class="img-fluid"
            style="margin: 1rem; width: 30rem; height: 20rem;"
            :src="`../storage/${item.profilePicture}`"
            alt=""
          />
        </div>
        <div
          class="col-lg-8 col-md-8 col-sm-8"
          style="
            text-align: justify;
            margin: 1rem;
            font-size: medium;
            font-family: Tahoma;
          "
        >
          <h5>{{ item.name }}</h5>
          <h6>{{ item.desig }}</h6>
          <p style="height: 14rem;">
            {{ item.bio }}
          </p>
          <ul>
            <li style="padding-right: 2rem;">
              <a :href="`${item.fblink}`">
                <i class="fa-brands fa-facebook"></i>
              </a>
            </li>
            <li style="padding-right: 2rem;">
              <a :href="`${item.twitterlink}`">
                <i class="fa-brands fa-twitter"></i>
              </a>
            </li>
            <li style="padding-right: 2rem;">
              <a :href="`${item.linkedinlink}`">
                <i class="fa-brands fa-linkedin"></i>
              </a>
            </li>
            <li>
              <a :href="`${item.gmaillink}`">
                <i class="fa-brands fa-google-plus-g"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1"></div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      teamList: [],
    }
  },
  methods: {
    getTeamsList() {
      axios
        .post(`/show-teams`)
        .then((response) => {
          this.teamList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getTeamsList()
  },
}
</script>

<style>
ul li {
  display: inline;
}
</style>
