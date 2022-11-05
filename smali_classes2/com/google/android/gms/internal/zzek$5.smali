.class Lcom/google/android/gms/internal/zzek$5;
.super Lcom/google/android/gms/internal/zzek$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzek;->zzl(Landroid/content/Context;)Lcom/google/android/gms/internal/zzey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzek$zza",
        "<",
        "Lcom/google/android/gms/internal/zzey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztf:Landroid/content/Context;

.field final synthetic zzzQ:Lcom/google/android/gms/internal/zzek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzek$5;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzek$5;->zztf:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzek$zza;-><init>(Lcom/google/android/gms/internal/zzek;)V

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/internal/zzew;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzek$5;->zzd(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zzey;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zzey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$5;->zztf:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    const v1, 0x9d2290

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzew;->getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/zzey;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzeJ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzek$5;->zzeL()Lcom/google/android/gms/internal/zzey;

    move-result-object v0

    return-object v0
.end method

.method public zzeL()Lcom/google/android/gms/internal/zzey;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$5;->zzzQ:Lcom/google/android/gms/internal/zzek;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzek;->zzd(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzfj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$5;->zztf:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfj;->zzm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzey;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$5;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$5;->zztf:Landroid/content/Context;

    const-string v2, "mobile_ads_settings"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzek;->zza(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfm;-><init>()V

    goto :goto_0
.end method
