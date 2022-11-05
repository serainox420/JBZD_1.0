.class Lcom/google/android/gms/internal/zzbpr$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
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

.field final synthetic zzcfX:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfW:Lcom/google/android/gms/internal/zzbps;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfX:Ljava/util/Map;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$2;->zzMN()Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfW:Lcom/google/android/gms/internal/zzbps;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfX:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboy;->zzaC(Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/zzbql;->zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    new-instance v3, Lcom/google/android/gms/internal/zzbqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbqf;->zzc(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbqf;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/zzbqd;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$2;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
