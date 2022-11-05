.class Lcom/google/android/gms/internal/zzmx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmx;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTb:Lcom/google/android/gms/internal/zzmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx$3;->zzTb:Lcom/google/android/gms/internal/zzmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmx$3;->zzTb:Lcom/google/android/gms/internal/zzmx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzb(Lcom/google/android/gms/internal/zzmx;)Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmx$3;->zzTb:Lcom/google/android/gms/internal/zzmx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzb(Lcom/google/android/gms/internal/zzmx;)Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmx$3;->zzTb:Lcom/google/android/gms/internal/zzmx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmx;->zza(Lcom/google/android/gms/internal/zzmx;Lcom/google/android/gms/internal/zzji$zzc;)Lcom/google/android/gms/internal/zzji$zzc;

    :cond_0
    return-void
.end method
