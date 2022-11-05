.class Lcom/google/android/gms/internal/zzbpr$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;
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
.field final synthetic zzcfR:Z

.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcfb:J

.field final synthetic zzcgf:Z

.field final synthetic zzcgg:Lcom/google/android/gms/internal/zzbsw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;ZJZLcom/google/android/gms/internal/zzbsw;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfR:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfb:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcgf:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcgg:Lcom/google/android/gms/internal/zzbsw;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$8;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfb:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbql;->zzaD(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzc(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpy;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfb:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbpy;->zzaO(J)Lcom/google/android/gms/internal/zzbpv;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzc(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpy;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfb:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzbpy;->zzaP(J)Z

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcgf:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcgg:Lcom/google/android/gms/internal/zzbsw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzZp()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzZn()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/zzbql;->zzk(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzboy;Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/zzbql;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzZp()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    new-instance v3, Lcom/google/android/gms/internal/zzbqb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzbpr$8;->zzcgf:Z

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/zzbqb;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Z)V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbph;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    move-object v1, v0

    goto :goto_2
.end method
