.class Lcom/google/android/gms/internal/zzbpr$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;
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

.field final synthetic zzcfT:Lcom/google/android/gms/internal/zzbsc;

.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcfT:Lcom/google/android/gms/internal/zzbsc;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$10;->zzMN()Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcfT:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbql;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbsc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    new-instance v1, Lcom/google/android/gms/internal/zzbqg;

    sget-object v2, Lcom/google/android/gms/internal/zzbqf;->zzcgS:Lcom/google/android/gms/internal/zzbqf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$10;->zzcfT:Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbqg;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
