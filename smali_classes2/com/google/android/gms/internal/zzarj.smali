.class public Lcom/google/android/gms/internal/zzarj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/PackageManagerWrapper;


# static fields
.field private static zzbiO:Lcom/google/android/gms/internal/zzarj;


# instance fields
.field private final zzbiP:Z

.field private final zzqn:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    return-void
.end method

.method private zzeO(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.instantapps.supervisor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized zzh(Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzarj;
    .locals 3

    const-class v1, Lcom/google/android/gms/internal/zzarj;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eq v2, p1, :cond_1

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzarj;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzarj;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzarf;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error getting application info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarf;->zzeM(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error getting application label"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzarj;->zzeO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzarf;->zzeN(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "InstantAppsPMW"

    const-string v3, "Error getting calling activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarj;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzarf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error getting package info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarf;->zzjS(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "InstantAppsPMW"

    const-string v3, "Error getting app package for UID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public isInstantApp(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzade;->zzbg(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzarf;->zzjS(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "InstantAppsPMW"

    const-string v3, "Error checking if app is instant app"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
