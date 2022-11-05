package com.inmobi.re.container.mraidimpl;

import android.media.AudioRecord;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class AudioTriggerer {

    /* renamed from: a  reason: collision with root package name */
    static boolean f3942a;
    static boolean b;
    static Timer c;
    static long d = 0;
    static long e = 50;
    public static AudioRecord audioRecorder = null;
    public static List<AudioTriggerCallback> callbacks = new ArrayList();
    private static int[] f = {8000, 11025, 22050, 44100};

    public static void addEventListener(AudioTriggerCallback audioTriggerCallback) {
        callbacks.add(audioTriggerCallback);
        if (callbacks.size() == 1) {
            b();
        }
    }

    public static void removeEventListener(AudioTriggerCallback audioTriggerCallback) {
        callbacks.remove(audioTriggerCallback);
        if (callbacks.size() == 0) {
            c();
        }
    }

    private static void a(double d2) {
        for (AudioTriggerCallback audioTriggerCallback : callbacks) {
            try {
                audioTriggerCallback.audioLevel(d2);
            } catch (Exception e2) {
                Log.internal(Constants.RENDERING_LOG_TAG, "AudioTriggerer: One of the mic listeners has a problem.");
            }
        }
    }

    private static void b() {
        f3942a = true;
        audioRecorder = h();
        c = new Timer();
        c.scheduleAtFixedRate(new TimerTask() { // from class: com.inmobi.re.container.mraidimpl.AudioTriggerer.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AudioTriggerer.d();
            }
        }, d, e);
    }

    private static void c() {
        f3942a = false;
        if (audioRecorder != null) {
            if (f()) {
                g();
            }
            try {
                audioRecorder.stop();
                audioRecorder.release();
                c.cancel();
                c.purge();
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            } catch (RuntimeException e3) {
                e3.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        short s;
        if (audioRecorder != null && audioRecorder.getState() == 1) {
            short[] sArr = new short[512];
            float[] fArr = new float[3];
            b = true;
            try {
                audioRecorder.startRecording();
                while (f()) {
                    int read = audioRecorder.read(sArr, 0, sArr.length);
                    float f2 = 0.0f;
                    for (int i = 0; i < read; i += 2) {
                        if (((short) (sArr[i] | sArr[i + 1])) != 0) {
                            f2 += Math.abs((int) s) / read;
                        }
                    }
                    fArr[0] = f2;
                    float f3 = 0.0f;
                    for (int i2 = 0; i2 < 3; i2++) {
                        f3 += fArr[i2];
                    }
                    a((f3 / read) / 32.0f);
                }
                e();
            } catch (Exception e2) {
            }
        }
    }

    private static void e() {
        if (audioRecorder != null) {
            if (f()) {
                g();
            }
            try {
                audioRecorder.stop();
                audioRecorder.release();
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            } catch (RuntimeException e3) {
                e3.printStackTrace();
            }
        }
    }

    private static boolean f() {
        return b;
    }

    private static void g() {
        b = false;
    }

    private static AudioRecord h() {
        int[] iArr;
        short[] sArr;
        short[] sArr2;
        for (int i : f) {
            for (short s : new short[]{3, 2}) {
                for (short s2 : new short[]{16, 12}) {
                    try {
                        int minBufferSize = AudioRecord.getMinBufferSize(i, s2, s);
                        if (minBufferSize != -2) {
                            AudioRecord audioRecord = new AudioRecord(0, i, s2, s, minBufferSize);
                            if (audioRecord.getState() == 1) {
                                return audioRecord;
                            }
                        } else {
                            continue;
                        }
                    } catch (Exception e2) {
                    }
                }
            }
        }
        return null;
    }
}
