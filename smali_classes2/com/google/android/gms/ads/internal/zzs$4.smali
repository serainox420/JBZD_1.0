.class Lcom/google/android/gms/ads/internal/zzs$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsX:Lcom/google/android/gms/internal/zzpb;

.field final synthetic zzuh:Lcom/google/android/gms/ads/internal/zzs;

.field final synthetic zzuk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;Ljava/lang/String;Lcom/google/android/gms/internal/zzpb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs$4;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzs$4;->zzuk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzs$4;->zzsX:Lcom/google/android/gms/internal/zzpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs$4;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvE:Landroid/support/v4/f/k;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs$4;->zzuk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs$4;->zzsX:Lcom/google/android/gms/internal/zzpb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb;->zzWi:Lcom/google/android/gms/internal/zzha$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzgx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhs;->zza(Lcom/google/android/gms/internal/zzhn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
