// Define the number of subjects and slices
nSubjects = 10;
nnSlices = 4;

// Loop over slices
for (slice = 1; slice <= nnSlices; slice++) {
  // Loop over subjects
  for (subject = 1; subject <= nSubjects; subject++) {
    // Skip Slice3 and Slice4 for ID4
    if (subject == 4 && (slice == 3 || slice == 4)) {
      continue;
    }

    // Process the current subject and slice
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(subject, 1) + "_Slice" + IJ.pad(slice, 1) + ".czi";
    print(fileParam); // look at the Log window to see if this is what you expect
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();

    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(subject, 1) + "_Slice" + IJ.pad(slice, 1) + "_mask.roi");
    roiManager("Select", 0);
    run("Set Measurements...", "area mean standard min median area_fraction redirect=None decimal=3");
    run("Measure");
    close();

    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Triangle dark no-reset");
    roiManager("Select", 0);
    roiManager("Deselect");
    roiManager("Delete");
    run("Measure");
    close();
  }
}
