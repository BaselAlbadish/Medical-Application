import 'package:flutter/material.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';

import '../widgets/cards/Basic_Info/card_basic_info.dart';
import '../widgets/cards/Contact_Info/card_contact_info.dart';
import '../widgets/cards/Summary/card_summary.dart';
import '../widgets/cards/course/card_courses.dart';
import '../widgets/cards/education/card_education.dart';
import '../widgets/cards/experience/card_experience.dart';
import '../widgets/cards/recommendation/card_recommendations.dart';
import '../widgets/cards/skill/card_skills.dart';

List<Widget> getCards(ProfileStore store) {
  return [
    CardBasicInfo(
        profile: store.individualProfile!,
        levelColor: Colors.blue),
    CardSummary(
      store: store,
    ),
    CardContactInfo(profile: store.individualProfile!),
    CardExperience(),
    const CardSkills(),
    const CardEducations(),
    CardCourses(),
    const CardRecommendations(),
  ];
}
