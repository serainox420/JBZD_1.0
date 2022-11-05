.class final Lcom/google/android/gms/internal/zzpn$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpn;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzXx:Lcom/google/android/gms/internal/zzqj;

.field final synthetic zzXz:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqj;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpn$4;->zzXx:Lcom/google/android/gms/internal/zzqj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpn$4;->zzXz:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$4;->zzXx:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$4;->zzXz:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
