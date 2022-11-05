.class public Lcom/google/android/gms/internal/zzbqs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbqs$zza;,
        Lcom/google/android/gms/internal/zzbqs$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private zzchD:Lcom/google/android/gms/internal/zzbrq;

.field private zzchE:Lcom/google/android/gms/internal/zzbqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqs",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzchF:Lcom/google/android/gms/internal/zzbqt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqt",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbqs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbqs;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqt;-><init>()V

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/gms/internal/zzbqs;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqs;Lcom/google/android/gms/internal/zzbqt;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqs;Lcom/google/android/gms/internal/zzbqt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbqs",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbqt",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    return-void
.end method

.method private zzZP()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqs;)V

    :cond_0
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbqs",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqs;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqs;->zzZP()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqs;->zzZP()V

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbqt;->value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqs;->zzZP()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbqs;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    if-nez v0, :cond_0

    const-string v0, "<anon>"

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbqt;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzL(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Lcom/google/android/gms/internal/zzbqs",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqt;

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/zzbqs;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/gms/internal/zzbqs;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqs;Lcom/google/android/gms/internal/zzbqt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    move-object v1, v0

    move-object p0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqt;-><init>()V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public zzWM()Lcom/google/android/gms/internal/zzbph;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/gms/internal/zzbqs;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqs;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqs;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqs$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs$zzb",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbqs$zzb;ZZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqs$zzb;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs$zzb",
            "<TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbqs$zzb;->zzd(Lcom/google/android/gms/internal/zzbqs;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqs$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/zzbqs$1;-><init>(Lcom/google/android/gms/internal/zzbqs;Lcom/google/android/gms/internal/zzbqs$zzb;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbqs;->zzb(Lcom/google/android/gms/internal/zzbqs$zzb;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbqs$zzb;->zzd(Lcom/google/android/gms/internal/zzbqs;)V

    :cond_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqs$zza;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs$zza",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbqs$zza;Z)Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqs$zza;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs$zza",
            "<TT;>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbqs$zza;->zze(Lcom/google/android/gms/internal/zzbqs;)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchE:Lcom/google/android/gms/internal/zzbqs;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbqs$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs$zzb",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs;->zzchF:Lcom/google/android/gms/internal/zzbqt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqt;->zzcfE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_0

    aget-object v0, v3, v2

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/zzbqs;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqt;

    invoke-direct {v4, v1, p0, v0}, Lcom/google/android/gms/internal/zzbqs;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqs;Lcom/google/android/gms/internal/zzbqt;)V

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/zzbqs$zzb;->zzd(Lcom/google/android/gms/internal/zzbqs;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
