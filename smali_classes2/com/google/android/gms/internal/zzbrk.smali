.class public Lcom/google/android/gms/internal/zzbrk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbrj;


# instance fields
.field private final zzciG:Lcom/google/android/gms/internal/zzbrh;

.field private final zzciH:Lcom/google/android/gms/internal/zzbsb;

.field private final zzciI:Lcom/google/android/gms/internal/zzbsb;

.field private final zzcia:Lcom/google/android/gms/internal/zzbrw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbrb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbrh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrh;-><init>(Lcom/google/android/gms/internal/zzbrw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciG:Lcom/google/android/gms/internal/zzbrh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbrk;->zzd(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciH:Lcom/google/android/gms/internal/zzbsb;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbrk;->zze(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciI:Lcom/google/android/gms/internal/zzbsb;

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaad()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaac()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrw;->zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrw;->zzaba()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    goto :goto_0
.end method

.method private static zze(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbsb;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaag()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaaf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrw;->zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrw;->zzabb()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsb;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciG:Lcom/google/android/gms/internal/zzbrh;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbrh;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrk;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciG:Lcom/google/android/gms/internal/zzbrh;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/internal/zzbrh;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbrx;->zzo(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrx;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsb;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;
    .locals 0

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsb;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrk;->zzaaB()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrk;->zzaaC()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaaA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzaaB()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciH:Lcom/google/android/gms/internal/zzbsb;

    return-object v0
.end method

.method public zzaaC()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciI:Lcom/google/android/gms/internal/zzbsb;

    return-object v0
.end method

.method public zzaaj()Lcom/google/android/gms/internal/zzbrw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-object v0
.end method

.method public zzaaz()Lcom/google/android/gms/internal/zzbrj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrk;->zzciG:Lcom/google/android/gms/internal/zzbrh;

    return-object v0
.end method
