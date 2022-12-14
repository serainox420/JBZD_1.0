.class Lcom/crashlytics/android/core/ManifestUnityVersionProvider;
.super Ljava/lang/Object;
.source "ManifestUnityVersionProvider.java"

# interfaces
.implements Lcom/crashlytics/android/core/UnityVersionProvider;


# static fields
.field static final FABRIC_UNITY_CRASHLYTICS_VERSION_KEY:Ljava/lang/String; = "io.fabric.unity.crashlytics.version"


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/crashlytics/android/core/ManifestUnityVersionProvider;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/crashlytics/android/core/ManifestUnityVersionProvider;->packageName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getUnityVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lcom/crashlytics/android/core/ManifestUnityVersionProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/crashlytics/android/core/ManifestUnityVersionProvider;->packageName:Ljava/lang/String;

    const/16 v3, 0x80

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 28
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 29
    if-eqz v1, :cond_0

    .line 30
    const-string v2, "io.fabric.unity.crashlytics.version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method
