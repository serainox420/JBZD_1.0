.class Lcom/google/android/gms/internal/zzpr$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpr;->zzkW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzXR:Lcom/google/android/gms/internal/zzpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpr$4;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcU()Lcom/google/android/gms/internal/zzps;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpr$4;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpr;->zzd(Lcom/google/android/gms/internal/zzpr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpr$4;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpr;->zze(Lcom/google/android/gms/internal/zzpr;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpr$4;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzpr;->zzf(Lcom/google/android/gms/internal/zzpr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzps;->zzh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
