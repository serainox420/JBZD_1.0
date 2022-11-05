.class public Lcom/google/android/gms/internal/zzeb;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzeu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zzet;
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeb;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeu;

    const v5, 0x9d2290

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzeu;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;II)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzet$zza;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeb;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method protected zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeu;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeu$zza;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    return-object v0
.end method
