.class public Lcom/google/android/gms/internal/zzbqu;
.super Ljava/lang/Object;


# instance fields
.field private final zzchI:Lcom/google/android/gms/internal/zzbrx;

.field private final zzchJ:Z

.field private final zzchK:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqu;->zzchI:Lcom/google/android/gms/internal/zzbrx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbqu;->zzchJ:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbqu;->zzchK:Z

    return-void
.end method


# virtual methods
.method public zzM(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchK:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v0

    goto :goto_0
.end method

.method public zzWI()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchI:Lcom/google/android/gms/internal/zzbrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzZQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchJ:Z

    return v0
.end method

.method public zzZR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchK:Z

    return v0
.end method

.method public zzZS()Lcom/google/android/gms/internal/zzbrx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchI:Lcom/google/android/gms/internal/zzbrx;

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbrq;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchK:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqu;->zzchI:Lcom/google/android/gms/internal/zzbrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
