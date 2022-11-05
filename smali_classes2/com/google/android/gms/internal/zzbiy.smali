.class public final Lcom/google/android/gms/internal/zzbiy;
.super Lcom/google/android/gms/internal/zzbit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbit",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/zzbit",
        "<*>;>;>;"
    }
.end annotation


# static fields
.field private static final zzbMM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbcq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbMV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "concat"

    new-instance v2, Lcom/google/android/gms/internal/zzbct;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbct;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "every"

    new-instance v2, Lcom/google/android/gms/internal/zzbcu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbcu;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "filter"

    new-instance v2, Lcom/google/android/gms/internal/zzbcv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbcv;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "forEach"

    new-instance v2, Lcom/google/android/gms/internal/zzbcw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbcw;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "indexOf"

    new-instance v2, Lcom/google/android/gms/internal/zzbcx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbcx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/zzbeo;->zzbLu:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "join"

    new-instance v2, Lcom/google/android/gms/internal/zzbcy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbcy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastIndexOf"

    new-instance v2, Lcom/google/android/gms/internal/zzbcz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbcz;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "map"

    new-instance v2, Lcom/google/android/gms/internal/zzbda;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbda;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pop"

    new-instance v2, Lcom/google/android/gms/internal/zzbdb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "push"

    new-instance v2, Lcom/google/android/gms/internal/zzbdc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reduce"

    new-instance v2, Lcom/google/android/gms/internal/zzbdd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reduceRight"

    new-instance v2, Lcom/google/android/gms/internal/zzbde;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbde;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reverse"

    new-instance v2, Lcom/google/android/gms/internal/zzbdf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdf;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shift"

    new-instance v2, Lcom/google/android/gms/internal/zzbdg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdg;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "slice"

    new-instance v2, Lcom/google/android/gms/internal/zzbdh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdh;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "some"

    new-instance v2, Lcom/google/android/gms/internal/zzbdi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdi;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sort"

    new-instance v2, Lcom/google/android/gms/internal/zzbdj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdj;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "splice"

    new-instance v2, Lcom/google/android/gms/internal/zzbdk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdk;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toString"

    new-instance v2, Lcom/google/android/gms/internal/zzbfq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfq;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unshift"

    new-instance v2, Lcom/google/android/gms/internal/zzbdl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbdl;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbiy;->zzbMM:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbit;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbiy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v2, v3

    move v1, v4

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move v5, v4

    :goto_2
    if-nez v5, :cond_4

    move v3, v5

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbit;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Invalid array length"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzTh()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbiy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbiy$1;-><init>(Lcom/google/android/gms/internal/zzbiy;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbit;->zzTj()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbiy$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/zzbiy$2;-><init>(Lcom/google/android/gms/internal/zzbiy;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public synthetic zzTi()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiy;->zzTq()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzTq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zza(ILcom/google/android/gms/internal/zzbit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)V"
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbiy;->setSize(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzie(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbiy;->zzbMM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzif(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbcq;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbiy;->zzie(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbiy;->zzbMM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbcq;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Native Method "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined for type ListWrapper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zznL(I)Lcom/google/android/gms/internal/zzbit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbit;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_0
.end method

.method public zznM(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzbMV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
