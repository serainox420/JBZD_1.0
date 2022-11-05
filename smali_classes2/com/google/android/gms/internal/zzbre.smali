.class public Lcom/google/android/gms/internal/zzbre;
.super Ljava/lang/Object;


# instance fields
.field private final zzciw:Lcom/google/android/gms/internal/zzbqu;

.field private final zzcix:Lcom/google/android/gms/internal/zzbqu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbqu;Lcom/google/android/gms/internal/zzbqu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbre;->zzciw:Lcom/google/android/gms/internal/zzbqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbre;->zzcix:Lcom/google/android/gms/internal/zzbqu;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbre;

    new-instance v1, Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbre;->zzcix:Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbre;-><init>(Lcom/google/android/gms/internal/zzbqu;Lcom/google/android/gms/internal/zzbqu;)V

    return-object v0
.end method

.method public zzaau()Lcom/google/android/gms/internal/zzbqu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbre;->zzciw:Lcom/google/android/gms/internal/zzbqu;

    return-object v0
.end method

.method public zzaav()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbre;->zzciw:Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbre;->zzciw:Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaaw()Lcom/google/android/gms/internal/zzbqu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbre;->zzcix:Lcom/google/android/gms/internal/zzbqu;

    return-object v0
.end method

.method public zzaax()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbre;->zzcix:Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbre;->zzcix:Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbre;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbre;->zzciw:Lcom/google/android/gms/internal/zzbqu;

    new-instance v2, Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbre;-><init>(Lcom/google/android/gms/internal/zzbqu;Lcom/google/android/gms/internal/zzbqu;)V

    return-object v0
.end method
