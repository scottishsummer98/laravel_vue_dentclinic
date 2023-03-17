<template>
  <div class="card">
    <div class="misvis_front">
      <div class="col1_misvis_front">
        <h3>OUR MISSION</h3>
        <h4>
          <i class="fa-solid fa-piggy-bank text-primary"></i>
          Cost Efficient
        </h4>
        <p>
          We aim to help our community achieve excellent oral healthcare through
          high quality, multidisciplinary and cost efficient dental services and
          procedures.
        </p>
        <h4>
          <i class="fa-solid fa-tooth text-primary"></i>
          Best Care Dentistry
        </h4>
        <p>
          We are passionate about what we do and we want our patients to feel
          confident that they will receive the best care dentistry has to offer.
        </p>
        <h4>
          <i class="fa-solid fa-atom text-primary"></i>
          High-Tech Dental Facility
        </h4>
        <p>
          It is part of our mission to provide all patients the most effective
          treatment, the best diagnostic technology and high-tech dental
          facility.
        </p>
        <h4>
          <i class="fa-solid fa-thumbs-up text-primary"></i>
          Relationships
        </h4>
        <p>
          Our mission is to develop long-term relationships with our patients
          and to ensure distinguished service through personalized, honest,
          ethical and informed care.
        </p>
      </div>
      <div class="col2_misvis_front">
        <h3>OUR VISION</h3>
        <h4>
          <i class="fa-solid fa-trophy text-primary"></i>
          Leadership
        </h4>
        <p>
          We strive to become the leader in the dental industry by keeping the
          best and consistent practice to dental care while maintaining the
          highest level of customer satisfaction.
        </p>
        <h4>
          <i class="fa-solid fa-hand-holding-heart text-primary"></i>
          Passionate
        </h4>
        <p>
          All our doctors employ passionate team members who not only love what
          they do, but also love the patients they serve.
        </p>
        <h4>
          <i class="fa-solid fa-copyright text-primary"></i>
          Branded clinic
        </h4>
        <p>
          To become a best branded clinic offering superior quality and value
          dental aesthetics, implant and routine dental services in Bangladesh.
        </p>
        <h4>
          <i class="fa-solid fa-building-shield text-primary"></i>
          Modern and Safe Facility
        </h4>
        <p>
          We will maintain a modern and safe facility where dentists can
          practice advancing the quality of dental care our patients can get.
        </p>
      </div>
    </div>
  </div>
</template>

<style>
.misvis_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  padding: 2rem 25rem;
}
.col1_misvis_front,
.col2_misvis_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .misvis_front {
    display: flex;
    flex-direction: row;
    gap: 2rem;
    padding: 2rem;
  }
  .col1_misvis_front,
  .col2_misvis_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .misvis_front {
    display: flex;
    flex-direction: column;
    gap: 2rem;
    padding: 1rem;
  }
  .col1_misvis_front,
  .col2_misvis_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
}
</style>
