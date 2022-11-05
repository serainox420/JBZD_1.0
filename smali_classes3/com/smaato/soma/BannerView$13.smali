.class Lcom/smaato/soma/BannerView$13;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;->getAutoReloadFrequency()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/BannerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/smaato/soma/BannerView$13;->a:Lcom/smaato/soma/BannerView;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/smaato/soma/BannerView$13;->a:Lcom/smaato/soma/BannerView;

    invoke-static {v0}, Lcom/smaato/soma/BannerView;->b(Lcom/smaato/soma/BannerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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
    .line 299
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$13;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
