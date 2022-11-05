.class public Lcom/google/android/gms/internal/zzfl;
.super Lcom/google/android/gms/internal/zzet$zza;


# instance fields
.field private zztk:Lcom/google/android/gms/internal/zzep;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzet$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfl;)Lcom/google/android/gms/internal/zzep;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfl;->zztk:Lcom/google/android/gms/internal/zzep;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showInterstitial()V
    .locals 0

    return-void
.end method

.method public stopLoading()V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeo;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzep;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfl;->zztk:Lcom/google/android/gms/internal/zzep;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzev;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzex;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzfc;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzft;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgp;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzle;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zznw;)V
    .locals 0

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzec;)Z
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfl$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfl$1;-><init>(Lcom/google/android/gms/internal/zzfl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public zzbB()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzbC()Lcom/google/android/gms/internal/zzeg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzbE()V
    .locals 0

    return-void
.end method

.method public zzbF()Lcom/google/android/gms/internal/zzfa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
