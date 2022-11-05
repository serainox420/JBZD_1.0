.class final Lcom/flurry/sdk/fb$2;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/el;

.field final synthetic d:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/el;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/flurry/sdk/fb$2;->d:Lcom/flurry/sdk/fb;

    iput-object p2, p0, Lcom/flurry/sdk/fb$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/sdk/fb$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/fb$2;->c:Lcom/flurry/sdk/el;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/flurry/sdk/fb$2;->d:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;)V

    .line 200
    new-instance v0, Lcom/flurry/sdk/fc;

    iget-object v1, p0, Lcom/flurry/sdk/fb$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/fb$2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/flurry/sdk/fb$2;->d:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/sdk/ho;->a(Landroid/widget/RelativeLayout;)V

    .line 202
    new-instance v1, Lcom/flurry/sdk/fb$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/fb$2$1;-><init>(Lcom/flurry/sdk/fb$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fc;->setRequestCompleteListener(Lcom/flurry/sdk/fc$b;)V

    .line 213
    return-void
.end method
