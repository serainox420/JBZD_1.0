.class public Lcom/google/android/gms/internal/zzbqp;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzchp:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrb;",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzchq:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrb;",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzchr:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzchs:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzchb:Lcom/google/android/gms/internal/zzbqm;

.field private zzcht:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrb;",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzchu:Lcom/google/android/gms/internal/zzbsw;

.field private zzchv:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbqp;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbqp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchp:Lcom/google/android/gms/internal/zzbqr;

    new-instance v0, Lcom/google/android/gms/internal/zzbqp$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqp$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchq:Lcom/google/android/gms/internal/zzbqr;

    new-instance v0, Lcom/google/android/gms/internal/zzbqp$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqp$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchr:Lcom/google/android/gms/internal/zzbqr;

    new-instance v0, Lcom/google/android/gms/internal/zzbqp$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqp$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchs:Lcom/google/android/gms/internal/zzbqr;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbqm;Lcom/google/android/gms/internal/zzbrn;Lcom/google/android/gms/internal/zzbsw;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqp;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqp;->zzchu:Lcom/google/android/gms/internal/zzbsw;

    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqp;->zzZK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->zzWQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzbqo;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zzb(Lcom/google/android/gms/internal/zzbqo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zzE(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqp;->zzchp:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzF(Lcom/google/android/gms/internal/zzbph;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzbqo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private zzZK()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchu:Lcom/google/android/gms/internal/zzbsw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsw;->zzabI()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbqm;->zzaF(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbqm;->endTransaction()V

    throw v0
.end method

.method static synthetic zzZM()Lcom/google/android/gms/internal/zzbqr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchr:Lcom/google/android/gms/internal/zzbqr;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbqh;J)J
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbqh;->zzZF()F

    move-result v1

    sub-float/2addr v0, v1

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbqh;->zzZG()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqr;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzb(Lcom/google/android/gms/internal/zzbqo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbqo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbqp;Lcom/google/android/gms/internal/zzbqo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqo;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbqo;)V
    .locals 6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbqp;->zzj(Lcom/google/android/gms/internal/zzbrc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    move-object v1, v0

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzbqo;->id:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbqo;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbte;->zzbb(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbrc;Z)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbqp;->zzk(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchu:Lcom/google/android/gms/internal/zzbsw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsw;->zzabI()J

    move-result-wide v4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzbqo;->zzaR(J)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbqo;->zzbg(Z)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqo;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzbqp;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "If we\'re setting the query to inactive, we should already be tracking it!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbqo;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    const/4 v6, 0x0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbqo;-><init>(JLcom/google/android/gms/internal/zzbrc;JZZ)V

    goto :goto_0
.end method

.method private static zzj(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzk(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public zzA(Lcom/google/android/gms/internal/zzbph;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbqp$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqp$5;-><init>(Lcom/google/android/gms/internal/zzbqp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbqq$zza;)V

    return-void
.end method

.method public zzB(Lcom/google/android/gms/internal/zzbph;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/zzbqp;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zzo(Lcom/google/android/gms/internal/zzbrc;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Path is fully complete."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzF(Lcom/google/android/gms/internal/zzbph;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbqm;->zzg(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/zzbqp;->zzchp:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public zzC(Lcom/google/android/gms/internal/zzbph;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzE(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbqo;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzbqp;->zzchv:J

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqp;->zzchu:Lcom/google/android/gms/internal/zzbsw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzbsw;->zzabI()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbqo;-><init>(JLcom/google/android/gms/internal/zzbrc;JZZ)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqo;)V

    :cond_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/google/android/gms/internal/zzbqp;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzbqo;->zzcho:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should have been handled above!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqo;->zzZJ()Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    goto :goto_0
.end method

.method public zzD(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqp;->zzchq:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzZL()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchr:Lcom/google/android/gms/internal/zzbqr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqh;)Lcom/google/android/gms/internal/zzbqn;
    .locals 10

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchr:Lcom/google/android/gms/internal/zzbqr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqr;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqh;J)J

    move-result-wide v6

    new-instance v1, Lcom/google/android/gms/internal/zzbqn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbqn;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Pruning old queries.  Prunable: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Count to prune: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqp$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbqp$6;-><init>(Lcom/google/android/gms/internal/zzbqp;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    :goto_0
    int-to-long v8, v2

    cmp-long v0, v8, v6

    if-gez v0, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzbqn;->zzy(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqn;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zzm(Lcom/google/android/gms/internal/zzbrc;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    long-to-int v0, v6

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbqn;->zzz(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqn;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzbqp;->zzchs:Lcom/google/android/gms/internal/zzbqr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqr;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unprunable queries: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbqn;->zzz(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqn;

    move-result-object v2

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbqp;->zzb(Lcom/google/android/gms/internal/zzbrc;Z)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbqp;->zzb(Lcom/google/android/gms/internal/zzbrc;Z)V

    return-void
.end method

.method public zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbqp;->zzk(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbqp;->zzk(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    sget-boolean v2, Lcom/google/android/gms/internal/zzbqp;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Query must exist to be removed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqp;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzbqo;->id:J

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/zzbqm;->zzaE(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzJ(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    :cond_1
    return-void
.end method

.method public zzn(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbqp;->zzk(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzbqo;->zzcho:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqo;->zzZJ()Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqo;)V

    :cond_0
    return-void
.end method

.method public zzo(Lcom/google/android/gms/internal/zzbrc;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqp;->zzE(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzcht:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzbqo;->zzcho:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
