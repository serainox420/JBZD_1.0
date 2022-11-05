.class Lcom/smaato/soma/BannerView$6;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
.field final synthetic a:Landroid/util/AttributeSet;

.field final synthetic b:Lcom/smaato/soma/BannerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/smaato/soma/BannerView$6;->b:Lcom/smaato/soma/BannerView;

    iput-object p2, p0, Lcom/smaato/soma/BannerView$6;->a:Landroid/util/AttributeSet;

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
    .line 128
    iget-object v0, p0, Lcom/smaato/soma/BannerView$6;->b:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->a()V

    .line 129
    iget-object v0, p0, Lcom/smaato/soma/BannerView$6;->b:Lcom/smaato/soma/BannerView;

    iget-object v1, p0, Lcom/smaato/soma/BannerView$6;->a:Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/BannerView;Landroid/util/AttributeSet;I)Z

    .line 130
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
    .line 124
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
