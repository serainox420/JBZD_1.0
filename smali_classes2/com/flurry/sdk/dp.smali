.class public Lcom/flurry/sdk/dp;
.super Lcom/flurry/sdk/kx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/kx",
        "<",
        "Lcom/flurry/sdk/do;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/dp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/flurry/sdk/kx;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/do;I)V
    .locals 4

    .prologue
    .line 29
    .line 5139
    if-eqz p0, :cond_1

    .line 5143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5144
    const-string v1, "event"

    .line 5201
    iget-object v2, p0, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    .line 5144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5145
    const-string v1, "url"

    .line 6030
    iget-object v2, p0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 5145
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5146
    const-string v1, "response"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5148
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    .line 6203
    iget-object v1, p0, Lcom/flurry/sdk/do;->b:Ljava/lang/String;

    .line 5148
    sget-object v2, Lcom/flurry/sdk/bc;->O:Lcom/flurry/sdk/bc;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bc;ZLjava/util/Map;)V

    .line 5150
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 6210
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/do;->c:Ljava/util/HashMap;

    .line 5150
    if-eqz v0, :cond_1

    .line 7210
    iget-object v0, p0, Lcom/flurry/sdk/do;->c:Ljava/util/HashMap;

    .line 5152
    sget-object v1, Lcom/flurry/sdk/mj$b;->a:Lcom/flurry/sdk/mj$b;

    .line 8062
    iget-object v1, v1, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    .line 5152
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 5153
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 8070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 29
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dp;->c(Lcom/flurry/sdk/kw;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dp;->c(Lcom/flurry/sdk/kw;)V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dp;->d(Lcom/flurry/sdk/kw;)V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dp;->c(Lcom/flurry/sdk/kw;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/kf;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/do;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/flurry/sdk/kf;

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 1097
    iget-object v1, v1, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 39
    const-string v2, ".yflurryreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryreporter"

    const/4 v3, 0x3

    new-instance v4, Lcom/flurry/sdk/dp$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/dp$1;-><init>(Lcom/flurry/sdk/dp;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/kf;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lj;)V

    return-object v0
.end method

.method protected final a(Lcom/flurry/sdk/do;)V
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending next report for original url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2030
    iget-object v3, p1, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to current url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2038
    iget-object v3, p1, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 3038
    iget-object v1, p1, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 3136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 4027
    const v1, 0x186a0

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 61
    sget-object v1, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 4144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 4193
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flurry/sdk/ku;->j:Z

    .line 63
    new-instance v1, Lcom/flurry/sdk/dp$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dp$2;-><init>(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/do;)V

    .line 5049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 135
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 136
    return-void
.end method

.method protected final bridge synthetic a(Lcom/flurry/sdk/kw;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/flurry/sdk/do;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/do;)V

    return-void
.end method
