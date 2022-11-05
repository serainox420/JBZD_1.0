.class public Lcom/loopme/NativeVideoRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "NativeVideoRecyclerAdapter.java"

# interfaces
.implements Lcom/loopme/NativeVideoController$DataChangeListener;
.implements Lcom/loopme/common/AdChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static final TYPE_AD:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNativeVideoController:Lcom/loopme/NativeVideoController;

.field private mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$a;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Some of parameters is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    .line 41
    iput-object p3, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 43
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    new-instance v0, Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loopme/NativeVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    .line 46
    new-instance v0, Lcom/loopme/NativeVideoRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/loopme/NativeVideoRecyclerAdapter$1;-><init>(Lcom/loopme/NativeVideoRecyclerAdapter;)V

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 54
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/loopme/NativeVideoRecyclerAdapter$2;

    invoke-direct {v1, p0}, Lcom/loopme/NativeVideoRecyclerAdapter$2;-><init>(Lcom/loopme/NativeVideoRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    new-instance v1, Lcom/loopme/NativeVideoRecyclerAdapter$3;

    invoke-direct {v1, p0}, Lcom/loopme/NativeVideoRecyclerAdapter$3;-><init>(Lcom/loopme/NativeVideoRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/NativeVideoRecyclerAdapter;)Lcom/loopme/NativeVideoController;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/NativeVideoRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loopme/NativeVideoRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/loopme/NativeVideoRecyclerAdapter;->triggerUpdateProcessor()V

    return-void
.end method

.method private triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/loopme/NativeVideoRecyclerAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loopme/NativeVideoController;->refreshAdPlacement(I)V

    .line 98
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0}, Lcom/loopme/NativeVideoController;->destroy()V

    .line 105
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v1}, Lcom/loopme/NativeVideoController;->getAdsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/loopme/NativeVideoRecyclerAdapter;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    .line 240
    :goto_0
    return-wide v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getInitialPosition(I)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getInitialPosition(I)I

    move-result v0

    .line 226
    invoke-virtual {p0, p1}, Lcom/loopme/NativeVideoRecyclerAdapter;->isAd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public isAd(I)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAds()V
    .locals 2

    .prologue
    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 150
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "Not supported Android version. Expected Android 4.0+"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v1, v0}, Lcom/loopme/NativeVideoController;->onLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/loopme/common/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/loopme/NativeVideoController;->loadAds(ILcom/loopme/NativeVideoController$DataChangeListener;)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "No connection"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v1, v0}, Lcom/loopme/NativeVideoController;->onLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 282
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0, p2}, Lcom/loopme/NativeVideoRecyclerAdapter;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p2}, Lcom/loopme/NativeVideoController;->getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v2, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/loopme/NativeVideoController;->getAdView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/loopme/LoopMeBanner;I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 201
    check-cast v0, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;

    invoke-static {v0}, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;->access$400(Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_0
    check-cast p1, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;

    invoke-static {p1}, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;->access$400(Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 209
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p2}, Lcom/loopme/NativeVideoController;->getInitialPosition(I)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 4

    .prologue
    .line 182
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_0

    .line 183
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v0, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;

    invoke-direct {v0, p0, v1}, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;-><init>(Lcom/loopme/NativeVideoRecyclerAdapter;Landroid/view/View;)V

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    goto :goto_0
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->notifyDataSetChanged()V

    .line 292
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 287
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0}, Lcom/loopme/NativeVideoController;->onPause()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/loopme/NativeVideoController;->onResume(Landroid/support/v7/widget/RecyclerView;Lcom/loopme/common/AdChecker;)V

    .line 123
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 262
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 267
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 252
    return-void
.end method

.method public putAdWithAppKeyToPosition(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1, p2}, Lcom/loopme/NativeVideoController;->putAdWithAppKeyToPosition(Ljava/lang/String;I)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 272
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->setHasStableIds(Z)V

    .line 232
    return-void
.end method

.method public setListener(Lcom/loopme/LoopMeBanner$Listener;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->setListener(Lcom/loopme/LoopMeBanner$Listener;)V

    .line 178
    return-void
.end method

.method public setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    sget-object v0, Lcom/loopme/NativeVideoRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Set minimized mode"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setViewBinder(Lcom/loopme/NativeVideoBinder;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->setViewBinder(Lcom/loopme/NativeVideoBinder;)V

    .line 170
    :cond_0
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter;->mOriginAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 277
    return-void
.end method
