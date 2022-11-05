.class public Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;
.super Landroid/app/Activity;
.source "SASPreviewHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;
    .locals 3

    .prologue
    .line 208
    const-class v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "preview"

    const-string v1, "previewPlacements.bin"

    invoke-static {p0, v0, v1}, Lcom/smartadserver/android/library/g/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a:Ljava/util/HashMap;

    .line 175
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a:Ljava/util/HashMap;

    .line 178
    :cond_1
    sget-object v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)V
    .locals 4

    .prologue
    .line 188
    const-class v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 189
    :try_start_0
    iget v0, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    if-ltz v0, :cond_0

    .line 191
    invoke-static {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_0
    sget-object v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a:Ljava/util/HashMap;

    const-string v2, "preview"

    const-string v3, "previewPlacements.bin"

    invoke-static {p0, v0, v2, v3}, Lcom/smartadserver/android/library/g/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v1

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 98
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 99
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    const-string v0, "fid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    const-string v0, "t"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    .line 105
    :cond_0
    const-string v1, "iid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    const-string v1, "d"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    const-string v1, "e"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    const-string v1, "s"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    :try_start_0
    const-string v1, "v"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    const-string v11, "previewresetall"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    if-gt v1, v11, :cond_1

    if-gez v1, :cond_2

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported preview API version (current:1 requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0

    .line 124
    :cond_2
    new-instance v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    invoke-direct {v1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;-><init>()V

    .line 125
    iput-object v4, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->siteId:Ljava/lang/String;

    .line 126
    iput-object v5, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->pageId:Ljava/lang/String;

    .line 127
    iput-object v6, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->formatId:Ljava/lang/String;

    .line 128
    iput-object v0, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->target:Ljava/lang/String;

    .line 131
    const-string v11, "jG1976!LgDM87!Tg1985:E@6016"

    .line 132
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v4, "preview"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 141
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 142
    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    .line 143
    iput-wide v4, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewUrlExpirationDate:J

    .line 144
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewDuration:J

    .line 145
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->startTime:J

    .line 148
    invoke-static {p0, v1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)V

    .line 162
    :cond_3
    :goto_1
    return-void

    .line 150
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preview expiration date is passed already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :catch_1
    move-exception v0

    goto :goto_1

    .line 155
    :cond_5
    const-string v0, "previewreset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    iput v2, v1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    .line 157
    invoke-static {p0, v1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)V

    goto :goto_1

    .line 159
    :cond_6
    const-string v0, "previewresetall"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/net/Uri;)V

    .line 75
    const-string v1, "startMainActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->finish()V

    .line 87
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not enable preview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
