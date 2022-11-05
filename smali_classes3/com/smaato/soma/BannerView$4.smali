.class Lcom/smaato/soma/BannerView$4;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;->onAttachedToWindow()V
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
.field final synthetic a:Lcom/smaato/soma/BannerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/smaato/soma/BannerView$4;->a:Lcom/smaato/soma/BannerView;

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
    .line 373
    iget-object v0, p0, Lcom/smaato/soma/BannerView$4;->a:Lcom/smaato/soma/BannerView;

    iget-boolean v0, v0, Lcom/smaato/soma/BannerView;->a:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/smaato/soma/BannerView$4;->a:Lcom/smaato/soma/BannerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smaato/soma/BannerView;->d:Z

    .line 376
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
    .line 370
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
