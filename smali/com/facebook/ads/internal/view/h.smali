.class public Lcom/facebook/ads/internal/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/d$a;

.field private final c:Lcom/facebook/ads/internal/view/c;

.field private final d:Lcom/facebook/ads/internal/adapters/p;

.field private e:Lcom/facebook/ads/internal/adapters/o;

.field private f:J

.field private g:J

.field private h:Lcom/facebook/ads/internal/util/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h;->b:Lcom/facebook/ads/internal/view/d$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/h;->f:J

    new-instance v0, Lcom/facebook/ads/internal/view/c;

    new-instance v1, Lcom/facebook/ads/internal/view/h$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/h$1;-><init>(Lcom/facebook/ads/internal/view/h;Lcom/facebook/ads/AudienceNetworkActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/view/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/c$b;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/view/h$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/h$2;-><init>(Lcom/facebook/ads/internal/view/h;)V

    new-instance v1, Lcom/facebook/ads/internal/adapters/p;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/c;->getViewabilityChecker()Lcom/facebook/ads/internal/j/a;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/facebook/ads/internal/adapters/p;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b;Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/adapters/b;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/h;->d:Lcom/facebook/ads/internal/adapters/p;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->d:Lcom/facebook/ads/internal/adapters/p;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/p;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/h;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/h;Lcom/facebook/ads/internal/util/c$a;)Lcom/facebook/ads/internal/util/c$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->h:Lcom/facebook/ads/internal/util/c$a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/view/d$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->b:Lcom/facebook/ads/internal/view/d$a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/o;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/p;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->d:Lcom/facebook/ads/internal/adapters/p;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/o;->a(Landroid/os/Bundle;)Lcom/facebook/ads/internal/adapters/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-static {}, Lcom/facebook/ads/internal/util/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/o;->g()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/c;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/o;->b(Landroid/content/Intent;)Lcom/facebook/ads/internal/adapters/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->d:Lcom/facebook/ads/internal/adapters/p;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Lcom/facebook/ads/internal/adapters/o;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-static {}, Lcom/facebook/ads/internal/util/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/o;->g()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/c;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    if-eqz v0, :cond_0

    const-string v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/o;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d$a;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c;->onPause()V

    return-void
.end method

.method public f()V
    .locals 4

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/h;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->h:Lcom/facebook/ads/internal/util/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/h;->g:J

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->h:Lcom/facebook/ads/internal/util/c$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/o;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/c;->a(JLcom/facebook/ads/internal/util/c$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c;->onResume()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/h;->f:J

    sget-object v2, Lcom/facebook/ads/internal/util/c$a;->c:Lcom/facebook/ads/internal/util/c$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/o;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/c;->a(JLcom/facebook/ads/internal/util/c$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c;->getViewabilityChecker()Lcom/facebook/ads/internal/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/c;->getTouchData()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/g/g;->f(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c;->destroy()V

    return-void
.end method
