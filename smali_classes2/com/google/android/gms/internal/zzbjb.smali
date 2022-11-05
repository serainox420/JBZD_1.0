.class public final Lcom/google/android/gms/internal/zzbjb;
.super Lcom/google/android/gms/internal/zzbit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbit",
        "<",
        "Ljava/lang/String;",
        ">;"
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
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "charAt"

    new-instance v2, Lcom/google/android/gms/internal/zzbfd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "concat"

    new-instance v2, Lcom/google/android/gms/internal/zzbfe;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfe;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/zzbeo;->zzbLu:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "indexOf"

    new-instance v2, Lcom/google/android/gms/internal/zzbff;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbff;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastIndexOf"

    new-instance v2, Lcom/google/android/gms/internal/zzbfg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfg;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "match"

    new-instance v2, Lcom/google/android/gms/internal/zzbfh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfh;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "replace"

    new-instance v2, Lcom/google/android/gms/internal/zzbfi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfi;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "search"

    new-instance v2, Lcom/google/android/gms/internal/zzbfj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfj;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "slice"

    new-instance v2, Lcom/google/android/gms/internal/zzbfk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfk;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "split"

    new-instance v2, Lcom/google/android/gms/internal/zzbfl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfl;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "substring"

    new-instance v2, Lcom/google/android/gms/internal/zzbfm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toLocaleLowerCase"

    new-instance v2, Lcom/google/android/gms/internal/zzbfn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfn;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toLocaleUpperCase"

    new-instance v2, Lcom/google/android/gms/internal/zzbfo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toLowerCase"

    new-instance v2, Lcom/google/android/gms/internal/zzbfp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toUpperCase"

    new-instance v2, Lcom/google/android/gms/internal/zzbfr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfr;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toString"

    new-instance v2, Lcom/google/android/gms/internal/zzbfq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfq;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trim"

    new-instance v2, Lcom/google/android/gms/internal/zzbfs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbfs;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbjb;->zzbMM:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbit;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbjb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public zzTh()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbjb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjb$1;-><init>(Lcom/google/android/gms/internal/zzbjb;)V

    return-object v0
.end method

.method public synthetic zzTi()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzie(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbjb;->zzbMM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzif(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbcq;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjb;->zzie(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbjb;->zzbMM:Ljava/util/Map;

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

.method public zznN(I)Lcom/google/android/gms/internal/zzbit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjb;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_0
.end method
