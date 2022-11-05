package com.smaato.soma.internal.c;

import android.content.Context;
import android.util.TypedValue;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.PixelToDpFailed;
import com.smaato.soma.exception.UnableToCalculateMinimalHeight;
import com.smaato.soma.exception.UnableToConvertDataToHex;
import java.security.MessageDigest;
/* compiled from: Converter.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f4976a;

    private d() {
    }

    public static d a() {
        if (f4976a == null) {
            f4976a = new d();
        }
        return f4976a;
    }

    private String a(byte[] bArr) throws UnableToConvertDataToHex {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < bArr.length; i++) {
                int i2 = (bArr[i] >>> 4) & 15;
                int i3 = 0;
                while (true) {
                    if (i2 >= 0 && i2 <= 9) {
                        stringBuffer.append((char) (i2 + 48));
                    } else {
                        stringBuffer.append((char) ((i2 - 10) + 97));
                    }
                    int i4 = bArr[i] & 15;
                    int i5 = i3 + 1;
                    if (i3 >= 1) {
                        break;
                    }
                    i3 = i5;
                    i2 = i4;
                }
            }
            return stringBuffer.toString();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToConvertDataToHex(e2);
        }
    }

    public String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[40];
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            return a(messageDigest.digest());
        } catch (Throwable th) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA Converter", "Error generating generating SHA-1: ", 1, DebugCategory.EXCEPTION, th));
            return null;
        }
    }

    public int a(Context context) throws UnableToCalculateMinimalHeight {
        try {
            return (int) TypedValue.applyDimension(1, 50.0f, context.getResources().getDisplayMetrics());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToCalculateMinimalHeight(e2);
        }
    }

    public int a(Context context, int i) throws PixelToDpFailed {
        try {
            return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new PixelToDpFailed(e2);
        }
    }
}
