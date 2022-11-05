.class public Lcom/inmobi/commons/data/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/inmobi/commons/data/AppInfo;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/inmobi/commons/data/AppInfo;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/inmobi/commons/data/AppInfo;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/data/AppInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/inmobi/commons/data/AppInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/inmobi/commons/data/AppInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static updateAppInfo()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/commons/data/AppInfo;->b(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/data/AppInfo;->a(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz v1, :cond_2

    .line 76
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    invoke-static {v0}, Lcom/inmobi/commons/data/AppInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_3
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Failed to fill AppInfo"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
