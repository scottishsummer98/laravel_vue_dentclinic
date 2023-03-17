<template>
  <div class="card">
    <div class="more_social_front">
      <h4>
        INVOLVEMENT WITH PROFESSIONAL AND SOCIAL ORGANIZATIONS
      </h4>
      <p
        class="mb-3"
        v-for="(item, index) in moreTopicList"
        :key="index"
        style="text-align: justify;"
      >
        <i class="fa-solid fa-hand-holding-heart pr-2"></i>
        {{ item.topic }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      moreTopicList: [],
    }
  },
  computed: {},
  methods: {
    getmoreTopicList() {
      axios
        .post(`/show-moreDetails?topictype=socialwork`)
        .then((response) => {
          this.moreTopicList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getmoreTopicList()
  },
}
</script>

<style>
.more_social_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  padding: 2rem 25rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .more_social_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 2rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .more_social_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 2rem;
  }
}
</style>
