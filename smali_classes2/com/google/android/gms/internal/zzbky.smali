.class public Lcom/google/android/gms/internal/zzbky;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbky$zzb;,
        Lcom/google/android/gms/internal/zzbky$zzc;,
        Lcom/google/android/gms/internal/zzbky$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzbku;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTheme:I

.field private final zzaiu:Ljava/lang/String;

.field private final zzbRt:I

.field private final zzbRu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;IIZ)V
    .locals 7

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    iput p6, p0, Lcom/google/android/gms/internal/zzbky;->zzbRt:I

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbky;->zzaiu:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzbky;->mTheme:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzbky;->zzbRu:Z

    return-void
.end method

.method private zzUa()Landroid/os/Bundle;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/zzbky;->zzbRt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbky;->zzaiu:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/zzbky;->mTheme:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzbky;->zzbRu:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbky;->zza(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static zza(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.wallet.EXTRA_USING_ANDROID_PAY_BRAND"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "androidPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v1, "com.google.android.gms.wallet.EXTRA_THEME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzbky$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/zzbky$zzc;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzbku;->zza(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzbkw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException getting full wallet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbky$zzc;->zza(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest;",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/BooleanResult;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzbky$zzb;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzbky$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzbku;->zza(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzbkw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException during isReadyToPay"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazz:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbky$zzb;->zza(Lcom/google/android/gms/common/api/Status;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbky$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzbky$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzbku;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzbkw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException getting masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzbky$zzc;->zza(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbku;->zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method

.method public zzf(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbky$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p3}, Lcom/google/android/gms/internal/zzbky$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzbku;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzbkw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException changing masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzbky$zzc;->zza(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected zzfy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbku;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbku$zza;->zzfv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbku;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbky;->zzfy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbku;

    move-result-object v0

    return-object v0
.end method

.method public zzoY(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbky$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzbky$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbku;->zza(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzbkw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during checkForPreAuthorization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzbky$zzc;->zza(IZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zzoZ(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;->zzUa()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbky$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbky;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzbky$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbku;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbku;->zzb(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzbkw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during isNewUser"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzbky$zzc;->zzb(IZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zzxE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
