.class public Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;
.super Ljava/lang/Object;
.source "ADPackageVersionChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;


# instance fields
.field private context:Landroid/content/Context;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getPackageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;->version:Ljava/lang/String;

    return-object v0
.end method

.method public readCurrentValues()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 21
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
