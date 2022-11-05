.class public Lcom/facebook/ads/internal/util/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/util/p$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/ads/internal/util/p$a;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/facebook/ads/internal/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/ads/internal/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "su"

    invoke-static {v0}, Lcom/facebook/ads/internal/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/util/p$a;->c:Lcom/facebook/ads/internal/util/p$a;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/util/p$a;->b:Lcom/facebook/ads/internal/util/p$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/util/p$a;->a:Lcom/facebook/ads/internal/util/p$a;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/internal/util/p;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/internal/util/p;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static b()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    if-nez p0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/util/p;->a:Ljava/lang/String;

    const-string v2, "Invalid context in screen interactive check, assuming interactive."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/facebook/ads/internal/util/p;->a:Ljava/lang/String;

    const-string v3, "Exception in screen interactive check, assuming interactive."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private static c()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/facebook/ads/internal/util/p;->a:Ljava/lang/String;

    const-string v3, "Invalid Activity context in window interactive check, assuming interactive."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v3, v1

    if-nez v3, :cond_1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/facebook/ads/internal/util/p;->a:Ljava/lang/String;

    const-string v3, "Invalid window in window interactive check, assuming interactive."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/facebook/ads/internal/util/p;->a:Ljava/lang/String;

    const-string v4, "Exception in window interactive check, assuming interactive."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
