package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.flurry.android.Constants;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzbab {
    private static final String TAG = zzbab.class.getSimpleName();
    private static final char[] zzbDE = "0123456789ABCDEF".toCharArray();
    private static final Pattern zzbDF = Pattern.compile("/\\.\\.");
    private static final Pattern zzbDG = Pattern.compile("0[1-7][0-7]*");
    private static final Pattern zzbDH = Pattern.compile("0x[0-9a-f]*", 2);
    private static final Pattern zzbDI = Pattern.compile("^((?:0x[0-9a-f]+|[0-9\\\\.])+)$", 2);
    private final String mPath;
    private final String zzE;
    private final String zzbDJ;
    private final String zzbDK;
    private final int zzbDL;
    private final String zzuB;

    /* loaded from: classes2.dex */
    private static class zza {
        private static final String[] zzbDM = {"http", "https", "ftp"};
        private final String zzahj;
        private final String zzbDJ;
        private final Uri zzbDN;
        private final URI zzbDO;
        private final Boolean zzbDP;
        private final Integer zzbDQ;

        private zza(String str) {
            this.zzahj = str;
            this.zzbDN = Uri.parse(this.zzahj);
            try {
                new URI(this.zzahj);
            } catch (URISyntaxException e) {
            } finally {
                this.zzbDO = null;
            }
            this.zzbDJ = getScheme();
            this.zzbDP = Boolean.valueOf(zzPD());
            this.zzbDQ = Integer.valueOf(zzPC());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPort() {
            return this.zzbDQ.intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getScheme() {
            if (this.zzbDJ != null) {
                return this.zzbDJ;
            }
            String scheme = this.zzbDN != null ? this.zzbDN.getScheme() : null;
            TextUtils.isEmpty(scheme);
            if (TextUtils.isEmpty(scheme) && !TextUtils.isEmpty(this.zzahj)) {
                int indexOf = this.zzahj.indexOf(":");
                if (indexOf != -1) {
                    String lowerCase = this.zzahj.substring(0, indexOf).toLowerCase(Locale.US);
                    if (zzgL(lowerCase)) {
                        scheme = lowerCase;
                    }
                }
                if (TextUtils.isEmpty(scheme)) {
                    scheme = this.zzahj.startsWith("www.") ? "http" : "http";
                }
            }
            if (scheme == null) {
                return null;
            }
            return scheme.toLowerCase(Locale.US);
        }

        private int zzPC() {
            int port;
            if (this.zzbDQ != null) {
                return this.zzbDQ.intValue();
            }
            if (this.zzbDN != null && (port = this.zzbDN.getPort()) != -1) {
                return port;
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean zzPD() {
            return this.zzbDP != null ? this.zzbDP.booleanValue() : zzgL(this.zzbDJ);
        }

        private static boolean zzgL(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            for (int i = 0; i < zzbDM.length; i++) {
                if (zzbDM[i].equals(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public zzbab(String str) {
        String str2;
        if (!zzgH(str)) {
            this.zzE = null;
            this.zzbDJ = null;
            this.zzbDK = null;
            this.zzbDL = -1;
            this.mPath = null;
            this.zzuB = null;
            return;
        }
        String replaceAll = str.replaceAll("^\\s+", "").replaceAll("\\s+$", "").replaceAll("[\\t\\n\\r]", "");
        int indexOf = replaceAll.indexOf(35);
        replaceAll = indexOf != -1 ? replaceAll.substring(0, indexOf) : replaceAll;
        zza zzaVar = new zza(replaceAll);
        if (!zzaVar.zzPD()) {
            this.zzE = null;
            this.zzbDJ = null;
            this.zzbDK = null;
            this.zzbDL = -1;
            this.mPath = null;
            this.zzuB = null;
            return;
        }
        this.zzbDJ = zzaVar.getScheme();
        this.zzbDL = zzaVar.getPort();
        if (this.zzbDJ != null) {
            String str3 = this.zzbDJ;
            replaceAll = replaceAll.replaceAll(new StringBuilder(String.valueOf(str3).length() + 2).append("^").append(str3).append(":").toString(), "");
        }
        String zzgJ = zzgJ(replaceAll.replaceAll("^/+", ""));
        int indexOf2 = zzgJ.indexOf(63);
        if (indexOf2 != -1) {
            int i = indexOf2 + 1;
            str2 = i < zzgJ.length() ? zzgJ.substring(i) : "";
            zzgJ = zzgJ.substring(0, indexOf2);
        } else {
            str2 = null;
        }
        String zzgD = zzgD(zzgJ);
        if (TextUtils.isEmpty(zzgD)) {
            this.zzE = null;
            this.zzbDK = null;
            this.mPath = null;
            this.zzuB = null;
            return;
        }
        String zzgG = zzgG(zzgJ);
        this.zzbDK = zzgI(zzgD);
        this.mPath = zzgI(zzgG);
        this.zzuB = !TextUtils.isEmpty(str2) ? zzgI(str2) : str2;
        this.zzE = zzgJ;
    }

    private static boolean isHexDigit(char c) {
        return (c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f');
    }

    private List<String> zzPA() {
        if (TextUtils.isEmpty(this.zzbDK)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] charArray = this.zzbDK.toCharArray();
        boolean z = false;
        for (int length = charArray.length - 2; length > 0 && arrayList.size() < 4; length--) {
            if (charArray[length] == '.') {
                if (z) {
                    arrayList.add(this.zzbDK.substring(length + 1));
                } else {
                    z = true;
                }
            }
        }
        arrayList.add(this.zzbDK);
        return arrayList;
    }

    private List<String> zzPB() {
        if (TextUtils.isEmpty(this.mPath)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] charArray = this.mPath.toCharArray();
        for (int i = 0; i < charArray.length && arrayList.size() < 4; i++) {
            if (charArray[i] == '/') {
                arrayList.add(this.mPath.substring(0, i + 1));
            }
        }
        if (!arrayList.isEmpty() && !((String) arrayList.get(arrayList.size() - 1)).equals(this.mPath)) {
            arrayList.add(this.mPath);
        }
        if (!TextUtils.isEmpty(this.zzuB)) {
            String str = this.mPath;
            String str2 = this.zzuB;
            arrayList.add(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append("?").append(str2).toString());
        }
        return arrayList;
    }

    private static Byte zzc(byte[] bArr, int i) {
        if (i + 2 < bArr.length && ((char) (bArr[i] & Constants.UNKNOWN)) == '%') {
            char c = (char) (bArr[i + 1] & Constants.UNKNOWN);
            char c2 = (char) (bArr[i + 2] & Constants.UNKNOWN);
            if (isHexDigit(c) && isHexDigit(c2)) {
                return Byte.valueOf((byte) ((Integer.parseInt(new StringBuilder(1).append(c).toString(), 16) * 16) + Integer.parseInt(new StringBuilder(1).append(c2).toString(), 16)));
            }
            return null;
        }
        return null;
    }

    private String zzgD(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        int indexOf2 = str.indexOf(64);
        if (indexOf2 != -1) {
            str = str.substring(indexOf2 + 1);
        }
        if (this.zzbDL != -1) {
            str = str.replaceAll(new StringBuilder(13).append(":").append(this.zzbDL).append("$").toString(), "");
        }
        String replaceAll = str.replaceAll("^\\.*", "").replaceAll("\\.*$", "").replaceAll("\\.+", ".");
        String zzgE = zzgE(replaceAll);
        if (zzgE == null) {
            zzgE = replaceAll;
        }
        return zzgE.toLowerCase(Locale.getDefault());
    }

    private static String zzgE(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String replaceAll = str.replaceAll("^\\[", "").replaceAll("\\]$", "");
        if (zzazz.zzgv(replaceAll)) {
            String zza2 = zzazz.zza(zzazz.zzgC(replaceAll));
            return zza2.contains(":") ? String.format("[%s]", zza2) : zza2;
        } else if (TextUtils.isDigitsOnly(str)) {
            String zzgF = zzgF(str);
            if (TextUtils.isEmpty(zzgF)) {
                return null;
            }
            return zzgF;
        } else if (!zzbDI.matcher(replaceAll).find()) {
            return null;
        } else {
            Matcher matcher = zzbDG.matcher(replaceAll);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                matcher.appendReplacement(stringBuffer, new StringBuilder(11).append(Integer.parseInt(matcher.group(), 8)).toString());
            }
            matcher.appendTail(stringBuffer);
            Matcher matcher2 = zzbDH.matcher(stringBuffer.toString());
            StringBuffer stringBuffer2 = new StringBuffer();
            while (matcher2.find()) {
                matcher2.appendReplacement(stringBuffer2, new StringBuilder(11).append(Integer.parseInt(matcher2.group().substring(2), 16)).toString());
            }
            matcher2.appendTail(stringBuffer2);
            String stringBuffer3 = stringBuffer2.toString();
            return stringBuffer3.contains(":") ? String.format("[%s]", stringBuffer3) : stringBuffer3;
        }
    }

    private static String zzgF(String str) {
        byte[] bArr;
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            BigInteger bigInteger = new BigInteger(str);
            byte[] byteArray = bigInteger.toByteArray();
            if (byteArray.length < 4) {
                return null;
            }
            byte[] copyOfRange = Arrays.copyOfRange(byteArray, byteArray.length - 4, byteArray.length);
            if (bigInteger.equals(new BigInteger(new byte[]{0, copyOfRange[0], copyOfRange[1], copyOfRange[2], copyOfRange[3]}))) {
                return Inet4Address.getByAddress(copyOfRange).getHostAddress();
            }
            if (byteArray.length >= 16) {
                bArr = Arrays.copyOfRange(byteArray, byteArray.length - 16, byteArray.length);
            } else {
                bArr = new byte[16];
                int length = 16 - byteArray.length;
                int i2 = 1;
                int i3 = 0;
                while (i2 <= length) {
                    bArr[i3] = 0;
                    i2++;
                    i3++;
                }
                while (i < byteArray.length) {
                    int i4 = i3 + 1;
                    bArr[i3] = byteArray[i];
                    i++;
                    i3 = i4;
                }
            }
            return String.format("[%s]", Inet6Address.getByAddress(bArr).getHostAddress());
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (NumberFormatException e2) {
            return null;
        } catch (UnknownHostException e3) {
            return null;
        }
    }

    private String zzgG(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf(47);
        String replaceAll = (indexOf != -1 ? str.substring(indexOf) : "/").replaceAll("/\\./", "/").replaceAll("/\\.$", "/");
        if (zzbDF.matcher(replaceAll).find()) {
            try {
                replaceAll = new URI(this.zzbDJ, "host", replaceAll, null).normalize().getRawPath();
            } catch (URISyntaxException e) {
            }
        }
        return replaceAll.replaceAll("/+", "/");
    }

    private static boolean zzgH(String str) {
        return !TextUtils.isEmpty(str);
    }

    private static String zzgI(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            StringBuilder sb = new StringBuilder();
            for (byte b : bytes) {
                char c = (char) (b & Constants.UNKNOWN);
                if (c <= ' ' || c > '~' || c == '#' || c == '%') {
                    sb.append("%");
                    sb.append(zzbDE[c >>> 4]);
                    sb.append(zzbDE[c & 15]);
                } else {
                    sb.append(c);
                }
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    private static String zzgJ(String str) {
        String str2;
        Object obj = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = 0;
        while (true) {
            str2 = str;
            if (str2.equals(obj) || i >= 1024) {
                break;
            }
            str = zzgK(str2);
            i++;
            obj = str2;
        }
        return str2;
    }

    private static String zzgK(String str) {
        try {
            byte[] bytes = str.replace("\\x", "%").getBytes("UTF-8");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bytes.length);
            int i = 0;
            while (i < bytes.length) {
                byte b = bytes[i];
                if (((char) (b & Constants.UNKNOWN)) >= 128) {
                    byteArrayOutputStream.write(b);
                } else {
                    Byte zzc = zzc(bytes, i);
                    if (zzc != null) {
                        byteArrayOutputStream.write(zzc.byteValue());
                        i += 2;
                    } else {
                        byteArrayOutputStream.write(b);
                    }
                }
                i++;
            }
            try {
                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    public List<String> zzPy() {
        List<String> zzPA;
        List<String> zzPB;
        if (TextUtils.isEmpty(this.zzE)) {
            return null;
        }
        String zzgE = zzgE(this.zzbDK);
        if (zzgE != null) {
            zzPA = new ArrayList<>();
            zzPA.add(zzgE);
        } else {
            zzPA = zzPA();
        }
        if (zzPA == null || zzPA.isEmpty() || (zzPB = zzPB()) == null || zzPB.isEmpty()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (String str : zzPA) {
            for (String str2 : zzPB) {
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(str2);
                linkedList.add(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            }
        }
        return !linkedList.isEmpty() ? linkedList : null;
    }

    public List<zzazy> zzPz() {
        MessageDigest messageDigest;
        List<String> zzPy = zzPy();
        if (zzPy == null || zzPy.isEmpty()) {
            return null;
        }
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            messageDigest = null;
        }
        if (messageDigest == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(zzPy.size());
        for (String str : zzPy) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    arrayList.add(new zzazy(messageDigest.digest(str.getBytes("UTF-8"))));
                } catch (UnsupportedEncodingException e2) {
                }
                messageDigest.reset();
            }
        }
        return !arrayList.isEmpty() ? arrayList : null;
    }
}
