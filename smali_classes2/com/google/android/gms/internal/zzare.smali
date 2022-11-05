.class public Lcom/google/android/gms/internal/zzare;
.super Ljava/lang/Object;


# static fields
.field private static zzbiI:Ljava/lang/Boolean;

.field private static zzbiJ:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzare;->zzbiI:Ljava/lang/Boolean;

    return-void
.end method

.method static getInstantAppIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzare;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized reset()V
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zzare;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzare;->zzbiI:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;Z)Landroid/content/Intent;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzare;->zzbD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    if-eqz p2, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v7}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key_fallbackIntent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    :try_start_0
    const-string v2, "method_getInstantAppIntent"

    invoke-static {p0, v2, p1, v0}, Lcom/google/android/gms/internal/zzare;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "InstantAppsApi"

    const-string v3, "While calling %s %s:\n"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/google/android/gms/internal/zzaqv;->zzbiv:Landroid/net/Uri;

    aput-object v5, v4, v6

    const-string v5, "method_getInstantAppIntent"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/internal/zzare;->reset()V

    if-eqz p3, :cond_3

    invoke-static {p0, p1, p2, v6}, Lcom/google/android/gms/internal/zzare;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string v2, "InstantAppsApi"

    const-string v3, "While calling %s %s:\n"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/google/android/gms/internal/zzaqv;->zzbiv:Landroid/net/Uri;

    aput-object v5, v4, v6

    const-string v5, "method_getInstantAppIntent"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "key_instantAppIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/zzare;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzaqv;->zzbiv:Landroid/net/Uri;

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzare;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized zzbC(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/zzare;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzaqv;->zzbiv:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized zzbD(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/zzare;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiI:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/internal/zzare;->zzbE(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzare;->zzbiI:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method private static declared-synchronized zzbE(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const-class v2, Lcom/google/android/gms/internal/zzare;

    monitor-enter v2

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Lcom/google/android/gms/internal/zzarp;->zzbH(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/zzaqv;->zzbiv:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "InstantAppsApi"

    const-string v4, "Incorrect package name for instant apps content provider: "

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/internal/zzare;->zzbC(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/zzare;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzare;->zzbiJ:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
