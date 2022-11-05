.class Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 3039
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->val$this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3047
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3061
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 3062
    return-void

    .line 3050
    :pswitch_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    if-ne v0, v1, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0

    .line 3056
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Hidden:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    goto :goto_0

    .line 3047
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
