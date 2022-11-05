.class public Lcom/google/android/gms/internal/zzbnx;
.super Lcom/google/android/gms/internal/zzbny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbny",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final zzcaM:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final zzcaN:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final zzcaO:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbny;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;[TK;[TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbny;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    return-void
.end method

.method public static zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbnx;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/zzbny$zza$zza",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/zzbnx",
            "<TA;TC;>;"
        }
    .end annotation

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/zzbny$zza$zza;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    invoke-direct {v0, p3, v1, v2}, Lcom/google/android/gms/internal/zzbnx;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbnx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzbnx",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbny$zza;->zzWW()Lcom/google/android/gms/internal/zzbny$zza$zza;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzbnx;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbnx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbnx;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    return-object v0
.end method

.method private static zza([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static zza([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v1, p1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private zzai(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private zzaj(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    invoke-interface {v5, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbnx;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    return-object v0
.end method

.method private static zzb([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v1, p1

    return-object v1
.end method

.method private zze(IZ)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbnx$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbnx$1;-><init>(Lcom/google/android/gms/internal/zzbnx;IZ)V

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzaj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzaj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/zzbnx;->zze(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public zzWT()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzWU()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzWV()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbnx;->zze(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbod$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbod$zzb",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzbod$zzb;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/android/gms/internal/zzbny",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzaj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbnx;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzbnx;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzbnx;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzaj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t find predecessor of nonexistent key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/gms/internal/zzbny",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzaj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzb([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    invoke-static {v2, v0, p2}, Lcom/google/android/gms/internal/zzbnx;->zzb([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzbnx;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbog;->zzc(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbog;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zzai(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaM:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/zzbnx;->zza([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaN:[Ljava/lang/Object;

    invoke-static {v2, v0, p2}, Lcom/google/android/gms/internal/zzbnx;->zza([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnx;->zzcaO:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzbnx;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method
