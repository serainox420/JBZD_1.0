.class public Lcom/google/android/gms/internal/zzbsh;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzcjH:Lcom/google/android/gms/internal/zzbph;

.field private final zzcjI:Lcom/google/android/gms/internal/zzbph;

.field private final zzcjJ:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbsh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbsh;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbor;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbor;->zzXW()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/util/List;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjH:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbor;->zzXX()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/util/List;)V

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjI:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbor;->zzXY()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjJ:Lcom/google/android/gms/internal/zzbsc;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjH:Lcom/google/android/gms/internal/zzbph;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjI:Lcom/google/android/gms/internal/zzbph;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjH:Lcom/google/android/gms/internal/zzbph;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjH:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjI:Lcom/google/android/gms/internal/zzbph;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjI:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    if-lez v0, :cond_5

    if-gez v2, :cond_5

    if-nez v1, :cond_5

    :cond_0
    :goto_4
    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjH:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbph;->zzj(Lcom/google/android/gms/internal/zzbph;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjI:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbph;->zzj(Lcom/google/android/gms/internal/zzbph;)I

    move-result v2

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    if-lez v0, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    if-lez v0, :cond_a

    if-nez v2, :cond_a

    sget-boolean v0, Lcom/google/android/gms/internal/zzbsh;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    sget-boolean v0, Lcom/google/android/gms/internal/zzbsh;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p3

    goto :goto_4

    :cond_9
    move-object p3, p2

    goto :goto_4

    :cond_a
    if-nez v3, :cond_b

    if-eqz v1, :cond_11

    :cond_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaI()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/gms/internal/zzbsh;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    if-eq v4, v3, :cond_13

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_8
    move-object v1, v0

    goto :goto_7

    :cond_10
    move-object p3, v1

    goto/16 :goto_4

    :cond_11
    sget-boolean v1, Lcom/google/android/gms/internal/zzbsh;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    if-gtz v2, :cond_12

    if-lez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    move-object p3, p2

    goto/16 :goto_4

    :cond_13
    move-object v0, v1

    goto :goto_8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjH:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjI:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjJ:Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RangeMerge{optExclusiveStart="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", optInclusiveEnd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsh;->zzcjJ:Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzbsh;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method
