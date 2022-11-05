.class Lcom/google/android/gms/ads/internal/zzq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq;->zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzud:Ljava/lang/Runnable;

.field final synthetic zzue:Lcom/google/android/gms/ads/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$1;->zzue:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq$1;->zzud:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzq$1$1;-><init>(Lcom/google/android/gms/ads/internal/zzq$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpo;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
