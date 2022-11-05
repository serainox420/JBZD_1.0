package com.adcolony.sdk;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
class ADCNative {

    /* renamed from: a  reason: collision with root package name */
    static ADCNative f958a = new ADCNative();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeCreateSceneController(int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeCreateTexture(int i, int i2, int i3, String str, ByteBuffer byteBuffer, int i4, int i5, int i6, int i7);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDeleteSceneController(int i, int i2);

    static native void nativeHelloWorld();

    static native boolean nativeIsArm();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean nativeNeonSupported();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeRender(int i, int i2, int i3, int i4);

    ADCNative() {
    }
}
