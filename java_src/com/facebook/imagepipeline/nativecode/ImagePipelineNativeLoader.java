package com.facebook.imagepipeline.nativecode;

import com.facebook.common.soloader.SoLoaderShim;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class ImagePipelineNativeLoader {
    public static final List<String> DEPENDENCIES = Collections.unmodifiableList(new ArrayList());
    public static final String DSO_NAME = "imagepipeline";

    public static void load() {
        try {
            SoLoaderShim.loadLibrary("fb_jpegturbo");
        } catch (UnsatisfiedLinkError e) {
        }
        SoLoaderShim.loadLibrary(DSO_NAME);
    }
}
