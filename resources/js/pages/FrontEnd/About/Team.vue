<template>
  <div class="team_front" v-for="(item, index) in teamList" :key="index">
    <div class="col1_team_front">
      <img
        class="image_team_front"
        :src="`../storage/${item.profilePicture}`"
        alt=""
      />
    </div>
    <div class="col2_team_front">
      <h5>{{ item.name }}</h5>
      <h6>{{ item.desig }}</h6>
      <p style="text-align: justify; font-size: medium; font-family: Tahoma;">
        {{ item.bio }}
      </p>
      <p class="soclinks_col2_team_front">
        <a :href="`${item.fblink}`">
          <i class="fa-brands fa-facebook"></i>
        </a>
        <a :href="`${item.twitterlink}`">
          <i class="fa-brands fa-twitter"></i>
        </a>
        <a :href="`${item.linkedinlink}`">
          <i class="fa-brands fa-linkedin"></i>
        </a>
        <a :href="`${item.gmaillink}`">
          <i class="fa-brands fa-google-plus-g"></i>
        </a>
      </p>
    </div>
  </div>
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
.image_team_front {
  width: 20rem;
  height: 20rem;
}
.team_front {
  display: flex;
  flex-direction: row;
  gap: 1rem;
  padding: 2rem 25rem;
}
.col1_team_front,
.col2_team_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}
.soclinks_col2_team_front {
  display: flex;
  flex-direction: row;
  gap: 1rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
}
</style>
