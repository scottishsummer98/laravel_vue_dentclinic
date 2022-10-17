<template>
  <div
    style="
      width: 50%;
      margin-right: auto;
      margin-left: auto;
      margin-top: 2rem;
      margin-bottom: 2rem;
    "
  >
    <h4 style="padding-bottom: 2rem;">
      INVOLVEMENT WITH PROFESSIONAL ORGANIZATIONS
    </h4>
    <p
      class="mb-3"
      v-for="(item, index) in moreTopicList"
      :key="index"
      style="text-align: justify;"
    >
      <i class="fa-solid fa-pen-nib pr-2"></i>
      {{ item.topic }}
    </p>
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

<style></style>
