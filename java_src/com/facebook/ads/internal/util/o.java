package com.facebook.ads.internal.util;

import android.content.Context;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2247a = o.class.getName();
    private static final Object b = new Object();

    /* JADX WARN: Removed duplicated region for block: B:45:0x0086 A[Catch: all -> 0x0070, IOException -> 0x008f, TryCatch #4 {IOException -> 0x008f, blocks: (B:43:0x0081, B:45:0x0086, B:47:0x008b), top: B:70:0x0081, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008b A[Catch: all -> 0x0070, IOException -> 0x008f, TRY_LEAVE, TryCatch #4 {IOException -> 0x008f, blocks: (B:43:0x0081, B:45:0x0086, B:47:0x008b), top: B:70:0x0081, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONArray a(Context context) {
        InputStreamReader inputStreamReader;
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        FileInputStream fileInputStream2;
        BufferedReader bufferedReader2 = null;
        bufferedReader2 = null;
        r2 = null;
        bufferedReader2 = null;
        InputStreamReader inputStreamReader2 = null;
        JSONArray jSONArray = new JSONArray();
        synchronized (b) {
            try {
                if (new File(context.getFilesDir(), "crasheslog").exists()) {
                    fileInputStream = context.openFileInput("crasheslog");
                    try {
                        inputStreamReader = new InputStreamReader(fileInputStream);
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            while (true) {
                                try {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    jSONArray.put(new JSONObject(readLine));
                                } catch (Exception e) {
                                    e = e;
                                    inputStreamReader2 = inputStreamReader;
                                    fileInputStream2 = fileInputStream;
                                    try {
                                        Log.e(f2247a, "Failed to read crashes", e);
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (IOException e2) {
                                                Log.e(f2247a, "Failed to close buffers", e2);
                                            }
                                        }
                                        if (inputStreamReader2 != null) {
                                            inputStreamReader2.close();
                                        }
                                        if (fileInputStream2 != null) {
                                            fileInputStream2.close();
                                        }
                                        return jSONArray;
                                    } catch (Throwable th) {
                                        th = th;
                                        fileInputStream = fileInputStream2;
                                        inputStreamReader = inputStreamReader2;
                                        bufferedReader2 = bufferedReader;
                                        if (bufferedReader2 != null) {
                                            try {
                                                bufferedReader2.close();
                                            } catch (IOException e3) {
                                                Log.e(f2247a, "Failed to close buffers", e3);
                                                throw th;
                                            }
                                        }
                                        if (inputStreamReader != null) {
                                            inputStreamReader.close();
                                        }
                                        if (fileInputStream != null) {
                                            fileInputStream.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedReader2 = bufferedReader;
                                    if (bufferedReader2 != null) {
                                    }
                                    if (inputStreamReader != null) {
                                    }
                                    if (fileInputStream != null) {
                                    }
                                    throw th;
                                }
                            }
                        } catch (Exception e4) {
                            e = e4;
                            bufferedReader = null;
                            inputStreamReader2 = inputStreamReader;
                            fileInputStream2 = fileInputStream;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        bufferedReader = null;
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th4) {
                        th = th4;
                        inputStreamReader = null;
                    }
                } else {
                    bufferedReader = null;
                    inputStreamReader = null;
                    fileInputStream = null;
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e6) {
                        Log.e(f2247a, "Failed to close buffers", e6);
                    }
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (Exception e7) {
                e = e7;
                bufferedReader = null;
                fileInputStream2 = null;
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = null;
                fileInputStream = null;
            }
        }
        return jSONArray;
    }

    private static JSONObject a(com.facebook.ads.internal.g.p pVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", UUID.randomUUID().toString());
        jSONObject.put("type", pVar.b());
        jSONObject.put("time", h.a(pVar.e()));
        jSONObject.put("session_time", h.a(pVar.f()));
        jSONObject.put("session_id", pVar.g());
        jSONObject.put("data", pVar.h() != null ? new JSONObject(pVar.h()) : new JSONObject());
        return jSONObject;
    }

    public static void a(com.facebook.ads.internal.g.p pVar, Context context) {
        if (pVar == null || context == null) {
            return;
        }
        synchronized (b) {
            try {
                JSONObject a2 = a(pVar);
                FileOutputStream openFileOutput = context.openFileOutput("crasheslog", 32768);
                openFileOutput.write((a2.toString() + "\n").getBytes());
                openFileOutput.close();
            } catch (Exception e) {
                Log.e(f2247a, "Failed to store crash", e);
            }
        }
    }

    public static void b(Context context) {
        synchronized (b) {
            File file = new File(context.getFilesDir(), "crasheslog");
            if (file.exists()) {
                file.delete();
            }
        }
    }
}
