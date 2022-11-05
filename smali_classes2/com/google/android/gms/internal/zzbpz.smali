.class public Lcom/google/android/gms/internal/zzbpz;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgD:Lcom/google/android/gms/internal/zzbph;

.field private final zzcgE:Lcom/google/android/gms/internal/zzbpy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsb;ZLcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbsb;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbpy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsb;ZLcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqu;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzbpy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqu;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzbsc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpy;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbpz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpz;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpy;)V

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbpy;->zzj(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgE:Lcom/google/android/gms/internal/zzbpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpz;->zzcgD:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpy;->zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method
