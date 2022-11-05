.class Lcom/google/android/gms/internal/zzbpr$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)Ljava/util/List;
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

.field final synthetic zzcfX:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Ljava/util/Map;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcfX:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcdL:Lcom/google/android/gms/internal/zzbph;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$11;->zzMN()Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcfX:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboy;->zzaC(Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzbql;->zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    new-instance v2, Lcom/google/android/gms/internal/zzbqd;

    sget-object v3, Lcom/google/android/gms/internal/zzbqf;->zzcgS:Lcom/google/android/gms/internal/zzbqf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$11;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzbqd;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
