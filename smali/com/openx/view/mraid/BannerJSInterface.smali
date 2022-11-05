.class public Lcom/openx/view/mraid/BannerJSInterface;
.super Lcom/openx/view/mraid/BaseJSInterface;
.source "BannerJSInterface.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/openx/view/mraid/BaseJSInterface;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 18
    iput-object p1, p0, Lcom/openx/view/mraid/BannerJSInterface;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getPlacementType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 25
    const-string v0, "[][][][][][] getPlacement inline"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    const-string v0, "inline"

    return-object v0
.end method
