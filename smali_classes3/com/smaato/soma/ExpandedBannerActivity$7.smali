.class Lcom/smaato/soma/ExpandedBannerActivity$7;
.super Lcom/smaato/soma/l;
.source "ExpandedBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/e/a;

.field final synthetic b:Lcom/smaato/soma/ExpandedBannerActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity;Lcom/smaato/soma/internal/e/a;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$7;->b:Lcom/smaato/soma/ExpandedBannerActivity;

    iput-object p2, p0, Lcom/smaato/soma/ExpandedBannerActivity$7;->a:Lcom/smaato/soma/internal/e/a;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$7;->a:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->clearView()V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$7;->a:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0, v2}, Lcom/smaato/soma/internal/e/a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 363
    return-object v2

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$7;->a:Lcom/smaato/soma/internal/e/a;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
