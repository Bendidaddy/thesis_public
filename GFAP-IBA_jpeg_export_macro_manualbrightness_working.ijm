// Define brightness and contrast settings for each subject and slice
// Define brightness and contrast settings for each subject and slice
//settings = newArray(
//    newArray( // Subject 1
//        newArray( // Slice 1
//            newArray(2, 24),  // Slice 1, Channel 1 (min, max)
//            newArray(1, 34)   // Slice 1, Channel 2 (min, max)
//        ),
//        newArray( // Slice 2
//            newArray(2, 16),  // Slice 2, Channel 1 (min, max)
//            newArray(1, 32)   // Slice 2, Channel 2 (min, max)
//        ),
//        newArray( // Slice 3
//            newArray(2, 24),  // Slice 3, Channel 1 (min, max)
//            newArray(1, 32)   // Slice 3, Channel 2 (min, max)
//        ),
//        newArray( // Slice 4
//            newArray(3, 25),  // Slice 4, Channel 1 (min, max)
//            newArray(1, 39)   // Slice 4, Channel 2 (min, max)
//        )
//    ),
//    newArray( // Subject 2
//        newArray( // Slice 1
//            newArray(4, 42),  // Slice 1, Channel 1 (min, max)
//            newArray(1, 37)   // Slice 1, Channel 2 (min, max)
//        ),
//        newArray( // Slice 2
//            newArray(4, 28),  // Slice 2, Channel 1 (min, max)
//            newArray(1, 33)   // Slice 2, Channel 2 (min, max)
//        ),
//        newArray( // Slice 3
//            newArray(3, 32),  // Slice 3, Channel 1 (min, max)
//            newArray(1, 34)   // Slice 3, Channel 2 (min, max)
//        ),
//        newArray( // Slice 4
//            newArray(3, 46),  // Slice 4, Channel 1 (min, max)
//            newArray(1, 39)   // Slice 4, Channel 2 (min, max)
//        )
//    ),
//    newArray( // Subject 3
//        newArray( // Slice 1
//            newArray(1, 45),  // Slice 1, Channel 1 (min, max)
//            newArray(1, 43)   // Slice 1, Channel 2 (min, max)
//        ),
//        newArray( // Slice 2
//            newArray(4, 30),  // Slice 2, Channel 1 (min, max)
//            newArray(1, 45)   // Slice 2, Channel 2 (min, max)
//        ),
//        newArray( // Slice 3
//            newArray(3, 43),  // Slice 3, Channel 1 (min, max)
//            newArray(1, 42)   // Slice 3, Channel 2 (min, max)
//        ),
//        newArray( // Slice 4
//            newArray(4, 27),  // Slice 4, Channel 1 (min, max)
//            newArray(1, 35)   // Slice 4, Channel 2 (min, max)
//        )
//    ),
//    newArray( // Subject 4
//        newArray( // Slice 1
//            newArray(4, 21),  // Slice 1, Channel 1 (min, max)
//            newArray(1, 47)   // Slice 1, Channel 2 (min, max)
//        ),
//        newArray( // Slice 2
//            newArray(4, 17),  // Slice 2, Channel 1 (min, max)
//            newArray(1, 43)   // Slice 2, Channel 2 (min, max)
//        )
//    ),
//    newArray( // Subject 5
//        newArray( // Slice 1
//            newArray(1, 29),  // Slice 1, Channel 1 (min, max)
//            newArray(1, 54)   // Slice 1, Channel 2 (min, max)
//        ),
//        newArray( // Slice 2
//            newArray(4, 24),  // Slice 2, Channel 1 (min, max)
//            newArray(1, 51)   // Slice 2, Channel 2 (min, max)
//        ),
//        newArray( // Slice 3
//            newArray(3, 27),  // Slice 3, Channel 1 (min, max)
//            newArray(1, 49)   // Slice 3, Channel 2 (min, max)
//        ),
//        newArray( // Slice 4
//            newArray(3, 30),  // Slice 4, Channel 1 (min, max)
 //           newArray(1, 48)   // Slice 4, Channel 2 (min, max)
//        )
//    ),
//    newArray( // Subject 6
//        newArray( // Slice 1
//            newArray(4, 35),  // Slice 1, Channel 1 (min, max)
//            newArray(1, 43)   // Slice 1, Channel 2 (min, max)
//        ),
//        newArray( // Slice 2
//            newArray(3, 16),  // Slice 2, Channel 1 (min, max)
//            newArray(1, 39)   // Slice 2, Channel 2 (min, max)
//        ),
//        newArray( // Slice 3
//            newArray(3, 31),  // Slice 3, Channel 1 (min, max)
//            newArray(1, 37)   // Slice 3, Channel 2 (min, max)
//        ),
//        newArray( // Slice 4
//            newArray(3, 30),  // Slice 4, Channel 1 (min, max)
//            newArray(1, 36)   // Slice 4, Channel 2 (min, max)
//        )
//    )
//);

// simplified into this:
settings = newArray(2, 24, 1, 34, 2, 16, 1, 32, 2, 24, 1, 32, 3, 25, 1, 39,  // Subject 1
                    4, 42, 1, 37, 4, 28, 1, 33, 3, 32, 1, 34, 3, 46, 1, 39,  // Subject 2
                    1, 45, 1, 43, 4, 30, 1, 45, 3, 43, 1, 42, 4, 27, 1, 35,  // Subject 3
                    4, 21, 1, 47, 4, 17, 1, 43, 0,  0, 0,  0, 0,  0, 0,  0,  // Subject 4 + zeros for skipping space
                    1, 29, 1, 54, 4, 24, 1, 51, 3, 27, 1, 49, 3, 30, 1, 48,  // Subject 5
                    4, 35, 1, 43, 3, 16, 1, 39, 3, 31, 1, 37, 3, 30, 1, 36,  // Subject 6
                    3, 22, 1, 48, 3, 22, 1, 46, 3, 30, 1, 41, 3, 30, 1, 35,  // Subject 7
                    3, 20, 1, 46, 3, 18, 1, 45, 2, 27, 1, 39, 2, 27, 1, 37,  // Subject 8
                    2, 20, 1, 40, 2, 17, 1, 44, 3, 33, 1, 46, 3, 36, 1, 40);  // Subject 9
// Define the number of subjects and slices
nSubjects = 9;
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

    // Save channel 2 image
    saveAs("Jpeg", "D:/Microscopy/QUINT/C2-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + ".jpg");
    close();
    
    // Apply brightness and contrast settings for channel 1
    setMinAndMax(channel1Min, channel1Max);

    // Apply LUT
    run("Apply LUT");

    // Save channel 1 image
    saveAs("Jpeg", "D:/Microscopy/QUINT/C1-GFAP-IBA-NEUN_10x_ID" + subject + "_s00" + slice + ".jpg");

    // Close the windows
    close("*");
  }
}

