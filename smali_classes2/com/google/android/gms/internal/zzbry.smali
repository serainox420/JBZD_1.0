.class public Lcom/google/android/gms/internal/zzbry;
.super Lcom/google/android/gms/internal/zzbrw;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzcjs:Lcom/google/android/gms/internal/zzbry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbry;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbry;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbry;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbry;->zzcjs:Lcom/google/android/gms/internal/zzbry;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    return-void
.end method

.method public static zzabg()Lcom/google/android/gms/internal/zzbry;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbry;->zzcjs:Lcom/google/android/gms/internal/zzbry;

    return-object v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbsb;

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbry;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbry;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result v0

    return v0
.end method

.method public zzabb()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsb;->zzabi()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    return-object v0
.end method

.method public zzabc()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/zzbry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbsi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v1
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
