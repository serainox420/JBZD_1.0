.class public Lcom/google/android/gms/internal/zzbrv;
.super Lcom/google/android/gms/internal/zzbrr;

# interfaces
.implements Lcom/google/android/gms/internal/zzbsc;


# static fields
.field private static final zzcjo:Lcom/google/android/gms/internal/zzbrv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbrv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbrv;->zzcjo:Lcom/google/android/gms/internal/zzbrv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrr;-><init>()V

    return-void
.end method

.method public static zzaaZ()Lcom/google/android/gms/internal/zzbrv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrv;->zzcjo:Lcom/google/android/gms/internal/zzbrv;

    return-object v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbrv;->zzh(Lcom/google/android/gms/internal/zzbsc;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbrv;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrv;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    return-object p0
.end method

.method public zzWV()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzbsb;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zzaaM()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zzaaN()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzaaO()Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    return-object p0
.end method

.method public zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbrr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrr;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbrr;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    goto :goto_0
.end method

.method public synthetic zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbrv;->zzl(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    return-object v0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbsc;)I
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzbrq;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbrq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrv;
    .locals 0

    return-object p0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbrv;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbrv;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    goto :goto_0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    return-object p0
.end method
