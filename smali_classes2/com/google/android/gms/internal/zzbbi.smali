.class public Lcom/google/android/gms/internal/zzbbi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/zze;


# instance fields
.field private final zzbJA:Landroid/os/Bundle;

.field private final zzbJB:Ljava/lang/String;

.field private final zzbJC:Ljava/util/Date;

.field private final zzbJD:Ljava/lang/String;

.field private zzbJE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbJF:Z

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzbb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJB:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJA:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJC:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJD:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJF:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJC:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzQI()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJE:Ljava/util/Map;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbb;->zzQI()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJE:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJE:Ljava/util/Map;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error calling measurement proxy:"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzRU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJB:Ljava/lang/String;

    return-object v0
.end method

.method public zzRV()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJA:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzRW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJD:Ljava/lang/String;

    return-object v0
.end method

.method public zzRX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJF:Z

    return v0
.end method

.method public zzaU(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbbi;->zzbJF:Z

    return-void
.end method
