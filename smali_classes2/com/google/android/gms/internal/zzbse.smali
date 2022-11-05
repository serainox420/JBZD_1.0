.class public Lcom/google/android/gms/internal/zzbse;
.super Lcom/google/android/gms/internal/zzbrw;


# instance fields
.field private final zzcjF:Lcom/google/android/gms/internal/zzbph;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbph;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbsb;

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbse;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I

    move-result v0

    return v0
.end method

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
    check-cast p1, Lcom/google/android/gms/internal/zzbse;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbph;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

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

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    sget-object v2, Lcom/google/android/gms/internal/zzbsc;->zzcjB:Lcom/google/android/gms/internal/zzbrr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrv;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaH()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v1
.end method

.method public zzabc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzbrv;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v1
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbse;->zzcjF:Lcom/google/android/gms/internal/zzbph;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

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
