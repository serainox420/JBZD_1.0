.class public Lcom/google/android/gms/internal/zzbsb;
.super Ljava/lang/Object;


# static fields
.field private static final zzcjA:Lcom/google/android/gms/internal/zzbsb;

.field private static final zzcjz:Lcom/google/android/gms/internal/zzbsb;


# instance fields
.field private final zzchD:Lcom/google/android/gms/internal/zzbrq;

.field private final zzcjq:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaG()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcjz:Lcom/google/android/gms/internal/zzbsb;

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaH()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzbsc;->zzcjB:Lcom/google/android/gms/internal/zzbrr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcjA:Lcom/google/android/gms/internal/zzbsb;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsb;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsb;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method

.method public static zzabh()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcjz:Lcom/google/android/gms/internal/zzbsb;

    return-object v0
.end method

.method public static zzabi()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcjA:Lcom/google/android/gms/internal/zzbsb;

    return-object v0
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
    check-cast p1, Lcom/google/android/gms/internal/zzbsb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsb;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsb;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsb;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsb;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsb;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsb;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsb;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsb;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NamedNode{name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", node="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzWI()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsb;->zzcjq:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzabj()Lcom/google/android/gms/internal/zzbrq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsb;->zzchD:Lcom/google/android/gms/internal/zzbrq;

    return-object v0
.end method
