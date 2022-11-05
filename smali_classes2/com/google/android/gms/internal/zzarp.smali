.class final Lcom/google/android/gms/internal/zzarp;
.super Ljava/lang/Object;


# direct methods
.method static zzbH(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v2, "com.google.android.gms"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/zzh;->zzaN(Landroid/content/Context;)Lcom/google/android/gms/common/zzh;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/zzh;->zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "InstantAppsApi"

    const-string v3, "Incorrect signature for package "

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
