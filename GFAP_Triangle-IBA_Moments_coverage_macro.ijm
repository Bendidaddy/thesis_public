for (Y = 1; Y <= 2; Y++) {
  for (X = 1; X <= 9; X++) {
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
    print(fileParam); // look at the Log window to see if this is what you expect
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();
    
    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
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
for (Y = 3; Y <= 3; Y++) {
  for (X = 1; X <= 3; X++) {
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
    print(fileParam); // look at the Log window to see if this is what you expect
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();
    
    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
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
for (Y = 3; Y <= 3; Y++) {
  for (X = 5; X <= 9; X++) {
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
    print(fileParam); // look at the Log window to see if this is what you expect
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();
    
    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
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
for (Y = 4; Y <= 4; Y++) {
  for (X = 1; X <= 3; X++) {
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
    print(fileParam); // look at the Log window to see if this is what you expect
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();
    
    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
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
for (Y = 4; Y <= 4; Y++) {
  for (X = 5; X <= 9; X++) {
    fileParam = "GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + ".czi";
    print(fileParam); // look at the Log window to see if this is what you expect
    run("Bio-Formats Windowless Importer", "open=E:/Aron/" + fileParam);
    run("Split Channels");
    close();
    
    //run("Brightness/Contrast...");
    run("Enhance Contrast", "saturated=0.35");
    //run("Threshold...");
    setAutoThreshold("Moments dark no-reset");
    roiManager("Open", "E:/Aron/GFAP-IBA-NEUN_10x_ID" + IJ.pad(X, 1) + "_Slice" + IJ.pad(Y, 1) + "_mask.roi");
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