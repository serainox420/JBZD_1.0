package com.adcolony.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Base64;
import android.webkit.WebView;
import com.adcolony.sdk.bn;
import com.facebook.appevents.AppEventsConstants;
import com.flurry.android.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.Mac;
import javax.crypto.SealedObject;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class co {

    /* renamed from: a  reason: collision with root package name */
    static final int f1348a = 1;
    static boolean b = false;

    co() {
    }

    private static String m() {
        return bz.class.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        try {
            return new JSONObject(map).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(List<Object> list) {
        if (list == null) {
            return null;
        }
        try {
            return new JSONArray((Collection) list).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    static String b(Map<String, Object> map) {
        try {
            return new JSONObject(new TreeMap(map)).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Object> a(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (str == JSONObject.NULL) {
                return null;
            }
            return a(jSONArray);
        } catch (JSONException e) {
            cb.b(m(), "bad json: " + str + ", ", true);
            cb.a(m(), "Caught Exception->" + e.getMessage(), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (str == JSONObject.NULL) {
                return null;
            }
            return a(jSONObject);
        } catch (JSONException e) {
            cb.b(m(), "bad json: " + str, true);
            cb.a(m(), "Caught Exception->" + e.getMessage(), e);
            return null;
        }
    }

    static Map<String, Object> a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        if (jSONObject == null) {
            return hashMap;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj);
                } else if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj);
                }
                if (obj == null) {
                    cb.b(m(), "bad object: key: " + next + "object: " + jSONObject, true);
                    return null;
                }
                hashMap.put(next, obj);
            } catch (JSONException e) {
                cb.a(m(), "bad object: " + jSONObject + ". Exception->" + e.getMessage(), e);
                return null;
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Object> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= jSONArray.length()) {
                return arrayList;
            }
            try {
                Object obj = jSONArray.get(i2);
                if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj);
                } else if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj);
                }
                if (obj == null) {
                    cb.b(m(), "bad array: " + jSONArray, true);
                    return null;
                }
                arrayList.add(obj);
                i = i2 + 1;
            } catch (JSONException e) {
                cb.a(m(), "bad array:" + jSONArray + ", Exception->" + e.getMessage(), e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(char c) {
        return (Math.min(Math.max(0, 'a' - c), 1) * (32 - Math.max(0, 'a' - c))) + (Math.max(0, c - 'a') * Math.min(1, Math.max(0, c - '`')));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuffer(str).reverse().toString();
    }

    static String d(String str) {
        try {
            return new String(Base64.decode(str, 0));
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(String str) {
        return d(str);
    }

    static String f(String str) {
        return g(str);
    }

    static String g(String str) {
        try {
            return new String(Base64.decode(str, 0), "UTF-8");
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2) {
        if (str2 != null && str != null) {
            try {
                byte[] bytes = str.getBytes("UTF-8");
                SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "HmacSHA1");
                Mac mac = Mac.getInstance("HmacSHA1");
                mac.init(secretKeySpec);
                byte[] doFinal = mac.doFinal(bytes);
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b2 : doFinal) {
                    String hexString = Integer.toHexString(b2 & Constants.UNKNOWN);
                    if (hexString.length() == 1) {
                        stringBuffer.append('0');
                    }
                    stringBuffer.append(hexString);
                }
                return stringBuffer.toString();
            } catch (Exception e) {
                cb.a(m(), "Caught Exception->" + e.getMessage(), e);
                return "";
            }
        }
        cb.b(m(), "Empty secret key signing HMAC", true);
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a() {
        try {
            return bz.aK().l().getResources().getDisplayMetrics().density;
        } catch (Exception e) {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b() {
        try {
            return bz.aK().l().getResources().getDisplayMetrics().heightPixels;
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c() {
        try {
            return bz.aK().l().getResources().getDisplayMetrics().widthPixels;
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d() {
        try {
            return bz.aK().l().getResources().getDisplayMetrics().densityDpi;
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        return (int) (i * a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final String h(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & Constants.UNKNOWN);
                while (hexString.length() < 2) {
                    hexString = AppEventsConstants.EVENT_PARAM_VALUE_NO + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            cb.a(m(), "Caught Exception->" + e.getMessage(), e);
            return "";
        }
    }

    static String a(InputStream inputStream) {
        char[] charArray = "0123456789abcdef".toCharArray();
        try {
            byte[] bArr = new byte[4096];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(32);
            for (byte b2 : digest) {
                sb.append(charArray[(b2 >> 4) & 15]);
                sb.append(charArray[b2 & 15]);
            }
            return sb.toString();
        } catch (Exception e) {
            cb.a(m(), "Caught Exception->" + e.getMessage(), e);
            return "";
        }
    }

    static String b(int i) {
        return bn.bh.indexOfKey(i) >= 0 ? bn.bh.get(i) : "Unmatched error code!";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(Map<String, Object> map, String str, Context context) {
        synchronized (co.class) {
            if (str == null) {
                str = e();
                cb.b(m(), "new fileName:" + str, true);
            }
            cb.b(m(), "saveMap:" + str, true);
            try {
                FileOutputStream openFileOutput = context.openFileOutput(str, 0);
                if (bz.aK().g() != null) {
                    try {
                        SecretKey j = j(bz.aK().g());
                        Cipher cipher = Cipher.getInstance("AES");
                        cipher.init(1, j);
                        SealedObject sealedObject = new SealedObject((Serializable) map, cipher);
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new CipherOutputStream(openFileOutput, cipher));
                        objectOutputStream.writeUTF("yvlr");
                        objectOutputStream.writeInt(1);
                        objectOutputStream.writeObject(sealedObject);
                        objectOutputStream.flush();
                        objectOutputStream.close();
                    } catch (Exception e) {
                        cb.a(m(), "Failed to save file. Caught Exception->" + e.getMessage(), e);
                    }
                }
            } catch (FileNotFoundException e2) {
                cb.a(m(), "File not found. Cannot save map. Exception->" + e2.getMessage(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        File filesDir;
        boolean z;
        String str = null;
        if (context != null && context.getApplicationContext() != null && (filesDir = context.getApplicationContext().getFilesDir()) != null) {
            File[] listFiles = filesDir.listFiles();
            if (listFiles != null) {
                for (int i = 0; i < listFiles.length; i++) {
                    if (listFiles[i].getName().endsWith(".ybin")) {
                        cb.b(m(), "file: " + listFiles[i].getName(), true);
                        if (bz.aK().g() != null) {
                            try {
                                if (a(listFiles[i].getName(), bz.aK().g(), context)) {
                                    str = listFiles[i].getName();
                                }
                            } catch (Exception e) {
                                cb.b(m(), "failed to read file: " + listFiles[i].getName(), true);
                                cb.a(m(), "Caught Exception->" + e.getMessage(), e);
                                if (bz.aK().h() != null && bz.aK().h().size() > 0) {
                                    Iterator<String> it = bz.aK().h().iterator();
                                    String str2 = str;
                                    while (true) {
                                        if (!it.hasNext()) {
                                            str = str2;
                                            break;
                                        }
                                        try {
                                            str2 = a(str2, bz.aK().c(it.next()), context) ? listFiles[i].getName() : str2;
                                            z = false;
                                            continue;
                                        } catch (Exception e2) {
                                            z = true;
                                            continue;
                                        }
                                        if (!z) {
                                            str = str2;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                cb.b(m(), "no files found", true);
            }
        }
        return str;
    }

    static boolean a(String str, String str2, Context context) throws Exception {
        SecretKey j = j(str2);
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(2, j);
        ObjectInputStream objectInputStream = new ObjectInputStream(new CipherInputStream(context.openFileInput(str), cipher));
        String readUTF = objectInputStream.readUTF();
        objectInputStream.readInt();
        objectInputStream.close();
        return readUTF.equals("yvlr");
    }

    static String e() {
        return UUID.randomUUID().toString() + ".ybin";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Map<String, Object> a(String str, Context context) {
        boolean z;
        Map<String, Object> map = null;
        synchronized (co.class) {
            if (context != null) {
                if (bz.aK().g() != null) {
                    try {
                        map = b(bz.aK().g(), str, context);
                    } catch (Exception e) {
                        cb.b(m(), "incorrect key", true);
                        cb.a(m(), "Caught Exception->" + e.getMessage(), e);
                        if (bz.aK().h() != null && bz.aK().h().size() > 0) {
                            Iterator<String> it = bz.aK().h().iterator();
                            while (true) {
                                Map<String, Object> map2 = map;
                                if (!it.hasNext()) {
                                    map = map2;
                                    break;
                                }
                                try {
                                    map = b(bz.aK().c(it.next()), str, context);
                                    z = false;
                                } catch (Exception e2) {
                                    map = map2;
                                    z = true;
                                }
                                if (!z) {
                                    a(map, str, context);
                                    break;
                                }
                            }
                        }
                    }
                }
                if (map == null) {
                    map = new HashMap<>();
                }
            }
        }
        return map;
    }

    static Map<String, Object> b(String str, String str2, Context context) throws Exception {
        SecretKey j = j(str);
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(2, j);
        ObjectInputStream objectInputStream = new ObjectInputStream(new CipherInputStream(context.openFileInput(str2), cipher));
        objectInputStream.readUTF();
        objectInputStream.readInt();
        Map<String, Object> map = (Map) ((SealedObject) objectInputStream.readObject()).getObject(cipher);
        objectInputStream.close();
        return map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Map<String, Object> a(String str, boolean z) {
        Map<String, Object> map = null;
        synchronized (co.class) {
            if (bz.aK().l() != null) {
                String a2 = a(bz.aK().l());
                if (a2 != null) {
                    Map<String, Object> a3 = a(a2, bz.aK().l());
                    if (a3 != null && a3.containsKey(str)) {
                        map = (Map) a3.get(str);
                    } else if (z) {
                        map = new HashMap<>();
                        if (a3 == null) {
                            new HashMap();
                        }
                    }
                } else if (z) {
                    cb.b(m(), "fileStore is null. creating new entry", true);
                    new HashMap();
                    map = new HashMap<>();
                }
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(String str, Map<String, Object> map) {
        Map hashMap;
        synchronized (co.class) {
            if (bz.aK().l() == null) {
                cb.b(m(), "application context is null, cannot save new entry", true);
            } else {
                try {
                    String a2 = a(bz.aK().l());
                    if (a2 != null) {
                        hashMap = a(a2, bz.aK().l());
                    } else {
                        cb.b(m(), "filestore is null, saving new entry", true);
                        hashMap = new HashMap();
                    }
                    hashMap.put(str, map);
                    a(hashMap, a2, bz.aK().l());
                } catch (Exception e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(String str) {
        Map<String, Object> a2;
        if (bz.aK().l() == null) {
            cb.b(m(), "cannot delete map, app context is null", true);
            return;
        }
        try {
            String a3 = a(bz.aK().l());
            if (a3 != null && (a2 = a(a3, bz.aK().l())) != null && a2.containsKey(str)) {
                a2.remove(str);
                a(a2, a3, bz.aK().l());
            }
        } catch (Exception e) {
        }
    }

    static SecretKey j(String str) throws Exception {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[0];
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("ASCII");
            if (bytes.length > 32) {
                throw new bs(bn.a.YVOLVER_ERROR_IO_FAILURE, "The number of bytes in the key is > 32.");
            }
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            return new SecretKeySpec(bArr, "AES");
        } catch (UnsupportedEncodingException e) {
            cb.a(m(), "Caught Exception->" + e.getMessage(), e);
            return null;
        }
    }

    static String b(String str, Map<String, Object> map) {
        if (str == null || map == null) {
            return null;
        }
        String str2 = "";
        Iterator it = new TreeSet(map.keySet()).iterator();
        while (true) {
            String str3 = str2;
            if (it.hasNext()) {
                String str4 = (String) it.next();
                str2 = (str3 + str4) + map.get(str4);
            } else {
                return a(str3, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, Map<String, Object> map, String[] strArr) {
        if (map == null || str == null) {
            return "";
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        return a(a(hashMap, strArr), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Map<String, Object> map, String[] strArr) {
        if (map == null) {
            return null;
        }
        if (strArr != null) {
            for (String str : strArr) {
                if (map.containsKey(str)) {
                    map.remove(str);
                }
            }
        }
        Map<String, Object> c = c(map);
        TreeSet<String> treeSet = new TreeSet(c.keySet());
        StringBuilder sb = new StringBuilder();
        for (String str2 : treeSet) {
            sb.append(str2);
            sb.append(c.get(str2));
        }
        return sb.toString();
    }

    static Map<String, Object> c(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        while (!map.isEmpty()) {
            try {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof Map) {
                        Map map2 = (Map) value;
                        if (!map2.isEmpty()) {
                            for (Map.Entry entry2 : map2.entrySet()) {
                                hashMap2.put(key + "." + ((String) entry2.getKey()), entry2.getValue());
                            }
                        } else {
                            hashMap.put(key, "");
                        }
                    } else if (value instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) value;
                        if (!arrayList.isEmpty()) {
                            for (int i = 0; i < arrayList.size(); i++) {
                                hashMap2.put(key + "." + i, arrayList.get(i));
                            }
                        } else {
                            hashMap.put(key, "");
                        }
                    } else if (value != null) {
                        if (value.equals(false)) {
                            hashMap.put(key, 0);
                        } else if (value.equals(true)) {
                            hashMap.put(key, 1);
                        } else if (!value.equals(null)) {
                            hashMap.put(key, value);
                        } else {
                            hashMap.put(key, "");
                        }
                    } else {
                        hashMap.put(key, "");
                    }
                }
                map = hashMap2;
            } catch (Exception e) {
                cb.b(m(), "caught exception while flattenDictionary.", true);
                e.printStackTrace();
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> k(String str) {
        HashMap hashMap = new HashMap();
        if (str != null) {
            for (String str2 : str.split(Pattern.quote("&"))) {
                String[] split = str2.split(Pattern.quote("="), 2);
                if (split.length == 2) {
                    hashMap.put(Uri.decode(split[0]), Uri.decode(split[1]));
                } else {
                    hashMap.put(Uri.decode(split[0]), "");
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        String str = "?";
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            str = (i > 0 ? str + '&' : str) + Uri.encode(entry.getKey()) + '=' + Uri.encode(entry.getValue());
            i++;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double a(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        return ((Number) obj).doubleValue() / 1000000.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(Map<String, Object> map, String str) {
        synchronized (co.class) {
            if (bz.aK().l() == null) {
                cb.b(m(), "failed to save file due to context or filename error ", true);
            } else {
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(bz.aK().l().openFileOutput(str, 0));
                    objectOutputStream.writeObject(map);
                    objectOutputStream.flush();
                    objectOutputStream.close();
                } catch (FileNotFoundException e) {
                    cb.a(m(), "FILE " + str + " NOT FOUND. Exception->" + e.getMessage(), e);
                } catch (IOException e2) {
                    cb.a(m(), "Caught Exception->" + e2.getMessage(), e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Map<String, Object> l(String str) {
        Map<String, Object> map;
        synchronized (co.class) {
            if (bz.aK().l() == null || str == null) {
                cb.b(m(), "failed to load file due to context or filename error ", true);
                map = null;
            } else {
                try {
                    if (bz.aK().l().getFileStreamPath(str).exists()) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(bz.aK().l().openFileInput(str));
                        map = (Map) objectInputStream.readObject();
                        try {
                            objectInputStream.close();
                        } catch (Exception e) {
                            cb.b(m(), "failed to load " + str, true);
                            return map;
                        }
                    } else {
                        map = new HashMap<>();
                    }
                } catch (Exception e2) {
                    map = null;
                }
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized List<Map<String, Object>> m(String str) {
        ArrayList arrayList;
        synchronized (co.class) {
            if (bz.aK().l() == null || str == null) {
                cb.b(m(), "failed to load file due to context or filename error ", true);
                arrayList = null;
            } else {
                try {
                    if (bz.aK().l().getFileStreamPath(str).exists()) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(bz.aK().l().openFileInput(str));
                        ArrayList arrayList2 = new ArrayList();
                        while (true) {
                            try {
                                try {
                                    arrayList2.add((Map) objectInputStream.readObject());
                                } catch (Exception e) {
                                    arrayList = arrayList2;
                                    cb.b(m(), "failed to load " + str, true);
                                    return arrayList;
                                }
                            } catch (EOFException e2) {
                                objectInputStream.close();
                                arrayList = arrayList2;
                            }
                        }
                    } else {
                        arrayList = new ArrayList();
                    }
                } catch (Exception e3) {
                    arrayList = null;
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(List<Map<String, Object>> list, String str) {
        synchronized (co.class) {
            if (bz.aK().l() == null || str == null || list == null) {
                cb.b(m(), "failed to save map due to context or filename error ", true);
            } else {
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(bz.aK().l().openFileOutput(str, 0));
                    for (Map<String, Object> map : list) {
                        objectOutputStream.writeObject(map);
                    }
                    objectOutputStream.flush();
                    objectOutputStream.close();
                } catch (FileNotFoundException e) {
                    cb.a(m(), "FILE " + str + " NOT FOUND. Exception->" + e.getMessage(), e);
                } catch (IOException e2) {
                    cb.a(m(), "Caught IOException->" + e2.getMessage(), e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject e(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        if (map == null) {
            return jSONObject;
        }
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getValue() instanceof Map) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                        if (entry2.getValue() instanceof Map) {
                            jSONObject2.put((String) entry2.getKey(), e((Map) entry2.getValue()));
                        } else {
                            jSONObject2.put((String) entry2.getKey(), entry2.getValue());
                        }
                    }
                    jSONObject.put(entry.getKey(), jSONObject2);
                } else {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        } catch (JSONException e) {
            cb.a(m(), "error converting to json. Exception->" + e.getMessage(), e);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONArray f(Map<String, Object> map) {
        JSONArray jSONArray = new JSONArray();
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONArray.put(e((Map) entry.getValue()));
            }
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HashMap<String, Serializable> b(JSONObject jSONObject) throws JSONException {
        HashMap<String, Serializable> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof Serializable) {
                hashMap.put(next, (Serializable) obj);
            } else if (obj instanceof JSONArray) {
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.get(i));
                }
                hashMap.put(next, arrayList);
            } else {
                hashMap.put(next, b((JSONObject) obj));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2, String str3, ArrayList<Map.Entry<String, String>> arrayList) {
        boolean z;
        boolean z2 = true;
        String replaceAll = UUID.randomUUID().toString().replaceAll("-", "");
        String l = Long.toString(System.currentTimeMillis() / 1000);
        TreeMap treeMap = new TreeMap();
        try {
            try {
                if (str.equals("POST")) {
                }
                treeMap.put("oauth_consumer_key", str2);
                treeMap.put("oauth_nonce", replaceAll);
                treeMap.put("oauth_signature_method", "HMAC-SHA1");
                treeMap.put("oauth_timestamp", l);
                treeMap.put("oauth_version", "1.0");
                for (Map.Entry<String, String> entry : treeMap.entrySet()) {
                    arrayList.add(entry);
                }
                Collections.sort(arrayList, new Comparator<Map.Entry<String, String>>() { // from class: com.adcolony.sdk.co.1
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(Map.Entry<String, String> entry2, Map.Entry<String, String> entry3) {
                        return entry2.getKey().compareToIgnoreCase(entry3.getKey());
                    }
                });
                StringBuilder sb = new StringBuilder();
                Iterator<Map.Entry<String, String>> it = arrayList.iterator();
                boolean z3 = true;
                while (it.hasNext()) {
                    Map.Entry<String, String> next = it.next();
                    if (z3) {
                        z = false;
                    } else {
                        sb.append("&");
                        z = z3;
                    }
                    try {
                        sb.append(URLEncoder.encode(next.getKey(), "UTF-8"));
                        sb.append("=");
                        sb.append(URLEncoder.encode(next.getValue(), "UTF-8"));
                    } catch (UnsupportedEncodingException e) {
                        cb.a(m(), "Caught Exception->" + e.getMessage(), e);
                    }
                    z3 = z;
                }
                byte[] bytes = String.format("%s&%s&%s", str, URLEncoder.encode(str3, "UTF-8"), URLEncoder.encode(sb.toString(), "UTF-8").replaceAll("%2B", "%2520")).getBytes("UTF-8");
                SecretKeySpec secretKeySpec = new SecretKeySpec((bz.aK().g() + "&").getBytes("UTF-8"), "HmacSHA1");
                Mac mac = Mac.getInstance("HmacSHA1");
                mac.init(secretKeySpec);
                String encodeToString = Base64.encodeToString(mac.doFinal(bytes), 2);
                ArrayList arrayList2 = new ArrayList();
                treeMap.put("oauth_signature", encodeToString);
                for (Map.Entry entry2 : treeMap.entrySet()) {
                    arrayList2.add(entry2);
                }
                StringBuilder sb2 = new StringBuilder();
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    boolean z4 = z2;
                    if (it2.hasNext()) {
                        Map.Entry entry3 = (Map.Entry) it2.next();
                        if (z4) {
                            z2 = false;
                        } else {
                            sb2.append(",");
                            z2 = z4;
                        }
                        try {
                            sb2.append(URLEncoder.encode((String) entry3.getKey(), "UTF-8"));
                            sb2.append("=\"");
                            sb2.append(URLEncoder.encode((String) entry3.getValue(), "UTF-8")).append("\"");
                        } catch (UnsupportedEncodingException e2) {
                            cb.a(m(), "Caught Exception->" + e2.getMessage(), e2);
                        }
                    } else {
                        return "OAuth " + sb2.toString();
                    }
                }
            } catch (UnsupportedEncodingException e3) {
                cb.a(m(), "Caught Exception->" + e3.getMessage(), e3);
                return null;
            }
        } catch (InvalidKeyException e4) {
            cb.a(m(), "Caught Exception->" + e4.getMessage(), e4);
            return null;
        } catch (NoSuchAlgorithmException e5) {
            cb.a(m(), "Caught Exception->" + e5.getMessage(), e5);
            return null;
        } catch (Exception e6) {
            cb.a(m(), "Caught Exception->" + e6.getMessage(), e6);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f() {
        if (Build.VERSION.SDK_INT < 14) {
            cb.b(m(), "OS is too old. Not supported.");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long g() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(long j) {
        bz.aK().a(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long h() {
        return g() + bz.aK().aE();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat.format(Calendar.getInstance().getTime());
        } catch (Exception e) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j() {
        try {
            g();
            long h = h();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat.format(new Date(h));
        } catch (Exception e) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(long j) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat.format(new Date(j));
        } catch (Exception e) {
            return "";
        }
    }

    static void k() {
        AlertDialog.Builder builder = new AlertDialog.Builder(bz.aK().l());
        builder.setTitle("Permission Needed");
        builder.setMessage("Yvolver needs permission to show pop up notifications over the application you are using. Please enable this permission on the next screen.");
        builder.setCancelable(false);
        builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.adcolony.sdk.co.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                bz.aK().j().startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + bz.aK().l().getPackageName())), 2211);
            }
        });
        builder.create().show();
    }

    public static <T> Iterable<T> a(Iterable<T> iterable) {
        return iterable == null ? Collections.emptyList() : iterable;
    }

    public static boolean l() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) bz.aK().l().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static void a(WebView webView, String str) {
        if (webView != null && str != null) {
            if (!l()) {
                webView.getSettings().setCacheMode(1);
            } else {
                webView.getSettings().setCacheMode(-1);
            }
            webView.loadUrl(str);
        }
    }

    static void a(Activity activity) {
        int i = activity.getResources().getConfiguration().orientation;
        int orientation = activity.getWindowManager().getDefaultDisplay().getOrientation();
        if (orientation == 0 || orientation == 1) {
            if (i == 1) {
                activity.setRequestedOrientation(1);
            } else if (i == 2) {
                activity.setRequestedOrientation(0);
            }
        } else if (orientation == 2 || orientation == 3) {
            if (i == 1) {
                activity.setRequestedOrientation(9);
            } else if (i == 2) {
                activity.setRequestedOrientation(8);
            }
        }
    }

    static void b(Activity activity) {
        activity.setRequestedOrientation(-1);
    }
}
