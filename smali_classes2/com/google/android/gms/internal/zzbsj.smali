.class public Lcom/google/android/gms/internal/zzbsj;
.super Lcom/google/android/gms/internal/zzbrw;


# static fields
.field private static final zzcjK:Lcom/google/android/gms/internal/zzbsj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbsj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsj;->zzcjK:Lcom/google/android/gms/internal/zzbsj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    return-void
.end method

.method public static zzabm()Lcom/google/android/gms/internal/zzbsj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsj;->zzcjK:Lcom/google/android/gms/internal/zzbsj;

    return-object v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbsb;

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbsj;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbsj;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueIndex"

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbsc;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public zzabb()Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaH()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzbsc;->zzcjB:Lcom/google/android/gms/internal/zzbrr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0
.end method

.method public zzabc()Ljava/lang/String;
    .locals 1

    const-string v0, ".value"

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
