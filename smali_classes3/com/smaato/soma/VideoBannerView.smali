.class public Lcom/smaato/soma/VideoBannerView;
.super Lcom/smaato/soma/BannerView;
.source "VideoBannerView.java"


# instance fields
.field private m:Lcom/smaato/soma/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/smaato/soma/VideoBannerView;->l()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/smaato/soma/VideoBannerView;->l()V

    .line 49
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/smaato/soma/VideoBannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->NOT_SET:Lcom/smaato/soma/AdDimension;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getVideoListener()Lcom/smaato/soma/t;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smaato/soma/VideoBannerView;->m:Lcom/smaato/soma/t;

    return-object v0
.end method

.method public setVideoListener(Lcom/smaato/soma/t;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smaato/soma/VideoBannerView;->m:Lcom/smaato/soma/t;

    .line 57
    return-void
.end method
