.class public Lcom/google/android/gms/internal/zzbac;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile zzbDR:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbac;->zzbDR:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static zzbO(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbac;->zzbP(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzbP(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_0

    const-string v1, "ensure_verify_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzbQ(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "package_verifier_enable"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/zzbac;->zzd(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzd(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public zzPE()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->zzPG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->zzPF()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->zzPF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbac;->zzbQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzPF()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->zzPG()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbac;->zzbO(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_user_consent"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_user_consent"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    const-string v2, "com.android.vending"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v2, "package_verifer_public_preferences"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "accepted-anti-malware-consent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized zzPG()Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbac;->zzbDR:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbac;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1
    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x4cb6ac0

    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbac;->zzbDR:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbac;->zzbDR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
