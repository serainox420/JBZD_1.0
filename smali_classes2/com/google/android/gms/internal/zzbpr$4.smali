.class Lcom/google/android/gms/internal/zzbpr$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Ljava/util/List;
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
        "<",
        "Lcom/google/android/gms/internal/zzbqy;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic zzceT:Lcom/google/android/gms/internal/zzbrc;

.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcfY:Lcom/google/android/gms/internal/zzbpc;

.field final synthetic zzcfZ:Lcom/google/firebase/database/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbpr$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfZ:Lcom/google/firebase/database/c;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$4;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbpq;->zzc(Lcom/google/android/gms/internal/zzbrc;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfZ:Lcom/google/firebase/database/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Lcom/google/android/gms/internal/zzbtb;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/zzbqq;->zzJ(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbtb;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbtb;->zzabJ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrc;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/zzbql;->zzh(Lcom/google/android/gms/internal/zzbrc;)V

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v5

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbph;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v6

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    if-nez v6, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    move v2, v5

    :goto_4
    if-nez v2, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v2

    :cond_6
    :goto_5
    if-eqz v3, :cond_a

    if-nez v6, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrd;

    new-instance v5, Lcom/google/android/gms/internal/zzbpr$zzc;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {v5, v7, v2}, Lcom/google/android/gms/internal/zzbpr$zzc;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrd;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr$zzc;->zza(Lcom/google/android/gms/internal/zzbpr$zzc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v8

    invoke-interface {v7, v2, v8, v5, v5}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzbpr$zza;)V

    goto :goto_6

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    move v6, v2

    goto :goto_3

    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfZ:Lcom/google/firebase/database/c;

    if-nez v2, :cond_b

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Ljava/util/List;)V

    :cond_c
    return-object v1

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v4

    sget-boolean v5, Lcom/google/android/gms/internal/zzbpr$4;->$assertionsDisabled:Z

    if-nez v5, :cond_e

    if-nez v4, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V

    goto :goto_7

    :cond_f
    move v6, v2

    goto/16 :goto_5
.end method
