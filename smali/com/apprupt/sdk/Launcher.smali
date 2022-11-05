.class Lcom/apprupt/sdk/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/apprupt/sdk/Launcher;->b(Landroid/content/Intent;)V

    .line 76
    return-object v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/apprupt/sdk/Launcher;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 80
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/Launcher;->b(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/Launcher;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/Launcher;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 66
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 68
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/Launcher;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/Launcher;->c(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/Launcher;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const-string v2, "LAUNCHER2"

    invoke-static {v2}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent not callable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/apprupt/sdk/Launcher;->a:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 98
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    const-string v3, "LAUNCHER2"

    invoke-static {v3}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Cannot find proper activity for intent"

    aput-object v5, v4, v0

    aput-object v2, v4, v1

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method
