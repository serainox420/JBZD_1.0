.class Lcom/google/android/gms/internal/zzbpr$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzt(Lcom/google/android/gms/internal/zzbph;)Ljava/util/List;
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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$12;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$12;->zzcdL:Lcom/google/android/gms/internal/zzbph;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$12;->zzMN()Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$12;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$12;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzi(Lcom/google/android/gms/internal/zzbrc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$12;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    new-instance v1, Lcom/google/android/gms/internal/zzbqc;

    sget-object v2, Lcom/google/android/gms/internal/zzbqf;->zzcgS:Lcom/google/android/gms/internal/zzbqf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$12;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
