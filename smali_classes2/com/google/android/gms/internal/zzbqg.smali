.class public Lcom/google/android/gms/internal/zzbqg;
.super Lcom/google/android/gms/internal/zzbqe;


# instance fields
.field private final zzcgZ:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqe$zza;->zzcgM:Lcom/google/android/gms/internal/zzbqe$zza;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzbqe;-><init>(Lcom/google/android/gms/internal/zzbqe$zza;Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgZ:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqg;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqg;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgZ:Lcom/google/android/gms/internal/zzbsc;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzZE()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgZ:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqg;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgZ:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbqg;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqg;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqg;->zzcgZ:Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbqg;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0
.end method
