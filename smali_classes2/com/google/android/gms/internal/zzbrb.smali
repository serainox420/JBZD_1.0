.class public Lcom/google/android/gms/internal/zzbrb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbrb$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final zzcie:Lcom/google/android/gms/internal/zzbrb;


# instance fields
.field private zzcia:Lcom/google/android/gms/internal/zzbrw;

.field private zzcif:Ljava/lang/Integer;

.field private zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

.field private zzcih:Lcom/google/android/gms/internal/zzbsc;

.field private zzcii:Lcom/google/android/gms/internal/zzbrq;

.field private zzcij:Lcom/google/android/gms/internal/zzbsc;

.field private zzcik:Lcom/google/android/gms/internal/zzbrq;

.field private zzcil:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbrb;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbrb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbrb;->zzcie:Lcom/google/android/gms/internal/zzbrb;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsf;->zzabk()Lcom/google/android/gms/internal/zzbsf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcil:Ljava/lang/String;

    return-void
.end method

.method public static zzaE(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbrb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbrb;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzbrb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbrb;-><init>()V

    const-string v0, "l"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    const-string v0, "sp"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrb;->zze(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    const-string v0, "sn"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    :cond_0
    const-string v0, "ep"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ep"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrb;->zze(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    const-string v0, "en"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    :cond_1
    const-string v0, "vf"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzbrb$zza;->zzcin:Lcom/google/android/gms/internal/zzbrb$zza;

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    :cond_2
    const-string v0, "i"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrw;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    :cond_3
    return-object v1

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/zzbrb$zza;->zzcio:Lcom/google/android/gms/internal/zzbrb$zza;

    goto :goto_0
.end method

.method private zzaak()Lcom/google/android/gms/internal/zzbrb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-object v0
.end method

.method private static zze(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbsi;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbrp;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbru;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbrv;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbsa;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzbru;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzbsc;)V

    move-object p0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected value passed to normalizeValue: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/zzbrb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    if-nez v2, :cond_d

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    if-nez v2, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaal()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaal()Z

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getLimit()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaal()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public isDefault()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsf;->zzabk()Lcom/google/android/gms/internal/zzbsf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaai()Z

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

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaam()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrb;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaak()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbrb;
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzbrb;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbsa;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbte;->zzbb(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaak()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaab()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaac()Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzaad()Lcom/google/android/gms/internal/zzbrq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaG()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    goto :goto_0
.end method

.method public zzaae()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaaf()Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzaag()Lcom/google/android/gms/internal/zzbrq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaH()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    goto :goto_0
.end method

.method public zzaah()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaai()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaaj()Lcom/google/android/gms/internal/zzbrw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-object v0
.end method

.method public zzaal()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbrb$zza;->zzcin:Lcom/google/android/gms/internal/zzbrb$zza;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    goto :goto_0
.end method

.method public zzaam()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcih:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_0

    const-string v0, "sn"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcii:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ep"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_1

    const-string v0, "en"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "l"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzbrb$zza;->zzcin:Lcom/google/android/gms/internal/zzbrb$zza;

    :cond_2
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/zzbrb$1;->zzcim:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb$zza;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsf;->zzabk()Lcom/google/android/gms/internal/zzbsf;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "i"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrb;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrw;->zzabc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/zzbrb$zza;->zzcio:Lcom/google/android/gms/internal/zzbrb$zza;

    goto :goto_0

    :pswitch_0
    const-string v0, "vf"

    const-string v2, "l"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string v0, "vf"

    const-string v2, "r"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public zzaan()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaao()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcil:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaam()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsv;->zzaF(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcil:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrb;->zzcil:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaap()Lcom/google/android/gms/internal/zzbrj;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbrh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrh;-><init>(Lcom/google/android/gms/internal/zzbrw;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbri;-><init>(Lcom/google/android/gms/internal/zzbrb;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbrk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbrk;-><init>(Lcom/google/android/gms/internal/zzbrb;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbrb;
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzbrb;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbsa;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbte;->zzbb(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaak()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcij:Lcom/google/android/gms/internal/zzbsc;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbrb;->zzcik:Lcom/google/android/gms/internal/zzbrq;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzqB(I)Lcom/google/android/gms/internal/zzbrb;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaak()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/zzbrb$zza;->zzcin:Lcom/google/android/gms/internal/zzbrb$zza;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    return-object v0
.end method

.method public zzqC(I)Lcom/google/android/gms/internal/zzbrb;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaak()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcif:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/zzbrb$zza;->zzcio:Lcom/google/android/gms/internal/zzbrb$zza;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbrb;->zzcig:Lcom/google/android/gms/internal/zzbrb$zza;

    return-object v0
.end method
