.class public Lcom/google/android/gms/internal/zzbpq;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzcfI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrb;",
            "Lcom/google/android/gms/internal/zzbrd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcfJ:Lcom/google/android/gms/internal/zzbql;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbpq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbql;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbrd;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrd;",
            "Lcom/google/android/gms/internal/zzbqe;",
            "Lcom/google/android/gms/internal/zzbpz;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbrd;->zzb(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrd$zza;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzbrd$zza;->zzciv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/zzbqy$zza;->zzchU:Lcom/google/android/gms/internal/zzbqy$zza;

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZU()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/google/android/gms/internal/zzbqy$zza;->zzchT:Lcom/google/android/gms/internal/zzbqy$zza;

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZU()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v4

    invoke-interface {v0, v4, v3, v2}, Lcom/google/android/gms/internal/zzbql;->zza(Lcom/google/android/gms/internal/zzbrc;Ljava/util/Set;Ljava/util/Set;)V

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/zzbrd$zza;->zzciu:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public zzZg()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbrd;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public zzZh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpq;->zzZi()Lcom/google/android/gms/internal/zzbrd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzZi()Lcom/google/android/gms/internal/zzbrd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Lcom/google/android/gms/internal/zzbtb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Lcom/google/android/gms/internal/zzbpc;",
            "Lcom/google/firebase/database/c;",
            ")",
            "Lcom/google/android/gms/internal/zzbtb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbrc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzbrd;->zza(Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzbrd;->zza(Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbqu;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpc;",
            "Lcom/google/android/gms/internal/zzbpz;",
            "Lcom/google/android/gms/internal/zzbqu;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbpz;->zzc(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/zzbre;

    new-instance v5, Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v5, v2, v0, v1}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    invoke-direct {v4, v5, p3}, Lcom/google/android/gms/internal/zzbre;-><init>(Lcom/google/android/gms/internal/zzbqu;Lcom/google/android/gms/internal/zzbqu;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbrd;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/zzbrd;-><init>(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbre;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrd;->zzaat()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbpz;->zzd(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/zzbql;->zza(Lcom/google/android/gms/internal/zzbrc;Ljava/util/Set;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrd;->zzb(Lcom/google/android/gms/internal/zzbpc;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrd;->zzl(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqe;",
            "Lcom/google/android/gms/internal/zzbpz;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqe;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqf;->zzZD()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    sget-boolean v1, Lcom/google/android/gms/internal/zzbpq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbrd;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbrd;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrd;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpq;->zzZi()Lcom/google/android/gms/internal/zzbrd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbrc;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbpq;->zzb(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpq;->zzcfI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrd;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrd;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
