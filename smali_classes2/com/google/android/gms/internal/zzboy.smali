.class public Lcom/google/android/gms/internal/zzboy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/android/gms/internal/zzbph;",
        "Lcom/google/android/gms/internal/zzbsc;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzcdJ:Lcom/google/android/gms/internal/zzboy;


# instance fields
.field private final zzcdK:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzboy;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzboy;

    new-instance v1, Lcom/google/android/gms/internal/zzbqq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    sput-object v0, Lcom/google/android/gms/internal/zzboy;->zzcdJ:Lcom/google/android/gms/internal/zzboy;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbqq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    return-void
.end method

.method public static zzYo()Lcom/google/android/gms/internal/zzboy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzboy;->zzcdJ:Lcom/google/android/gms/internal/zzboy;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ")",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {p3, p1, v0}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, p3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v0, Lcom/google/android/gms/internal/zzboy;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Priority writes must always be leaf nodes"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    move-object v1, v3

    :goto_2
    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/gms/internal/zzboy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_4
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaI()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    goto :goto_0
.end method

.method public static zzaB(Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzboy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lcom/google/android/gms/internal/zzbqq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzboy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    return-object v0
.end method

.method public static zzaC(Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;)",
            "Lcom/google/android/gms/internal/zzboy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/zzbqq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzboy;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzboy;->zzbe(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboy;->zzbe(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboy;->zzbe(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboy;->zzbe(Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CompoundWrite{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzYp()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzYq()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    new-instance v3, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/zzbsb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public zzYr()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzboy;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbrq;

    new-instance v4, Lcom/google/android/gms/internal/zzboy;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;
    .locals 2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    new-instance v1, Lcom/google/android/gms/internal/zzboy$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzboy$1;-><init>(Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbph;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboy;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzboy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzbe(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    new-instance v2, Lcom/google/android/gms/internal/zzboy$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/zzboy$2;-><init>(Lcom/google/android/gms/internal/zzboy;Ljava/util/Map;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbqq$zza;)V

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzboy;->zzcdJ:Lcom/google/android/gms/internal/zzboy;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzboy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    goto :goto_0
.end method

.method public zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/zzboy;

    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzG(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->zzYU()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-interface {v0, v2, p2}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzboy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/zzboy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    goto :goto_0
.end method

.method public zze(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzG(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/zzboy;

    new-instance v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzboy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboy;->zzcdK:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    move-object p0, v0

    goto :goto_0
.end method
