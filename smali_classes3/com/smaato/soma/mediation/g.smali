.class public Lcom/smaato/soma/mediation/g;
.super Ljava/lang/Object;
.source "MediationEventBannerAdapter.java"

# interfaces
.implements Lcom/smaato/soma/mediation/f$a;


# instance fields
.field private a:Z

.field private b:Lcom/smaato/soma/j;

.field private c:Landroid/content/Context;

.field private d:Lcom/smaato/soma/mediation/f;

.field private e:Lcom/smaato/soma/mediation/f$a;

.field private f:Lcom/smaato/soma/mediation/o;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/j;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/f$a;)V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p4, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/mediation/g;->g:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/smaato/soma/mediation/g;->b:Lcom/smaato/soma/j;

    .line 49
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/mediation/g;->c:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    .line 51
    new-instance v0, Lcom/smaato/soma/mediation/g$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/mediation/g$1;-><init>(Lcom/smaato/soma/mediation/g;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/g;->h:Ljava/lang/Runnable;

    .line 68
    :try_start_0
    invoke-direct {p0, p3}, Lcom/smaato/soma/mediation/g;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    sget-object v0, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/mediation/g;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 92
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p2, p0, Lcom/smaato/soma/mediation/g;->i:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to invoke custom event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 83
    invoke-static {p2}, Lcom/smaato/soma/mediation/i;->a(Ljava/lang/String;)Lcom/smaato/soma/mediation/f;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-direct {p0}, Lcom/smaato/soma/mediation/g;->j()V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    invoke-direct {p0}, Lcom/smaato/soma/mediation/g;->k()V

    goto :goto_0
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->a()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/g;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method private i()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x1d4c

    return v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 298
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Dependencies missing. Check configurations of you Custom Adapter Config."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 303
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 304
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    .line 305
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 309
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Exception happened with Mediation inputs. Check you Custom Adapter Config."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 314
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 315
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    .line 316
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->b:Lcom/smaato/soma/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->b()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/smaato/soma/mediation/g;->h()V

    .line 214
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->b:Lcom/smaato/soma/j;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    invoke-interface {v0, p1}, Lcom/smaato/soma/mediation/f$a;->a(Landroid/view/View;)V

    .line 218
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "onReceiveAd successfully"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Exception with View parent detachment"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/smaato/soma/ErrorCode;)V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->b:Lcom/smaato/soma/j;

    if-eqz v0, :cond_0

    .line 242
    if-nez p1, :cond_2

    .line 243
    sget-object p1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/smaato/soma/mediation/g;->h()V

    .line 247
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    invoke-interface {v0, p1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 248
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->b:Lcom/smaato/soma/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->b()V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->b:Lcom/smaato/soma/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->e:Lcom/smaato/soma/mediation/f$a;

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->c()V

    goto :goto_0
.end method

.method public d()Lcom/smaato/soma/mediation/f;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;

    return-object v0
.end method

.method public e()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    sget-object v0, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/mediation/g;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 97
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    .line 150
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/smaato/soma/mediation/g;->i()I

    move-result v0

    if-lez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/g;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smaato/soma/mediation/g;->i()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->a()Ljava/util/Map;

    move-result-object v0

    .line 112
    if-nez v0, :cond_3

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    :cond_3
    const-string v1, "CUSTOM_WIDTH"

    iget-object v2, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    invoke-virtual {v2}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "CUSTOM_HEIGHT"

    iget-object v2, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    invoke-virtual {v2}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    .line 119
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 120
    const/4 v2, 0x1

    const-class v3, Lcom/smaato/soma/mediation/f$a;

    aput-object v3, v1, v2

    .line 121
    const/4 v2, 0x2

    const-class v3, Ljava/util/Map;

    aput-object v3, v1, v2

    .line 123
    iget-object v2, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/mediation/g;->f:Lcom/smaato/soma/mediation/o;

    invoke-virtual {v3}, Lcom/smaato/soma/mediation/o;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/mediation/g;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Loading a custom event banner configuration exception."

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 138
    sget-object v0, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/mediation/g;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 139
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    goto/16 :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 142
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Loading a custom event banner threw an exception."

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 147
    sget-object v0, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/mediation/g;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 148
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/g;->f()V

    goto/16 :goto_0
.end method

.method f()V
    .locals 5

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/f;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/smaato/soma/mediation/g;->c:Landroid/content/Context;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/g;->d:Lcom/smaato/soma/mediation/f;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/mediation/g;->a:Z

    .line 173
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Invalidating a custom event banner threw an exception"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    goto :goto_1

    .line 172
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method g()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/smaato/soma/mediation/g;->a:Z

    return v0
.end method
