package com.google.android.gms.internal;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public class zzsk extends zzsa {
    private volatile String zzadh;
    private Future<String> zzaeS;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsk(zzsc zzscVar) {
        super(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzoT() {
        String zzoU = zzoU();
        try {
            return !zzx(zznU().getContext(), zzoU) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : zzoU;
        } catch (Exception e) {
            zze("Error saving clientId file", e);
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
    }

    private boolean zzx(Context context, String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdk("ClientId should be saved from worker thread");
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    zza("Storing clientId", str);
                    fileOutputStream = context.openFileOutput("gaClientId", 0);
                    fileOutputStream.write(str.getBytes());
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e) {
                            zze("Failed to close clientId writing stream", e);
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e2) {
                            zze("Failed to close clientId writing stream", e2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                zze("Error writing to clientId file", e3);
                if (fileOutputStream == null) {
                    return false;
                }
                try {
                    fileOutputStream.close();
                    return false;
                } catch (IOException e4) {
                    zze("Failed to close clientId writing stream", e4);
                    return false;
                }
            }
        } catch (FileNotFoundException e5) {
            zze("Error creating clientId file", e5);
            if (fileOutputStream == null) {
                return false;
            }
            try {
                fileOutputStream.close();
                return false;
            } catch (IOException e6) {
                zze("Failed to close clientId writing stream", e6);
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x008c -> B:63:0x002f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x008e -> B:63:0x002f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0093 -> B:63:0x002f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected String zzap(Context context) {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2;
        FileInputStream openFileInput;
        String str = null;
        com.google.android.gms.common.internal.zzac.zzdk("ClientId should be loaded from worker thread");
        try {
            try {
                openFileInput = context.openFileInput("gaClientId");
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        zze("Failed to close client id reading stream", e);
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e2) {
            fileInputStream2 = null;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e3) {
                    zze("Failed to close client id reading stream", e3);
                }
            }
            return str;
        } catch (IOException e4) {
            e = e4;
            fileInputStream = null;
            zze("Error reading client id file, deleting it", e);
            context.deleteFile("gaClientId");
            fileInputStream = fileInputStream;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    fileInputStream = fileInputStream;
                } catch (IOException e5) {
                    String str2 = "Failed to close client id reading stream";
                    zze(str2, e5);
                    fileInputStream = str2;
                }
            }
            return str;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            if (fileInputStream != null) {
            }
            throw th;
        }
        try {
            byte[] bArr = new byte[36];
            int read = openFileInput.read(bArr, 0, 36);
            if (openFileInput.available() > 0) {
                zzbS("clientId file seems corrupted, deleting it.");
                openFileInput.close();
                context.deleteFile("gaClientId");
                fileInputStream = openFileInput;
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                        fileInputStream = openFileInput;
                    } catch (IOException e6) {
                        String str3 = "Failed to close client id reading stream";
                        zze(str3, e6);
                        fileInputStream = str3;
                    }
                }
            } else if (read < 14) {
                zzbS("clientId file is empty, deleting it.");
                openFileInput.close();
                context.deleteFile("gaClientId");
                fileInputStream = openFileInput;
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                        fileInputStream = openFileInput;
                    } catch (IOException e7) {
                        String str4 = "Failed to close client id reading stream";
                        zze(str4, e7);
                        fileInputStream = str4;
                    }
                }
            } else {
                openFileInput.close();
                String str5 = new String(bArr, 0, read);
                zza("Read client id from disk", str5);
                FileInputStream fileInputStream3 = openFileInput;
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                        fileInputStream3 = openFileInput;
                    } catch (IOException e8) {
                        String str6 = "Failed to close client id reading stream";
                        zze(str6, e8);
                        fileInputStream3 = str6;
                    }
                }
                str = str5;
                fileInputStream = fileInputStream3;
            }
        } catch (FileNotFoundException e9) {
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
            }
            return str;
        } catch (IOException e10) {
            e = e10;
            zze("Error reading client id file, deleting it", e);
            context.deleteFile("gaClientId");
            fileInputStream = fileInputStream;
            if (fileInputStream != null) {
            }
            return str;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
    }

    public String zzoQ() {
        String str;
        zzob();
        synchronized (this) {
            if (this.zzadh == null) {
                this.zzaeS = zznU().zzc(new Callable<String>() { // from class: com.google.android.gms.internal.zzsk.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: zzbY */
                    public String call() throws Exception {
                        return zzsk.this.zzoS();
                    }
                });
            }
            if (this.zzaeS != null) {
                try {
                    this.zzadh = this.zzaeS.get();
                } catch (InterruptedException e) {
                    zzd("ClientId loading or generation was interrupted", e);
                    this.zzadh = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                } catch (ExecutionException e2) {
                    zze("Failed to load or generate client id", e2);
                    this.zzadh = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                if (this.zzadh == null) {
                    this.zzadh = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                zza("Loaded clientId", this.zzadh);
                this.zzaeS = null;
            }
            str = this.zzadh;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzoR() {
        synchronized (this) {
            this.zzadh = null;
            this.zzaeS = zznU().zzc(new Callable<String>() { // from class: com.google.android.gms.internal.zzsk.2
                @Override // java.util.concurrent.Callable
                /* renamed from: zzbY */
                public String call() throws Exception {
                    return zzsk.this.zzoT();
                }
            });
        }
        return zzoQ();
    }

    String zzoS() {
        String zzap = zzap(zznU().getContext());
        return zzap == null ? zzoT() : zzap;
    }

    protected String zzoU() {
        return UUID.randomUUID().toString().toLowerCase();
    }
}
