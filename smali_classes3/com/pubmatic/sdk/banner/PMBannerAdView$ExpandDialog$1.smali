.class Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

.field final synthetic val$this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 3006
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->val$this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/ui/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/ui/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->access$4500(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/TextView;

    move-result-object v0

    .line 3010
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->access$4500(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 3011
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3012
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V

    .line 3015
    :cond_2
    return-void
.end method
