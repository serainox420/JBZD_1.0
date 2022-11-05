.class Lcom/google/android/gms/ads/internal/zzv$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzv;->zzcC()Ljava/util/concurrent/Future;
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
        "Lcom/google/android/gms/internal/zzck;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzuy:Lcom/google/android/gms/ads/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$3;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

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

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv$3;->zzcD()Lcom/google/android/gms/internal/zzck;

    move-result-object v0

    return-object v0
.end method

.method public zzcD()Lcom/google/android/gms/internal/zzck;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzck;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv$3;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzv;->zzc(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzqh;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv$3;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzv;->zzd(Lcom/google/android/gms/ads/internal/zzv;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzck;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-object v0
.end method
