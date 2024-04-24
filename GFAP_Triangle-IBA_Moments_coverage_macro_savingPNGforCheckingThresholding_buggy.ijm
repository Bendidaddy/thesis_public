// Loop for IDs 1 to 9, Slices 1 and 2
for (Y = 1; Y <= 2; Y++) {
  for (X = 1; X <= 9; X++) {
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
    print(fileParam);
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();
    
    run("Enhance Contrast", "saturated=0.35");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
    roiManager("Select", 0);
    run("Set Measurements...", "area mean standard min median area_fraction redirect=None decimal=3");
    run("Measure");
    saveAs("PNG", "D:/Microscopy/Fiji_thresholding_export/Measure1_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".png");
    close();

    run("Enhance Contrast", "saturated=0.35");
    setAutoThreshold("Triangle dark no-reset");
    roiManager("Select", 0);
    roiManager("Deselect");
    roiManager("Delete");
    run("Measure");
    saveAs("PNG", "D:/Microscopy/Fiji_thresholding_export/Measure2_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".png");
    close();
  }
}

// Separate loops for ID 1 to 3, and 5 to 9, Slice 3 and Slice 4
for (Z = 3; Z <= 4; Z++) {
  for (Y = Z; Y <= Z; Y++) {
    for (X = 1; X <= 9; X++) {
      if (Z == 3 && X > 3 && X < 5) continue;  // Skip IDs 4 on Slice 3
      fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
      print(fileParam);
      run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
      run("Split Channels");
      close();
      
      run("Enhance Contrast", "saturated=0.35");
      setAutoThreshold("Moments dark no-reset");
      roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
      roiManager("Select", 0);
      run("Set Measurements...", "area mean standard min median area_fraction redirect=None decimal=3");
      run("Measure");
      saveAs("PNG", "D:/Microscopy/Fiji_thresholding_export/Measure1_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".png");
      close();
      
      run("Enhance Contrast", "saturated=0.35");
      setAutoThreshold("Triangle dark no-reset");
      roiManager("Select", 0);
      roiManager("Deselect");
      roiManager("Delete");
      run("Measure");
      saveAs("PNG", "D:/Microscopy/Fiji_thresholding_export/Measure2_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".png");
      close();
    }
  }
}
