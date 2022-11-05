package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f3152a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void a(ByteBuffer byteBuffer);

    boolean a();

    boolean a(int i, int i2, int i3) throws UnhandledFormatException;

    int b();

    int c();

    void d();

    ByteBuffer e();

    boolean f();

    void g();

    void h();

    /* loaded from: classes2.dex */
    public static final class UnhandledFormatException extends Exception {
        public UnhandledFormatException(int i, int i2, int i3) {
            super("Unhandled format: " + i + " Hz, " + i2 + " channels in encoding " + i3);
        }
    }
}
