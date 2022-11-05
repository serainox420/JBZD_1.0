.class Lcom/google/android/gms/internal/zzek$6;
.super Lcom/google/android/gms/internal/zzek$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzek$zza",
        "<",
        "Lcom/google/android/gms/internal/zzhh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztf:Landroid/content/Context;

.field final synthetic zzzQ:Lcom/google/android/gms/internal/zzek;

.field final synthetic zzzR:Landroid/widget/FrameLayout;

.field final synthetic zzzS:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzek;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzek$6;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzek$6;->zzzR:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzek$6;->zzzS:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzek$6;->zztf:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzek$6;->zze(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/internal/zzhh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$6;->zzzR:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$6;->zzzS:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzew;->createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzhh;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzek$6;->zzeM()Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public zzeM()Lcom/google/android/gms/internal/zzhh;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$6;->zzzQ:Lcom/google/android/gms/internal/zzek;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzek;->zze(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzht;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$6;->zztf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzek$6;->zzzR:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzek$6;->zzzS:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzht;->zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzek$6;->zzzQ:Lcom/google/android/gms/internal/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek$6;->zztf:Landroid/content/Context;

    const-string v2, "native_ad_view_delegate"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzek;->zza(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfn;-><init>()V

    goto :goto_0
.end method
