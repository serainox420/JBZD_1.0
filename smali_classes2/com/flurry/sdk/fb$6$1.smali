.class final Lcom/flurry/sdk/fb$6$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb$6;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/flurry/sdk/fb$6$1;->a:Lcom/flurry/sdk/fb$6;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v2, p0, Lcom/flurry/sdk/fb$6$1;->a:Lcom/flurry/sdk/fb$6;

    iget-object v2, v2, Lcom/flurry/sdk/fb$6;->a:Lcom/flurry/sdk/fb;

    invoke-static {v2}, Lcom/flurry/sdk/fb;->f(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/kh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/fb$6$1;->a:Lcom/flurry/sdk/fb$6;

    iget-object v0, v0, Lcom/flurry/sdk/fb$6;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;)V

    .line 336
    iget-object v0, p0, Lcom/flurry/sdk/fb$6$1;->a:Lcom/flurry/sdk/fb$6;

    iget-object v0, v0, Lcom/flurry/sdk/fb$6;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/ho;->a()V

    .line 337
    return-void
.end method
