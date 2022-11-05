.class Lcom/smaato/soma/BannerView$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/BannerView;
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
    .line 92
    iput-object p1, p0, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/smaato/soma/BannerView$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$1$1;-><init>(Lcom/smaato/soma/BannerView$1;)V

    .line 106
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$1$1;->c()Ljava/lang/Object;

    .line 107
    return-void
.end method
