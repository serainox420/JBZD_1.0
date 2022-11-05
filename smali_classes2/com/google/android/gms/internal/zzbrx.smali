.class public Lcom/google/android/gms/internal/zzbrx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/zzbsb;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzcjp:Lcom/google/android/gms/internal/zzboa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzboa",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcia:Lcom/google/android/gms/internal/zzbrw;

.field private final zzcjq:Lcom/google/android/gms/internal/zzbsc;

.field private zzcjr:Lcom/google/android/gms/internal/zzboa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzboa",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzboa;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzboa;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzboa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Lcom/google/android/gms/internal/zzbrw;",
            "Lcom/google/android/gms/internal/zzboa",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)V

    return-object v0
.end method

.method private zzabd()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {}, Lcom/google/android/gms/internal/zzbry;->zzabg()Lcom/google/android/gms/internal/zzbry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzbrw;->zzm(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzboa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/zzboa;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    goto :goto_0
.end method

.method public static zzn(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsf;->zzabk()Lcom/google/android/gms/internal/zzbsf;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrx;->zzabd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboa;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public zzWI()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzWV()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrx;->zzabd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzWV()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboa;->zzWV()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {}, Lcom/google/android/gms/internal/zzbry;->zzabg()Lcom/google/android/gms/internal/zzbry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index not available in IndexedNode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrx;->zzabd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzboa;->zzan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzabe()Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbrr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrx;->zzabd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    check-cast v0, Lcom/google/android/gms/internal/zzbrr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrr;->zzaaP()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboa;->zzWX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    goto :goto_0
.end method

.method public zzabf()Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbrr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrx;->zzabd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    check-cast v0, Lcom/google/android/gms/internal/zzbrr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrr;->zzaaQ()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboa;->zzWY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbrw;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbrw;->zzm(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    sget-object v3, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzboa;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    sget-object v1, Lcom/google/android/gms/internal/zzbrx;->zzcjp:Lcom/google/android/gms/internal/zzboa;

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzboa;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    new-instance v3, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzboa;->zzal(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzboa;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzboa;->zzam(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzboa;

    move-result-object v0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzbrx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzboa;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public zzo(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzbsc;->zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrx;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrx;->zzcjr:Lcom/google/android/gms/internal/zzboa;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzboa;)V

    return-object v0
.end method
