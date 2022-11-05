package com.google.android.gms.internal;

import android.util.Base64;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.c;
import com.google.firebase.database.d;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public class zzbte {
    private static final char[] zzckI = "0123456789abcdef".toCharArray();

    public static int zzH(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static zzbtb<Task<Void>, d.a> zzb(d.a aVar) {
        if (aVar == null) {
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            return new zzbtb<>(taskCompletionSource.getTask(), new d.a() { // from class: com.google.android.gms.internal.zzbte.1
                @Override // com.google.firebase.database.d.a
                public void onComplete(c cVar, d dVar) {
                    if (cVar != null) {
                        TaskCompletionSource.this.setException(cVar.b());
                    } else {
                        TaskCompletionSource.this.setResult(null);
                    }
                }
            });
        }
        return new zzbtb<>(null, aVar);
    }

    public static void zzb(boolean z, String str) {
        if (!z) {
            String valueOf = String.valueOf(str);
            throw new AssertionError(valueOf.length() != 0 ? "hardAssert failed: ".concat(valueOf) : new String("hardAssert failed: "));
        }
    }

    public static void zzbb(boolean z) {
        zzb(z, "");
    }

    public static zzbtc zzjg(String str) throws DatabaseException {
        String str2;
        try {
            int indexOf = str.indexOf("//");
            if (indexOf == -1) {
                throw new URISyntaxException(str, "Invalid scheme specified");
            }
            int indexOf2 = str.substring(indexOf + 2).indexOf("/");
            if (indexOf2 != -1) {
                int i = indexOf + 2 + indexOf2;
                String[] split = str.substring(i).split("/");
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < split.length; i2++) {
                    if (!split[i2].equals("")) {
                        sb.append("/");
                        sb.append(URLEncoder.encode(split[i2], "UTF-8"));
                    }
                }
                String valueOf = String.valueOf(str.substring(0, i));
                String valueOf2 = String.valueOf(sb.toString());
                str2 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            } else {
                str2 = str;
            }
            URI uri = new URI(str2);
            String replace = uri.getPath().replace("+", MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            zzbtf.zzjm(replace);
            zzbph zzbphVar = new zzbph(replace);
            String scheme = uri.getScheme();
            zzbpk zzbpkVar = new zzbpk();
            zzbpkVar.zzcbI = uri.getHost().toLowerCase();
            int port = uri.getPort();
            if (port != -1) {
                zzbpkVar.zzcbJ = scheme.equals("https");
                String valueOf3 = String.valueOf(zzbpkVar.zzcbI);
                zzbpkVar.zzcbI = new StringBuilder(String.valueOf(valueOf3).length() + 12).append(valueOf3).append(":").append(port).toString();
            } else {
                zzbpkVar.zzcbJ = true;
            }
            zzbpkVar.zzaGP = zzbpkVar.zzcbI.split("\\.")[0].toLowerCase();
            zzbpkVar.zzcfu = zzbpkVar.zzcbI;
            zzbtc zzbtcVar = new zzbtc();
            zzbtcVar.zzcag = zzbphVar;
            zzbtcVar.zzbZX = zzbpkVar;
            return zzbtcVar;
        } catch (UnsupportedEncodingException e) {
            throw new DatabaseException("Failed to URLEncode the path", e);
        } catch (URISyntaxException e2) {
            throw new DatabaseException("Invalid Firebase Database url specified", e2);
        }
    }

    public static String zzjh(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 encoding is required for Firebase Database to run!");
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Missing SHA-1 MessageDigest provider.", e2);
        }
    }

    public static String zzji(String str) {
        String replace = str.indexOf(92) != -1 ? str.replace("\\", "\\\\") : str;
        if (str.indexOf(34) != -1) {
            replace = replace.replace("\"", "\\\"");
        }
        return new StringBuilder(String.valueOf(replace).length() + 2).append("\"").append(replace).append("\"").toString();
    }

    public static Integer zzjj(String str) {
        boolean z = true;
        int i = 0;
        if (str.length() > 11 || str.length() == 0) {
            return null;
        }
        if (str.charAt(0) != '-') {
            z = false;
        } else if (str.length() == 1) {
            return null;
        } else {
            i = 1;
        }
        long j = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            j = (j * 10) + (charAt - '0');
            i++;
        }
        if (z) {
            if ((-j) >= -2147483648L) {
                return Integer.valueOf((int) (-j));
            }
            return null;
        } else if (j <= 2147483647L) {
            return Integer.valueOf((int) j);
        } else {
            return null;
        }
    }

    public static int zzl(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static String zzl(double d) {
        StringBuilder sb = new StringBuilder(16);
        long doubleToLongBits = Double.doubleToLongBits(d);
        for (int i = 7; i >= 0; i--) {
            int i2 = (int) ((doubleToLongBits >>> (i * 8)) & 255);
            sb.append(zzckI[(i2 >> 4) & 15]);
            sb.append(zzckI[i2 & 15]);
        }
        return sb.toString();
    }
}
