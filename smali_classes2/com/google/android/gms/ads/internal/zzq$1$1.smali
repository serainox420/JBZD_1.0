.class Lcom/google/android/gms/ads/internal/zzq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzuf:Lcom/google/android/gms/ads/internal/zzq$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$1$1;->zzuf:Lcom/google/android/gms/ads/internal/zzq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$1$1;->zzuf:Lcom/google/android/gms/ads/internal/zzq$1;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq$1;->zzue:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/zzq;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$1$1;->zzuf:Lcom/google/android/gms/ads/internal/zzq$1;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq$1;->zzud:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzod;->zza(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
