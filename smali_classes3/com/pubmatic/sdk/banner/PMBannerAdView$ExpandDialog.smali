.class Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;
.super Landroid/app/Dialog;
.source "PMBannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandDialog"
.end annotation


# instance fields
.field private closeArea:Landroid/view/ViewGroup;

.field private container:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x32

    const/4 v1, -0x1

    .line 2997
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    .line 2998
    const v0, 0x1030007

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2994
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    .line 2995
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    .line 3000
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3002
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    .line 3003
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3004
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3006
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3018
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3019
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v1

    .line 3020
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3021
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3022
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3023
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    .line 3024
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3025
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3026
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3039
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$3;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3064
    return-void
.end method

.method static synthetic access$4500(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3115
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    .line 3116
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3118
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3121
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3123
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3126
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 3127
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 3099
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3112
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3105
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;->onCloseButtonClick(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3111
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 3067
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 3069
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3086
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 3088
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3089
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;->onExpanded(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 3094
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 3095
    return-void

    .line 3071
    :pswitch_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3072
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3100(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 3074
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    goto :goto_0

    .line 3069
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3135
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3136
    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3137
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_0

    .line 3138
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3141
    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3131
    return-void
.end method

.method public setCloseImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3144
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3146
    if-eqz p1, :cond_0

    .line 3147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3151
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v0

    .line 3152
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3154
    new-instance v2, Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;-><init>(Landroid/content/Context;)V

    .line 3155
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->setBackgroundColor(I)V

    .line 3156
    invoke-virtual {v2, p1}, Lcom/pubmatic/sdk/banner/ui/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3158
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->closeArea:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3160
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 3164
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 3165
    return-void
.end method
