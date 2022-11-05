.class public Lcom/google/android/gms/internal/zzbpr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbpr$zzb;,
        Lcom/google/android/gms/internal/zzbpr$zzc;,
        Lcom/google/android/gms/internal/zzbpr$zzd;,
        Lcom/google/android/gms/internal/zzbpr$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcfJ:Lcom/google/android/gms/internal/zzbql;

.field private zzcfK:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbpq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcfL:Lcom/google/android/gms/internal/zzbpy;

.field private final zzcfM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbps;",
            "Lcom/google/android/gms/internal/zzbrc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcfN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Lcom/google/android/gms/internal/zzbps;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcfO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcfP:Lcom/google/android/gms/internal/zzbpr$zzd;

.field private zzcfQ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/internal/zzbpr$zzd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfQ:J

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    new-instance v0, Lcom/google/android/gms/internal/zzbpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfL:Lcom/google/android/gms/internal/zzbpy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfM:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfN:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfO:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfP:Lcom/google/android/gms/internal/zzbpr$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    const-string v0, "SyncTree"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-void
.end method

.method private zzZk()Lcom/google/android/gms/internal/zzbps;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzbps;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfQ:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfQ:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzbps;-><init>(J)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zze(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbrn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfL:Lcom/google/android/gms/internal/zzbpy;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbpy;->zzu(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbpz;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqe;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbpq;",
            ">;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Lcom/google/android/gms/internal/zzbpz;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqe;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqe;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzbqe;->zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz p3, :cond_4

    invoke-interface {p3, v4}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    :goto_1
    invoke-virtual {p4, v4}, Lcom/google/android/gms/internal/zzbpz;->zzb(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbpz;

    move-result-object v4

    invoke-direct {p0, v5, v1, v2, v4}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqq;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbpq;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbrd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbqq;Ljava/util/List;)V

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbqe;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Lcom/google/android/gms/internal/zzbqe;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    sget-boolean v2, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing sync point for query tag that we\'re tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfL:Lcom/google/android/gms/internal/zzbpy;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbpy;->zzu(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbpz;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbrd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbrd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzaa(Ljava/util/List;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqq;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbpq;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbrd;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZi()Lcom/google/android/gms/internal/zzbrd;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZg()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbqq;Ljava/util/List;)V

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbrd;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zze(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbpr$zzc;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzbpr$zzc;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrd;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfP:Lcom/google/android/gms/internal/zzbpr$zzd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2, v2}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzbpr$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "If we\'re adding a query, it shouldn\'t be shadowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbpr$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbpr$5;-><init>(Lcom/google/android/gms/internal/zzbpr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbqq$zza;)V

    :cond_1
    return-void
.end method

.method private zzaa(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbrc;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpr;->zze(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfN:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfM:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrc;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbqq;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqe;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbpq;",
            ">;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Lcom/google/android/gms/internal/zzbpz;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzbpq;

    if-nez p3, :cond_1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzbpr$6;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbpr$6;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbqe;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/zzbny;->zza(Lcom/google/android/gms/internal/zzbod$zzb;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1, p4, v2}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v5

    :cond_1
    move-object v2, p3

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Lcom/google/android/gms/internal/zzbpc;",
            "Lcom/google/firebase/database/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpr$4;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfL:Lcom/google/android/gms/internal/zzbpy;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private zze(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbps;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfN:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbps;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpr;->zzZk()Lcom/google/android/gms/internal/zzbps;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfM:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfP:Lcom/google/android/gms/internal/zzbpr$zzd;

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public zzZj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbpr$9;-><init>(Lcom/google/android/gms/internal/zzbpr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/android/gms/internal/zzbsw;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$8;

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbpr$8;-><init>(Lcom/google/android/gms/internal/zzbpr;ZJZLcom/google/android/gms/internal/zzbsw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzboy;JZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzboy;",
            "Lcom/google/android/gms/internal/zzboy;",
            "JZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$7;

    move-object v2, p0

    move/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzbpr$7;-><init>(Lcom/google/android/gms/internal/zzbpr;ZLcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;JLcom/google/android/gms/internal/zzboy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Lcom/google/android/gms/internal/zzbps;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$14;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzbpr$14;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;JZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "JZZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$1;

    move-object v2, p0

    move/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzbpr$1;-><init>(Lcom/google/android/gms/internal/zzbpr;ZLcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;JLcom/google/android/gms/internal/zzbsc;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbsh;",
            ">;",
            "Lcom/google/android/gms/internal/zzbps;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbps;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbph;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    sget-boolean v2, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing sync point for query tag that we\'re tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpq;->zzb(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrd;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/gms/internal/zzbpr;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing view for query tag that we\'re tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaas()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbsh;->zzr(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/zzbpr$11;-><init>(Lcom/google/android/gms/internal/zzbpr;Ljava/util/Map;Lcom/google/android/gms/internal/zzbph;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;",
            "Lcom/google/android/gms/internal/zzbps;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzbpr$2;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbps;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$13;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbpr$13;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbps;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/firebase/database/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Lcom/google/firebase/database/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbpr$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbpr$zzb;-><init>(Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbpr;->zzg(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbpr$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbpr$zzb;-><init>(Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbsh;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->zzZi()Lcom/google/android/gms/internal/zzbrd;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaas()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbsh;->zzr(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzbpr;->zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    move-object v4, v2

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfL:Lcom/google/android/gms/internal/zzbpy;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/zzbpy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpc;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbpr$3;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbpc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpc;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzbpr$10;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public zzt(Lcom/google/android/gms/internal/zzbph;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr;->zzcfJ:Lcom/google/android/gms/internal/zzbql;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr$12;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbpr$12;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbph;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbql;->zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
