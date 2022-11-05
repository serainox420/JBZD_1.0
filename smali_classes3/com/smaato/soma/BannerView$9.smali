.class Lcom/smaato/soma/BannerView$9;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Lcom/smaato/soma/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/BannerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/smaato/soma/BannerView$9;->a:Lcom/smaato/soma/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdReceiveFailed;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/smaato/soma/BannerView$9$1;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/BannerView$9$1;-><init>(Lcom/smaato/soma/BannerView$9;Lcom/smaato/soma/p;)V

    .line 188
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$9$1;->c()Ljava/lang/Object;

    .line 189
    return-void
.end method
