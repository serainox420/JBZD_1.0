.class public Lcom/google/android/gms/internal/zzbsf;
.super Lcom/google/android/gms/internal/zzbrw;


# static fields
.field private static final zzcjG:Lcom/google/android/gms/internal/zzbsf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbsf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsf;->zzcjG:Lcom/google/android/gms/internal/zzbsf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    return-void
.end method

.method public static zzabk()Lcom/google/android/gms/internal/zzbsf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsf;->zzcjG:Lcom/google/android/gms/internal/zzbsf;

    return-object v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbsb;

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbsf;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbsf;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x302679

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PriorityIndex"

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)I

    move-result v0

    return v0
.end method

.method public zzabb()Lcom/google/android/gms/internal/zzbsb;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaH()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbsc;->zzcjB:Lcom/google/android/gms/internal/zzbrr;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbsf;->zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    return-object v0
.end method

.method public zzabc()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    new-instance v1, Lcom/google/android/gms/internal/zzbsi;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzbsi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
