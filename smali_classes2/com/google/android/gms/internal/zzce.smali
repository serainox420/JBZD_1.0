.class public abstract Lcom/google/android/gms/internal/zzce;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lcom/google/android/gms/common/api/Result;",
        "T2::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field private final zzro:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TT2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TT1;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lcom/google/android/gms/internal/zzce$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzce$1;-><init>(Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/common/api/ResultCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TT1;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lcom/google/android/gms/internal/zzce$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzce$2;-><init>(Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/common/api/ResultCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)TT1;"
        }
    .end annotation
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzro:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-void
.end method
