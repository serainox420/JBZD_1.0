.class Lcom/google/android/gms/internal/zzbpr$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzg(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcfY:Lcom/google/android/gms/internal/zzbpc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbpr$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbpc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$3;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    move-object v5, v6

    move-object v7, v0

    move v3, v2

    :goto_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    if-eqz v0, :cond_12

    if-eqz v4, :cond_1

    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_2
    move-object v3, v4

    :goto_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    :goto_4
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzbpq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/zzbpq;-><init>(Lcom/google/android/gms/internal/zzbql;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    :goto_5
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/zzbql;->zzg(Lcom/google/android/gms/internal/zzbrc;)V

    if-eqz v0, :cond_9

    new-instance v5, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    move-object v0, v5

    :goto_6
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/zzbpq;->zzc(Lcom/google/android/gms/internal/zzbrc;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v2

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/google/android/gms/internal/zzbpr$3;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zze(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "View does not exist but we have a tag"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v3, v1

    :goto_7
    if-eqz v4, :cond_8

    :goto_8
    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    goto :goto_5

    :cond_7
    move v3, v2

    goto :goto_7

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzbql;->zzf(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v7

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpq;

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v5, v0, v1}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_a
    move-object v5, v0

    goto :goto_9

    :cond_b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    goto :goto_b

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzf(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr;->zze(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr;->zzg(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzc(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpy;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzbpy;->zzu(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbpz;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbpc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbqu;)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_10

    if-nez v4, :cond_10

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/zzbpq;->zzb(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2, v8, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbrd;)V

    :cond_10
    return-object v0

    :cond_11
    move-object v0, v5

    goto :goto_a

    :cond_12
    move v0, v3

    move-object v3, v4

    goto/16 :goto_3
.end method
