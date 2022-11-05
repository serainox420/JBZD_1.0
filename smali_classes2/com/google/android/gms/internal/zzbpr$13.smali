.class Lcom/google/android/gms/internal/zzbpr$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
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

.field final synthetic zzcfW:Lcom/google/android/gms/internal/zzbps;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$13;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$13;->zzcfW:Lcom/google/android/gms/internal/zzbps;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$13;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$13;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$13;->zzcfW:Lcom/google/android/gms/internal/zzbps;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$13;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbql;->zzi(Lcom/google/android/gms/internal/zzbrc;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbqf;->zzc(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbqf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$13;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
