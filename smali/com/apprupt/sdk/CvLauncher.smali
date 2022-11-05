.class Lcom/apprupt/sdk/CvLauncher;
.super Ljava/lang/Object;
.source "CvLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvLauncher$ResizeProperties;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/apprupt/sdk/CvLauncher;->b:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvLauncher;->c:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    .line 66
    iput-object p1, p0, Lcom/apprupt/sdk/CvLauncher;->a:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/content/Intent;)V

    .line 165
    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "^[0-9]+x[0-9]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "((^\\/)|(\\/$))"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 131
    invoke-static {v3}, Lcom/apprupt/sdk/CvBase64;->b(Ljava/lang/String;)[B

    move-result-object v3

    .line 132
    if-eqz v3, :cond_1

    .line 133
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 134
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 135
    if-nez v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-eqz v0, :cond_2

    .line 141
    new-instance v3, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;-><init>(Lcom/apprupt/sdk/CvLauncher;IILjava/lang/String;)V

    iput-object v3, p0, Lcom/apprupt/sdk/CvLauncher;->c:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    .line 145
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/apprupt/sdk/CvLauncher;->b:I

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    invoke-direct {v0, p0, v2, v1}, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;-><init>(Lcom/apprupt/sdk/CvLauncher;II)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvLauncher;->c:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/apprupt/sdk/CvLauncher;->a:Landroid/content/Context;

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

.method static synthetic a(Lcom/apprupt/sdk/CvLauncher;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 155
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 157
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/apprupt/sdk/CvICSLoader;

    iget-object v1, p0, Lcom/apprupt/sdk/CvLauncher;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/apprupt/sdk/CvICSLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 169
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/CvLauncher;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvLauncher;->c(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvLauncher;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const-string v2, "LAUNCHER"

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

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/apprupt/sdk/CvLauncher;->a:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 188
    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    const-string v3, "LAUNCHER"

    invoke-static {v3}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Cannot find proper activity for intent"

    aput-object v5, v4, v0

    aput-object v2, v4, v1

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/content/Intent;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvLauncher;->c(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private d(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/apprupt/sdk/CvLauncher;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 206
    new-instance v3, Lcom/apprupt/sdk/CvLauncher$1;

    invoke-direct {v3, p0, p1}, Lcom/apprupt/sdk/CvLauncher$1;-><init>(Lcom/apprupt/sdk/CvLauncher;Landroid/net/Uri;)V

    .line 213
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    const/4 v0, -0x1

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->c:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 224
    const/4 v0, -0x2

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->b:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 225
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 226
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/apprupt/sdk/CvLauncher;->b:I

    return v0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/CvLauncher;->a(Ljava/lang/String;Z)V

    .line 230
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lcom/apprupt/sdk/CvOverlayLoader;

    iget-object v1, p0, Lcom/apprupt/sdk/CvLauncher;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/apprupt/sdk/CvOverlayLoader;-><init>(Landroid/content/Context;Z)V

    .line 239
    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/CvOverlayLoader;->a(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apprupt/sdk/CvAdType;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/apprupt/sdk/CvLauncher;->b:I

    .line 80
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "webcal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ics"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvLauncher;->b(Ljava/lang/String;)V

    .line 118
    :goto_0
    return v0

    .line 85
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 86
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ics"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "webapps.apprupt.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "market.android.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^(.+\\.)?(youtube\\.)([a-z]+)$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    :cond_4
    invoke-direct {p0, v2}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/net/Uri;)Z

    goto :goto_0

    .line 90
    :cond_5
    sget-object v3, Lcom/apprupt/sdk/CvAdType;->c:Lcom/apprupt/sdk/CvAdType;

    if-ne p2, v3, :cond_6

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_6
    const-string v3, "LAUNCHER"

    invoke-static {v3}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Launcher"

    aput-object v5, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running browser overlay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/apprupt/sdk/CvLauncher;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_7
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "browserhttp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "browserhttps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 101
    :cond_9
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 105
    :cond_a
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "resize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 106
    invoke-direct {p0, v2}, Lcom/apprupt/sdk/CvLauncher;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 109
    :cond_b
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 110
    invoke-direct {p0, v2}, Lcom/apprupt/sdk/CvLauncher;->d(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 113
    :cond_c
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mailto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 114
    invoke-direct {p0, v2}, Lcom/apprupt/sdk/CvLauncher;->c(Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 117
    :cond_d
    invoke-direct {p0, v2}, Lcom/apprupt/sdk/CvLauncher;->b(Landroid/net/Uri;)Z

    goto/16 :goto_0
.end method

.method b()Lcom/apprupt/sdk/CvLauncher$ResizeProperties;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/apprupt/sdk/CvLauncher;->c:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    return-object v0
.end method
