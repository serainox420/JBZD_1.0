.class Lcom/google/android/gms/internal/zzbpr$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzZj()Ljava/util/List;
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
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/zzbqy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$9;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$9;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$9;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbql;->zzWR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$9;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzc(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpy;->zzZs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$9;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    new-instance v2, Lcom/google/android/gms/internal/zzbqb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbqb;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Z)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
