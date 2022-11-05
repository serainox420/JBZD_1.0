.class Lcom/google/android/gms/internal/zzce$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzce;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic zzrp:Lcom/google/android/gms/common/api/ResultCallback;

.field final synthetic zzrq:Lcom/google/android/gms/internal/zzce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzce$1;->zzrq:Lcom/google/android/gms/internal/zzce;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzce$1;->zzrp:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce$1;->zzrp:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzce$1;->zzrq:Lcom/google/android/gms/internal/zzce;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
