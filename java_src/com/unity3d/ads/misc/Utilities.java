package com.unity3d.ads.misc;

import android.os.Handler;
import android.os.Looper;
import com.facebook.appevents.AppEventsConstants;
import com.flurry.android.Constants;
import com.unity3d.ads.log.DeviceLog;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3.dex */
public class Utilities {
    public static void runOnUiThread(Runnable runnable) {
        runOnUiThread(runnable, 0L);
    }

    public static void runOnUiThread(Runnable runnable, long j) {
        Handler handler = new Handler(Looper.getMainLooper());
        if (j > 0) {
            handler.postDelayed(runnable, j);
        } else {
            handler.post(runnable);
        }
    }

    public static String Sha256(String str) {
        return Sha256(str.getBytes());
    }

    public static String Sha256(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr, 0, bArr.length);
            return toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            DeviceLog.exception("SHA-256 algorithm not found", e);
            return null;
        }
    }

    public static String toHexString(byte[] bArr) {
        int i;
        int length = bArr.length;
        String str = "";
        int i2 = 0;
        while (i2 < length) {
            if ((bArr[i2] & Constants.UNKNOWN) <= 15) {
                str = str + AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            i2++;
            str = str + Integer.toHexString(i);
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean writeFile(File file, String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        boolean z = false;
        if (file != null) {
            try {
                try {
                    fileOutputStream2 = new FileOutputStream(file);
                    try {
                        fileOutputStream2.write(str.getBytes());
                        fileOutputStream2.flush();
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (Exception e) {
                                String str2 = "Error closing FileOutputStream";
                                DeviceLog.exception(str2, e);
                                z = true;
                                fileOutputStream = str2;
                            }
                        }
                        z = true;
                        fileOutputStream = fileOutputStream2;
                    } catch (Exception e2) {
                        e = e2;
                        DeviceLog.exception("Could not write file", e);
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                                fileOutputStream = fileOutputStream2;
                            } catch (Exception e3) {
                                String str3 = "Error closing FileOutputStream";
                                DeviceLog.exception(str3, e3);
                                fileOutputStream = str3;
                            }
                        }
                        if (z) {
                        }
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e4) {
                            DeviceLog.exception("Error closing FileOutputStream", e4);
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                fileOutputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                if (fileOutputStream != null) {
                }
                throw th;
            }
            if (z) {
                DeviceLog.debug("Wrote file: " + file.getAbsolutePath());
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x002f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x002a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String readFile(File file) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String str = null;
        if (file != null) {
            String str2 = "";
            if (file.exists() && file.canRead()) {
                try {
                    fileReader = new FileReader(file);
                    try {
                        bufferedReader = new BufferedReader(fileReader);
                        while (true) {
                            try {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                str2 = str2.concat(readLine);
                            } catch (Exception e) {
                                e = e;
                                DeviceLog.exception("Problem reading file", e);
                                if (bufferedReader != null) {
                                }
                                if (fileReader != null) {
                                }
                                return str;
                            }
                        }
                        str = str2;
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = null;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileReader = null;
                    bufferedReader = null;
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception e4) {
                        DeviceLog.exception("Couldn't close BufferedReader", e4);
                    }
                }
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (Exception e5) {
                        DeviceLog.exception("Couldn't close FileReader", e5);
                    }
                }
            } else {
                DeviceLog.error("File did not exist or couldn't be read");
            }
        }
        return str;
    }

    public static byte[] readFileBytes(File file) throws IOException {
        if (file == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.close();
                fileInputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
