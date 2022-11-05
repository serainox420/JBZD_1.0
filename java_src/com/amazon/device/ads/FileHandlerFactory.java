package com.amazon.device.ads;

import java.io.File;
/* loaded from: classes.dex */
interface FileHandlerFactory {
    FileInputHandler createFileInputHandler(File file);

    FileInputHandler createFileInputHandler(File file, String str);

    FileInputHandler createFileInputHandler(String str);

    FileOutputHandler createFileOutputHandler(File file);

    FileOutputHandler createFileOutputHandler(File file, String str);

    FileOutputHandler createFileOutputHandler(String str);
}
