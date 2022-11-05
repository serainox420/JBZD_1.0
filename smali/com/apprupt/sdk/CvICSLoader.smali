.class Lcom/apprupt/sdk/CvICSLoader;
.super Ljava/lang/Object;
.source "CvICSLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvICSLoader$Event;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/apprupt/sdk/CvICSLoader$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvICSLoader$1;-><init>(Lcom/apprupt/sdk/CvICSLoader;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->d:Landroid/os/Handler;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->e:[Ljava/lang/String;

    .line 127
    const-string v0, "webcal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "http%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_0
    iput-object p2, p0, Lcom/apprupt/sdk/CvICSLoader;->c:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader;->a:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->a:Landroid/content/Context;

    const-string v1, ""

    sget-object v2, Lcom/apprupt/sdk/CvLocale;->d:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->b:Landroid/app/ProgressDialog;

    .line 133
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvICSLoader;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvICSLoader;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvICSLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->d:Landroid/os/Handler;

    new-instance v1, Lcom/apprupt/sdk/CvICSLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvICSLoader$2;-><init>(Lcom/apprupt/sdk/CvICSLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvICSLoader;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader;->e:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvICSLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvICSLoader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 175
    const-string v0, ""

    move v4, v3

    move v0, v3

    move-object v1, v2

    .line 179
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/apprupt/sdk/CvICSLoader;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 180
    iget-object v5, p0, Lcom/apprupt/sdk/CvICSLoader;->e:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 181
    const-string v6, "BEGIN:VEVENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    new-instance v1, Lcom/apprupt/sdk/CvICSLoader$Event;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvICSLoader$Event;-><init>(Lcom/apprupt/sdk/CvICSLoader;)V

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const-string v6, "END:VEVENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    iget-object v5, p0, Lcom/apprupt/sdk/CvICSLoader;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/apprupt/sdk/CvICSLoader$Event;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int/2addr v0, v1

    move-object v1, v2

    .line 185
    goto :goto_1

    :cond_2
    move v1, v3

    .line 184
    goto :goto_2

    .line 186
    :cond_3
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1, v5}, Lcom/apprupt/sdk/CvICSLoader$Event;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 197
    sget-object v0, Lcom/apprupt/sdk/CvLocale;->h:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V

    .line 205
    :goto_3
    return-void

    .line 190
    :cond_4
    if-lez v0, :cond_5

    .line 191
    :try_start_1
    sget-object v0, Lcom/apprupt/sdk/CvLocale;->e:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 198
    :catch_1
    move-exception v0

    .line 200
    sget-object v0, Lcom/apprupt/sdk/CvLocale;->h:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 193
    :cond_5
    :try_start_2
    sget-object v0, Lcom/apprupt/sdk/CvLocale;->f:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 201
    :catch_2
    move-exception v0

    .line 203
    sget-object v0, Lcom/apprupt/sdk/CvLocale;->h:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/apprupt/sdk/URLRequest;->c(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvICSLoader$3;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvICSLoader$3;-><init>(Lcom/apprupt/sdk/CvICSLoader;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->b()Lcom/apprupt/sdk/URLRequest;

    .line 172
    return-void
.end method
