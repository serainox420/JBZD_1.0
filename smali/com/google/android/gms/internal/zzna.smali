.class public Lcom/google/android/gms/internal/zzna;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field public zzRA:Ljava/lang/String;

.field public zzRF:Landroid/os/Bundle;

.field public zzRM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzTf:Landroid/os/Bundle;

.field public zzTg:Lcom/google/android/gms/internal/zznm$zza;

.field public zzTh:Ljava/lang/String;

.field public zzTi:Lcom/google/android/gms/internal/zzmk;

.field public zzTj:Lcom/google/android/gms/internal/zzni;

.field public zzTk:Lorg/json/JSONObject;

.field public zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field public zzzb:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzna;->zzTk:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzni;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzTj:Lcom/google/android/gms/internal/zzni;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zznm$zza;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzTg:Lcom/google/android/gms/internal/zznm$zza;

    return-object p0
.end method

.method public zzaK(Ljava/lang/String;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzRA:Ljava/lang/String;

    return-object p0
.end method

.method public zzaL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzTh:Ljava/lang/String;

    return-object p0
.end method

.method public zzb(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object p0
.end method

.method public zzc(Landroid/location/Location;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzzb:Landroid/location/Location;

    return-object p0
.end method

.method public zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzTf:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzRF:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzTi:Lcom/google/android/gms/internal/zzmk;

    return-object p0
.end method

.method public zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzna;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzTk:Lorg/json/JSONObject;

    return-object p0
.end method

.method public zzk(Ljava/util/List;)Lcom/google/android/gms/internal/zzna;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzna;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    return-object p0
.end method
