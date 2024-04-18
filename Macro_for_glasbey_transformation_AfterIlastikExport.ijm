// FOR C1---------------------------GFAP

nSubjects = 6;
nnSlices = 4;

// Loop over subjects and slices
for (subject = 1; subject <= nSubjects; subject++) {
  // Adjust the loop range for Subject 4
  if (subject == 4) {
    nSlicesForSubject = 2; // Subject 4 has only 2 slices
  } else {
    nSlicesForSubject = nnSlices;
  }

  for (slice = 1; slice <= nSlicesForSubject; slice++) {
    // Open the segmentation image corresponding to the current subject and slice
    open("D:/Microscopy/QUINT/C1_GFAP/ID" + subject + "/C1-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + "_Simple Segmentation.png");

    // Apply the Glasbey LUT
    run("glasbey");

    // Save the segmented image
    saveAs("PNG", "D:/Microscopy/QUINT/C1_GFAP/ID" + subject + "/segmentation/C1-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + ".png");

    // Close the image
    close();
  }
}


// FOR C2-----------------------------IBA
nSubjects = 6;
nnSlices = 4;

// Loop over subjects and slices
for (subject = 1; subject <= nSubjects; subject++) {
  // Adjust the loop range for Subject 4
  if (subject == 4) {
    nSlicesForSubject = 2; // Subject 4 has only 2 slices
  } else {
    nSlicesForSubject = nnSlices;
  }

  for (slice = 1; slice <= nSlicesForSubject; slice++) {
    // Open the segmentation image corresponding to the current subject and slice
    open("D:/Microscopy/QUINT/C2_IBA/ID" + subject + "/C2-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + "_Simple Segmentation.png");

    // Apply the Glasbey LUT
    run("glasbey");

    // Save the segmented image
    saveAs("PNG", "D:/Microscopy/QUINT/C2_IBA/ID" + subject + "/segmentation/C2-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + ".png");

    // Close the image
    close();
  }
}