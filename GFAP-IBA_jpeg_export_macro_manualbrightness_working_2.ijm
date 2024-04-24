settings = newArray(3, 22, 1, 48, 3, 22, 1, 46, 3, 30, 1, 41, 3, 30, 1, 35,  // Subject 7
                    3, 20, 1, 46, 3, 18, 1, 45, 2, 27, 1, 39, 2, 27, 1, 37,  // Subject 8
                    2, 20, 1, 40, 2, 17, 1, 44, 3, 33, 1, 46, 3, 36, 1, 40);  // Subject 9
                    
// Define the number of subjects and slices
nSubjects = 9;
nnSlices = 4;

// Loop over subjects and slices
for (subject = 1; subject <= nSubjects; subject++) {

    nSlicesForSubject = nnSlices;

  for (slice = 7; slice <= nSlicesForSubject; slice++) {
    // Calculate the index of the brightness and contrast settings for the current subject and slice
    index = ((subject - 1) * nnSlices + (slice - 1)) * 4;

    // Access brightness and contrast settings for channel 1 and channel 2
    channel1Min = settings[index];
    channel1Max = settings[index + 1];
    channel2Min = settings[index + 2];
    channel2Max = settings[index + 3];

    // Open the image corresponding to the current subject and slice
    open("E:/Aron/GFAP-IBA-NEUN_10x_ID" + subject + "_Slice" + slice + ".czi");

    // Split channels
    run("Split Channels");
    close();

    // Apply brightness and contrast settings for channel 2
    setMinAndMax(channel2Min, channel2Max);

    // Apply LUT
    run("Apply LUT");

    // Save channel 1 image
    saveAs("Jpeg", "D:/Microscopy/QUINT/C2-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + ".jpg");
    close();
    
    // Apply brightness and contrast settings for channel 1
    setMinAndMax(channel1Min, channel1Max);

    // Apply LUT
    run("Apply LUT");

    // Save channel 2 image
    saveAs("Jpeg", "D:/Microscopy/QUINT/C1-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + ".jpg");

    // Close the windows
    close("*");
  }
}

