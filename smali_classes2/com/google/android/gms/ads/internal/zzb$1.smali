.class Lcom/google/android/gms/ads/internal/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzec;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzpd;)Lcom/google/android/gms/internal/zzmk$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzsB:Lcom/google/android/gms/ads/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzb$1;->zzsB:Lcom/google/android/gms/ads/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb$1;->zzbX()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzbX()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
