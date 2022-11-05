.class Lcom/inmobi/monetization/internal/b;
.super Ljava/lang/Object;
.source "AdNetworkUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/monetization/internal/b;->a:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 114
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 118
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/monetization/internal/InvalidManifestConfigException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "App does not have INTERNET permissions. Please provide INTERNET permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 43
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "App does not have ACCESS_NETWORK_STATE permissions. Please provide ACCESS_NETWORK_STATE permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/16 v1, -0x9

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 56
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.inmobi.androidsdk.IMBrowserActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    :goto_0
    if-nez v0, :cond_3

    .line 64
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "IMBrowserActivity not declared in the manifest. Please declare it in the app manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 70
    :cond_3
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 72
    if-nez v0, :cond_4

    .line 73
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "IMBrowserActivity in the manifest does not have android:configChanges attributes.Please add android:configChanges=keyboardHidden|orientation|keyboard|screenSize|smallestScreenSize to IMBrowserActivity in the app manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 78
    :cond_4
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_5

    .line 79
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Missing Config keyboard from android:configChangesof IMBRowserActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 83
    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_6

    .line 84
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Missing Config keyboardHidden from android:configChangesof IMBRowserActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 88
    :cond_6
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_7

    .line 89
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Missing Config orientation from android:configChangesof IMBRowserActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 95
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    const/16 v2, 0xd

    if-lt v1, v2, :cond_9

    .line 98
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_8

    .line 99
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Missing Config screenSize from android:configChangesof IMBRowserActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x7

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 103
    :cond_8
    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_9

    .line 104
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Missing Config smallestScreenSize from android:configChanges of IMBRowserActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;

    const/4 v1, -0x8

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;-><init>(I)V

    throw v0

    .line 110
    :cond_9
    return-void

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method
