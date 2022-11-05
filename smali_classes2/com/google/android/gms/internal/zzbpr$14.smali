.class Lcom/google/android/gms/internal/zzbpr$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
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
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcfW:Lcom/google/android/gms/internal/zzbps;

.field final synthetic zzcgh:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcfW:Lcom/google/android/gms/internal/zzbps;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcgh:Lcom/google/android/gms/internal/zzbsc;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$14;->zzMN()Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcfW:Lcom/google/android/gms/internal/zzbps;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcgh:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/zzbql;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbsc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbqg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbqf;->zzc(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbqf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcgh:Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/gms/internal/zzbqg;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$14;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
