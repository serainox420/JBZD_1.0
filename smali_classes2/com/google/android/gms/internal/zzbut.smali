.class public final Lcom/google/android/gms/internal/zzbut;
.super Lcom/google/android/gms/internal/zzbuq;


# instance fields
.field private final zzcpu:Lcom/google/android/gms/internal/zzbvo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvo",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbuq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbuq;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbvo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbvo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    return-void
.end method

.method private zzaM(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbuq;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbus;->zzcpt:Lcom/google/android/gms/internal/zzbus;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbuq;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbvo;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbut;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzbut;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbvo;->equals(Ljava/lang/Object;)Z

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

.method public has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvo;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbvo;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/zzbus;->zzcpt:Lcom/google/android/gms/internal/zzbus;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbvo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbut;->zzaM(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V

    return-void
.end method

.method public zzaG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbut;->zzaM(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V

    return-void
.end method

.method public zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    return-object v0
.end method

.method public zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbun;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbut;->zzcpu:Lcom/google/android/gms/internal/zzbvo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbun;

    return-object v0
.end method
