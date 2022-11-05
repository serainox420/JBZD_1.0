.class Lcom/smaato/soma/BannerView$2;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;->setAutoReloadFrequency(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/smaato/soma/BannerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView;I)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/smaato/soma/BannerView$2;->b:Lcom/smaato/soma/BannerView;

    iput p2, p0, Lcom/smaato/soma/BannerView$2;->a:I

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
    .line 317
    iget v0, p0, Lcom/smaato/soma/BannerView$2;->a:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/smaato/soma/BannerView$2;->a:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/smaato/soma/BannerView$2;->b:Lcom/smaato/soma/BannerView;

    iget v1, p0, Lcom/smaato/soma/BannerView$2;->a:I

    invoke-static {v0, v1}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/BannerView;I)I

    .line 322
    :goto_0
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/BannerView$2;->b:Lcom/smaato/soma/BannerView;

    invoke-static {v1}, Lcom/smaato/soma/BannerView;->b(Lcom/smaato/soma/BannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/f;->a(I)V

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/BannerView$2;->b:Lcom/smaato/soma/BannerView;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/BannerView;I)I

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
    .line 314
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
