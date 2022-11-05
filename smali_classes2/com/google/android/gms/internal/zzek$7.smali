.class Lcom/google/android/gms/internal/zzek$7;
.super Lcom/google/android/gms/internal/zzek$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zznu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzek$zza",
        "<",
        "Lcom/google/android/gms/internal/zznu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztf:Landroid/content/Context;

.field final synthetic zzzP:Lcom/google/android/gms/internal/zzka;

.field final synthetic zzzQ:Lcom/google/android/gms/internal/zzek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzek$7;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzek$7;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzek$7;->zzzP:Lcom/google/android/gms/internal/zzka;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzek$7;->zzf(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zznu;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzek$7;->zzeN()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    return-object v0
.end method

.method public zzeN()Lcom/google/android/gms/internal/zznu;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$7;->zzzQ:Lcom/google/android/gms/internal/zzek;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzek;->zzf(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzny;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$7;->zztf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzek$7;->zzzP:Lcom/google/android/gms/internal/zzka;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzny;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$7;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$7;->zztf:Landroid/content/Context;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzek;->zza(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfo;-><init>()V

    goto :goto_0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zznu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$7;->zztf:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$7;->zzzP:Lcom/google/android/gms/internal/zzka;

    const v2, 0x9d2290

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzew;->createRewardedVideoAd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    return-object v0
.end method
