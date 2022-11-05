.class public Lcom/google/android/gms/internal/zzbqz;
.super Ljava/lang/Object;


# instance fields
.field private final zzchZ:Lcom/google/android/gms/internal/zzbrc;

.field private final zzcia:Lcom/google/android/gms/internal/zzbrw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqz;->zzchZ:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqz;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbpc;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/android/gms/internal/zzbqx;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqy$zza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchT:Lcom/google/android/gms/internal/zzbqy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqy$zza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqz;->zzchZ:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqx;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZU()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqz;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbqw;->zzg(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbqz;)Lcom/google/android/gms/internal/zzbrw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqz;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-object v0
.end method

.method private zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqy$zza;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;",
            "Lcom/google/android/gms/internal/zzbqy$zza;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbpc;",
            ">;",
            "Lcom/google/android/gms/internal/zzbrx;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/zzbqy$zza;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqz;->zzaaa()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqw;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/android/gms/internal/zzbqy$zza;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0, v1, p5}, Lcom/google/android/gms/internal/zzbqz;->zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbpc;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/android/gms/internal/zzbqx;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private zzaaa()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbqz$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbqz$1;-><init>(Lcom/google/android/gms/internal/zzbqz;)V

    return-object v0
.end method


# virtual methods
.method public zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;",
            "Lcom/google/android/gms/internal/zzbrx;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbpc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzbqy$zza;->zzchW:Lcom/google/android/gms/internal/zzbqy$zza;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbqy$zza;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqz;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZX()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzbrw;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZU()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqw;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzbqw;->zzc(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/zzbqy$zza;->zzchT:Lcom/google/android/gms/internal/zzbqy$zza;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbqz;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqy$zza;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;)V

    sget-object v2, Lcom/google/android/gms/internal/zzbqy$zza;->zzchU:Lcom/google/android/gms/internal/zzbqy$zza;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbqz;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqy$zza;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;)V

    sget-object v2, Lcom/google/android/gms/internal/zzbqy$zza;->zzchV:Lcom/google/android/gms/internal/zzbqy$zza;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbqz;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqy$zza;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;)V

    sget-object v2, Lcom/google/android/gms/internal/zzbqy$zza;->zzchW:Lcom/google/android/gms/internal/zzbqy$zza;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbqz;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqy$zza;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;)V

    sget-object v2, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbqz;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqy$zza;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;)V

    return-object v1
.end method
