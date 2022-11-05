.class Lcom/smaato/soma/BannerView$9$1;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView$9;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
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
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Lcom/smaato/soma/BannerView$9;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView$9;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/smaato/soma/BannerView$9$1;->b:Lcom/smaato/soma/BannerView$9;

    iput-object p2, p0, Lcom/smaato/soma/BannerView$9$1;->a:Lcom/smaato/soma/p;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smaato/soma/BannerView$9$1;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->k()Lcom/smaato/soma/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    if-eq v0, v1, :cond_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$9$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
