.class final Lcom/flurry/sdk/gy$5$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/gy$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/flurry/sdk/gy$5$1;->c:Lcom/flurry/sdk/gy$5;

    iput-object p2, p0, Lcom/flurry/sdk/gy$5$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/gy$5$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/flurry/sdk/gy$5$1;->c:Lcom/flurry/sdk/gy$5;

    iget-object v0, v0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/flurry/sdk/gy$5$1;->c:Lcom/flurry/sdk/gy$5;

    iget-object v0, v0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gy$5$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/gy$5$1;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/flurry/sdk/gy$5$1;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_0
    return-void
.end method
