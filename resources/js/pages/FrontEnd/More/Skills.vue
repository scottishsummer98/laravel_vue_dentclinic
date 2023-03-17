<template>
  <div class="more_skills_front">
    <h4>SKILLS</h4>
    <div class="row1_more_skills_front">
      <div class="col1_more_skills_front">
        <p style="text-align: justify;">
          Obtaining the Fellowship award from Japan Dental Association in 1990
          Dr. Nasir Uddin got admission in Advanced Surgical Study Program in
          The Department of Oral and Maxillofacial Surgery at Osaka University,
          Japan and awarded Diploma in Oral and Maxillofacial Surgery. The
          Advanced Surgical Study Program was designed for clinical training in:
        </p>
        <div class="points_col1_more_skills_front">
          <i class="fa-brands fa-squarespace" style="padding-bottom: 1rem;"></i>
          Benign and malignant tumour of facial region
        </div>
        <div class="points_col1_more_skills_front">
          <i class="fa-brands fa-squarespace" style="padding-bottom: 1rem;"></i>
          Maxillofacial trauma
        </div>
        <div class="points_col1_more_skills_front">
          <i class="fa-brands fa-squarespace" style="padding-bottom: 1rem;"></i>
          Maxillofacial reconstructions
        </div>
        <div class="points_col1_more_skills_front">
          <i class="fa-brands fa-squarespace" style="padding-bottom: 1rem;"></i>
          Cleft lip and palate
        </div>
        <div class="points_col1_more_skills_front">
          <i class="fa-brands fa-squarespace" style="padding-bottom: 1rem;"></i>
          Surgical orthodontics
        </div>
      </div>
      <div class="col2_more_skills_front">
        <img
          class="image_more_skills_front"
          src="../../../../../public/images/skills_bg.jpg"
          alt=""
        />
      </div>
    </div>
    <div class="row2_more_skills_front">
      <p style="text-align: justify;">
        His training in Distraction Osteogenesis from India under renowned
        maxillofacial surgeon Prof. Dr. Asish Kumar Ghosh, gave him opportunity
        to be the pioneer of instituting mandibular lengthening surgery in
        Bangladesh.
      </p>
      <p style="text-align: justify;">
        In 2010 he obtained Master of Surgery degree (University of Dhaka) in
        Oral and Maxillofacial Surgery.
      </p>
      <p style="text-align: justify;">
        He had training in Facial Plastic and Reconstructive Surgery in 2012,
        2013 and 2014 from the Hospital for Sick Children, University of
        Toronto, Canada.
      </p>
    </div>
  </div>
</template>

<script>
export default {
  data() {},
  computed: {},
  methods: {},
  mounted() {},
}
</script>

<style>
.more_skills_front {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  padding: 2rem 25rem;
}
.row1_more_skills_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
}
.row2_more_skills_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
}
.col1_more_skills_front,
.col2_more_skills_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}
.points_col1_more_skills_front {
  display: flex;
  flex-direction: row;
  gap: 1rem;
}
.image_more_skills_front {
  width: 25rem;
  height: 20rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .more_skills_front {
    display: flex;
    flex-direction: column;
    gap: 2rem;
    padding: 2rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .more_skills_front {
    display: flex;
    flex-direction: column;
    gap: 2rem;
    padding: 2rem;
  }
  .row1_more_skills_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
  .row2_more_skills_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
  .image_more_skills_front {
    width: 21rem;
    height: 18rem;
  }
}
</style>
