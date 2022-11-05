.class public Lcom/google/android/gms/internal/zzafn;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzaft;",
        ">;"
    }
.end annotation


# static fields
.field private static zzaJQ:Lcom/google/android/gms/internal/zzcd$zza;


# instance fields
.field private final zzaJR:Lcom/google/android/gms/internal/zzafo;

.field private zzaJS:Lcom/google/android/gms/internal/zzcj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcj",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/internal/zzaem;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrs:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcd$zza;->zzrn:Lcom/google/android/gms/internal/zzcd$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzafn;->zzaJQ:Lcom/google/android/gms/internal/zzcd$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x2f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafn;->zzrs:Landroid/os/Looper;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "@@ContextManagerNullAccount@@"

    :goto_0
    if-nez p4, :cond_1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzafo;->zzG(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, p4}, Lcom/google/android/gms/internal/zzafo;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    goto :goto_1
.end method

.method private zzAi()Lcom/google/android/gms/internal/zzcj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzcj",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/internal/zzaem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafn;->zzaJS:Lcom/google/android/gms/internal/zzcj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafn;->zzrs:Landroid/os/Looper;

    sget-object v2, Lcom/google/android/gms/internal/zzaem;->zzaJj:Lcom/google/android/gms/internal/zzcj$zza;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcj;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/zzcj$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafn;->zzaJS:Lcom/google/android/gms/internal/zzcj;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafn;->zzaJS:Lcom/google/android/gms/internal/zzcj;

    return-object v0
.end method

.method public static zza(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzafn;->zzaJQ:Lcom/google/android/gms/internal/zzcd$zza;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcd$zza;->zzrn:Lcom/google/android/gms/internal/zzcd$zza;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzcd$zza;->zza(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzafn;->zzaJQ:Lcom/google/android/gms/internal/zzcd$zza;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzcd$zza;->zza(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzaer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
            ">;",
            "Lcom/google/android/gms/internal/zzaer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafn;->zzxC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafn;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaft;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafq;->zze(Lcom/google/android/gms/internal/zzaad$zzb;)Lcom/google/android/gms/internal/zzafq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaft;->zza(Lcom/google/android/gms/internal/zzafs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaer;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzaez;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzaez;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafn;->zzxC()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafn;->zzAi()Lcom/google/android/gms/internal/zzcj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaez;->zza(Lcom/google/android/gms/internal/zzcj;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafn;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaft;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzafq;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzafq$zza;)Lcom/google/android/gms/internal/zzafq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaft;->zza(Lcom/google/android/gms/internal/zzafs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaez;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzwn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzwp;",
            ">;",
            "Lcom/google/android/gms/internal/zzwn;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafn;->zzxC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafn;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaft;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafq;->zzd(Lcom/google/android/gms/internal/zzaad$zzb;)Lcom/google/android/gms/internal/zzafq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaft;->zza(Lcom/google/android/gms/internal/zzafs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzwn;)V

    return-void
.end method

.method protected zzbG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaft;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaft$zza;->zzbJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.contextmanager.service.ContextManagerService.START"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzafn;->zzbG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    return-object v0
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.contextmanager.service.args"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafn;->zzaJR:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzafo;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public zzxE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
