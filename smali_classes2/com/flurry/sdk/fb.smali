.class public Lcom/flurry/sdk/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fb$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Landroid/app/ProgressDialog;

.field public c:Landroid/os/Bundle;

.field public d:Lcom/flurry/sdk/ho;

.field e:Lcom/flurry/sdk/fb$a;

.field public f:I

.field public final g:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/eh;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private final m:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/flurry/sdk/fb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/fb;->h:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object v1, p0, Lcom/flurry/sdk/fb;->c:Landroid/os/Bundle;

    .line 46
    iput-object v1, p0, Lcom/flurry/sdk/fb;->d:Lcom/flurry/sdk/ho;

    .line 47
    sget-object v0, Lcom/flurry/sdk/fb$a;->a:Lcom/flurry/sdk/fb$a;

    iput-object v0, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    .line 48
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/fb;->i:J

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/fb;->f:I

    .line 322
    new-instance v0, Lcom/flurry/sdk/fb$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fb$6;-><init>(Lcom/flurry/sdk/fb;)V

    iput-object v0, p0, Lcom/flurry/sdk/fb;->g:Lcom/flurry/sdk/kh;

    .line 403
    new-instance v0, Lcom/flurry/sdk/fb$8;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fb$8;-><init>(Lcom/flurry/sdk/fb;)V

    iput-object v0, p0, Lcom/flurry/sdk/fb;->m:Lcom/flurry/sdk/kh;

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/fb;->h:Ljava/lang/ref/WeakReference;

    .line 1343
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    .line 1344
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1345
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1346
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1347
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/flurry/sdk/fb$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/fb$7;-><init>(Lcom/flurry/sdk/fb;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fb;->l:Ljava/lang/String;

    .line 2104
    if-nez p1, :cond_0

    .line 2105
    sget-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iput-boolean v5, p0, Lcom/flurry/sdk/fb;->j:Z

    .line 2128
    :goto_0
    :try_start_0
    const-string v0, "android.support.customtabs.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/fb;->k:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    :goto_1
    return-void

    .line 2111
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/flurry/sdk/fb;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://flurryandroidtumblrshare"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2114
    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2116
    if-eqz v0, :cond_1

    .line 2117
    iput-boolean v6, p0, Lcom/flurry/sdk/fb;->j:Z

    goto :goto_0

    .line 2120
    :cond_1
    sget-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v1, "To use chrome tabs for tumblr login, setting up intent filter deep link in app manifest is required."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iput-boolean v5, p0, Lcom/flurry/sdk/fb;->j:Z

    goto :goto_0

    .line 2132
    :catch_0
    move-exception v0

    sget-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v1, "To use chrome tabs for tumblr login, must include chrome custom tabs as dependency"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iput-boolean v5, p0, Lcom/flurry/sdk/fb;->k:Z

    goto :goto_1
.end method

.method static synthetic a(Landroid/os/Bundle;)Lcom/flurry/sdk/ey;
    .locals 1

    .prologue
    .line 41
    .line 6308
    invoke-static {p0}, Lcom/flurry/sdk/ez;->a(Landroid/os/Bundle;)Lcom/flurry/sdk/ey;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/fb;)V
    .locals 2

    .prologue
    .line 41
    .line 4399
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/fb;->i:J

    .line 4400
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/fb;->m:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 4367
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fb;Lcom/flurry/sdk/el;)V
    .locals 1

    .prologue
    .line 5356
    .line 6064
    invoke-static {p1}, Lcom/flurry/sdk/ed;->b(Lcom/flurry/sdk/el;)V

    .line 5357
    sget-object v0, Lcom/flurry/sdk/fb$a;->f:Lcom/flurry/sdk/fb$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 5358
    invoke-virtual {p0}, Lcom/flurry/sdk/fb;->b()V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fb;Lcom/flurry/sdk/el;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 41
    .line 5180
    iget-object v0, p0, Lcom/flurry/sdk/fb;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5181
    if-nez v0, :cond_0

    .line 5182
    sget-object v0, Lcom/flurry/sdk/ei;->c:Lcom/flurry/sdk/ei;

    iget v1, p0, Lcom/flurry/sdk/fb;->f:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 5188
    :goto_0
    return-void

    .line 5186
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    sget-object v2, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5187
    sget-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v1, "Do not show OAuth web view. Activity destroyed."

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5191
    :cond_1
    sget-object v1, Lcom/flurry/sdk/fb$a;->d:Lcom/flurry/sdk/fb$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 5192
    sget-object v1, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting auth url."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5194
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/fb$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/flurry/sdk/fb$2;-><init>(Lcom/flurry/sdk/fb;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/el;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/fb;Lcom/flurry/sdk/fb$a;)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fb;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 41
    .line 6266
    iget-object v0, p0, Lcom/flurry/sdk/fb;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 6267
    if-nez v0, :cond_0

    .line 6268
    sget-object v0, Lcom/flurry/sdk/ei;->c:Lcom/flurry/sdk/ei;

    iget v1, p0, Lcom/flurry/sdk/fb;->f:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 6274
    :goto_0
    return-void

    .line 6272
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    sget-object v2, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6273
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v2, "Do not launch post dialog. Activity destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6277
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/fb$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/sdk/fb$5;-><init>(Lcom/flurry/sdk/fb;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/fb;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/fb;->h:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/fb;->d:Lcom/flurry/sdk/ho;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/fb;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/flurry/sdk/fb;->f:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/fb;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/fb;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/kh;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/fb;->g:Lcom/flurry/sdk/kh;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/fb;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/flurry/sdk/fb;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcom/flurry/sdk/fb;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 138
    sget-object v0, Lcom/flurry/sdk/fb$a;->c:Lcom/flurry/sdk/fb$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 140
    iget-boolean v0, p0, Lcom/flurry/sdk/fb;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/sdk/fb;->k:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 142
    :goto_0
    const/4 v0, 0x0

    .line 143
    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/sdk/fb;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://flurryandroidtumblrshare"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    new-instance v2, Lcom/flurry/sdk/fb$1;

    invoke-direct {v2, p0, v1}, Lcom/flurry/sdk/fb$1;-><init>(Lcom/flurry/sdk/fb;Z)V

    .line 3016
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v3, Lcom/flurry/sdk/eu$1;

    invoke-direct {v3, v2, v0}, Lcom/flurry/sdk/eu$1;-><init>(Lcom/flurry/sdk/es$a;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 176
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/el;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    sget-object v1, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fb$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v2, "Do not show fetch access token. Activity destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/flurry/sdk/fb$a;->e:Lcom/flurry/sdk/fb$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 3362
    iget-object v0, p0, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 227
    invoke-virtual {p0}, Lcom/flurry/sdk/fb;->c()V

    .line 229
    new-instance v0, Lcom/flurry/sdk/fb$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fb$3;-><init>(Lcom/flurry/sdk/fb;)V

    .line 4026
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/eu$2;

    invoke-direct {v2, p1, p2, v0}, Lcom/flurry/sdk/eu$2;-><init>(Lcom/flurry/sdk/el;Ljava/lang/String;Lcom/flurry/sdk/em$a;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/fb$a;)V
    .locals 4

    .prologue
    .line 303
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changing state from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    iput-object p1, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    .line 305
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    sget-object v1, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fb$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v2, "Do not get user info. Activity destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/flurry/sdk/fb$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fb$4;-><init>(Lcom/flurry/sdk/fb;)V

    .line 4036
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/eu$3;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/eu$3;-><init>(Lcom/flurry/sdk/ew$a;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/fb;->i:J

    .line 395
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/fb;->m:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/kh;)V

    .line 396
    return-void
.end method
