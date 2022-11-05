.class public Lcom/google/android/gms/internal/zzbjc;
.super Ljava/lang/Object;


# direct methods
.method public static zzO(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzO(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v4, v1, Ljava/util/List;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzR(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static zzR(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjc;->zzO(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjc;->zzR(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbit;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/zzbit;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbiu;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbiu;-><init>(Ljava/lang/Boolean;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    move-object p0, v0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    move-object p0, v0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    move-object p0, v0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_a
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbjc;->zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_e

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjc;->zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    new-instance p0, Lcom/google/android/gms/internal/zzbiz;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzbiz;-><init>(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_10

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_f
    new-instance p0, Lcom/google/android/gms/internal/zzbiz;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzbiz;-><init>(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Type not supported: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbjc;->zzn(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiw;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiy;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbja;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AbstractType evaluated to illegal type Statement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbja;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzbja;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbja;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempting to evaluate unknown type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AbstractType evaluated to Java null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbja;)Lcom/google/android/gms/internal/zzbit;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbja;->zzTt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbja;->zzTu()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbcd;->zzhM(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Function \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v3, v0, Lcom/google/android/gms/internal/zzbiw;

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Function \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/google/android/gms/internal/zzbiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiw;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbcq;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbit;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zzbit;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/zzbcq;->zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbcd;Ljava/util/List;)Lcom/google/android/gms/internal/zzbix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;)",
            "Lcom/google/android/gms/internal/zzbix;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbit;

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbja;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/zzbix;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_0
.end method

.method public static zzas(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiz;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjc;->zzas(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid param type for key \'%s\'. Only boolean, double and string types and maps of thereof are supported."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static zzl(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    check-cast p0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiy;

    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbit;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjc;->zzl(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v1, "Failure to convert a list element to object: %s (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v0, :cond_b

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiz;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbit;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzl(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "Failure to convert a map\'s value to object: %s (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Converting to Object from unknown abstract type: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static zzm(Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzbit;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiz;

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiz;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne v4, v5, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static zzn(Lcom/google/android/gms/internal/zzbit;)Z
    .locals 2

    const/4 v0, 0x1

    instance-of v1, p0, Lcom/google/android/gms/internal/zzbiu;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/google/android/gms/internal/zzbiv;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzo(Lcom/google/android/gms/internal/zzbit;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMQ:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMP:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbix;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/zzbix;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbix;->zzTp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
