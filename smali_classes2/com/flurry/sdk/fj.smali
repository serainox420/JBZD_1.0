.class public Lcom/flurry/sdk/fj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/fj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fj;->a:Ljava/lang/String;

    .line 29
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "org.mozilla.firefox"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mobi.mgeek.TunnyBrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.UCMobile.intl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.opera.mini.android"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.jiubang.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.opera.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.uc.browser.en"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "acr.browser.barebones"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.boatbrowser.free"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.mx.browser"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.ilegendsoft.mercury"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "gpc.myweb.hinet.net.PopupWeb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mobi.browser.flashfox"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.baidu.browser.inter"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.webbrowserminiapp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fj;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 136
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 153
    :goto_0
    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    const/high16 v4, 0x10000

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 147
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 148
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1158
    const-string v6, "com.android.vending"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.google.market"

    .line 1159
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 148
    :goto_1
    if-eqz v0, :cond_2

    .line 2118
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/fj;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launching App in package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2120
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2123
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v0, v1

    .line 149
    goto :goto_0

    :cond_4
    move v0, v3

    .line 1159
    goto :goto_1

    :cond_5
    move v0, v3

    .line 1161
    goto :goto_1

    :cond_6
    move-object v0, v2

    .line 153
    goto :goto_0
.end method
