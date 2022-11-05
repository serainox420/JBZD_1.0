.class public Lcom/mopub/mobileads/AdAlertReporter;
.super Ljava/lang/Object;
.source "AdAlertReporter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/view/View;

.field private final c:Landroid/content/Context;

.field private d:Landroid/content/Intent;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->b:Landroid/view/View;

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertReporter;->c:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yy hh:mm:ss a z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 40
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->a:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->a()V

    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertReporter;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->e:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->f:Ljava/lang/String;

    .line 47
    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->e:Ljava/lang/String;

    .line 49
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->getResponseString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->f:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->c()V

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdAlertReporter;->a([Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x19

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 99
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->d:Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->d:Landroid/content/Intent;

    const-string v1, "mailto:creative-review@mopub.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 116
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 118
    const-string v2, "\n=================\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->d:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 79
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 82
    if-eqz v3, :cond_0

    .line 86
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->d:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New creative violation report - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    return-void
.end method


# virtual methods
.method public send()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->d:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->c:Landroid/content/Context;

    const-string v1, "No email client available"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
