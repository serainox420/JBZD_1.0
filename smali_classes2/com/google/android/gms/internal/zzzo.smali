.class public Lcom/google/android/gms/internal/zzzo;
.super Lcom/google/android/gms/common/api/zzc;

# interfaces
.implements Lcom/google/android/gms/internal/zzzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzo$zzb;,
        Lcom/google/android/gms/internal/zzzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc",
        "<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;",
        "Lcom/google/android/gms/internal/zzzl;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzzk;->API:Lcom/google/android/gms/common/api/Api;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzzy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzzy;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabs;)V

    return-void
.end method

.method public static zzaA(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static zzb(Lcom/google/android/gms/internal/zzzm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvy:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzzk$zzc;->zzuV()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvy:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvF:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzzk$zzc;->zzuV()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvF:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzzm;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzm;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzzo$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzo;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzzo$zzb;-><init>(Lcom/google/android/gms/internal/zzzm;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzo;->doBestEffortWrite(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method
