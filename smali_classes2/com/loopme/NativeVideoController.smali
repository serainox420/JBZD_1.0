.class Lcom/loopme/NativeVideoController;
.super Ljava/lang/Object;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/NativeVideoController$DataChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdListener:Lcom/loopme/LoopMeBanner$Listener;

.field private mAdsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/loopme/LoopMeBanner;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKeysMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Lcom/loopme/NativeVideoBinder;

.field private mContext:Landroid/content/Context;

.field private mDataChangeListener:Lcom/loopme/NativeVideoController$DataChangeListener;

.field private mHorizontalScrolling:Z

.field private mItemCount:I

.field private mMinimizedMode:Lcom/loopme/common/MinimizedMode;

.field private mViewMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/loopme/NativeVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/loopme/NativeVideoController;->mViewMap:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    .line 54
    iput-object p1, p0, Lcom/loopme/NativeVideoController;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/NativeVideoController;)Lcom/loopme/common/MinimizedMode;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/NativeVideoController;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/loopme/NativeVideoController;->mItemCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/loopme/NativeVideoController;Lcom/loopme/LoopMeBanner;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/loopme/NativeVideoController;->addItem(Lcom/loopme/LoopMeBanner;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/loopme/NativeVideoController;)Lcom/loopme/LoopMeBanner$Listener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    return-object v0
.end method

.method private addItem(Lcom/loopme/LoopMeBanner;I)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/loopme/LoopMeBanner;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 271
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 273
    invoke-virtual {p0}, Lcom/loopme/NativeVideoController;->getAdsCount()I

    move-result v1

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    sget-object v1, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add ad to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mDataChangeListener:Lcom/loopme/NativeVideoController$DataChangeListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mDataChangeListener:Lcom/loopme/NativeVideoController$DataChangeListener;

    invoke-interface {v0}, Lcom/loopme/NativeVideoController$DataChangeListener;->onDataSetChanged()V

    .line 281
    :cond_0
    return-void
.end method

.method private bindDataToView(Landroid/view/View;Lcom/loopme/NativeVideoBinder;I)V
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindDataToView"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Lcom/loopme/NativeVideoBinder;->getBannerViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBannerView;

    .line 198
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loopme/LoopMeBanner;

    .line 200
    invoke-virtual {v1, v0}, Lcom/loopme/LoopMeBanner;->bindView(Lcom/loopme/LoopMeBannerView;)V

    .line 201
    invoke-virtual {v1}, Lcom/loopme/LoopMeBanner;->showNativeVideo()V

    .line 202
    return-void
.end method

.method private initBannerListener()Lcom/loopme/LoopMeBanner$Listener;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/loopme/NativeVideoController$1;

    invoke-direct {v0, p0}, Lcom/loopme/NativeVideoController$1;-><init>(Lcom/loopme/NativeVideoController;)V

    return-object v0
.end method


# virtual methods
.method checkFiftyPersentVisibility(Landroid/view/View;Lcom/loopme/LoopMeBanner;)V
    .locals 4

    .prologue
    .line 406
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 411
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 413
    iget-boolean v0, p0, Lcom/loopme/NativeVideoController;->mHorizontalScrolling:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 414
    :goto_1
    iget-boolean v3, p0, Lcom/loopme/NativeVideoController;->mHorizontalScrolling:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 416
    :goto_2
    if-eqz v2, :cond_0

    .line 418
    if-ge v1, v0, :cond_4

    .line 419
    invoke-virtual {p2}, Lcom/loopme/LoopMeBanner;->pause()V

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 414
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_2

    .line 422
    :cond_4
    invoke-virtual {p2}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 423
    invoke-virtual {p2}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/loopme/IViewController;->onResume()V

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-object v0, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/loopme/LoopMeBanner;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loopme/AdController;->isVideoPresented()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loopme/AdController;->pauseVideo()V

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    invoke-interface {v2}, Lcom/loopme/IViewController;->onPause()V

    .line 91
    invoke-interface {v2}, Lcom/loopme/IViewController;->onDestroy()V

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->destroy()V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 96
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 97
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 98
    iput-object v3, p0, Lcom/loopme/NativeVideoController;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    .line 99
    iput-object v3, p0, Lcom/loopme/NativeVideoController;->mDataChangeListener:Lcom/loopme/NativeVideoController$DataChangeListener;

    .line 100
    return-void
.end method

.method getAdView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/loopme/LoopMeBanner;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAdView"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p3}, Lcom/loopme/NativeVideoController;->checkFiftyPersentVisibility(Landroid/view/View;Lcom/loopme/LoopMeBanner;)V

    .line 177
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mBinder:Lcom/loopme/NativeVideoBinder;

    if-nez v0, :cond_1

    .line 183
    sget-object v0, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error: NativeVideoBinder is null. Init and bind it"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mViewMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mBinder:Lcom/loopme/NativeVideoBinder;

    invoke-virtual {v0}, Lcom/loopme/NativeVideoBinder;->getLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mBinder:Lcom/loopme/NativeVideoBinder;

    invoke-direct {p0, v0, v1, p4}, Lcom/loopme/NativeVideoController;->bindDataToView(Landroid/view/View;Lcom/loopme/NativeVideoBinder;I)V

    goto :goto_1
.end method

.method getAdsCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getInitialPosition(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 284
    move v1, v0

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    sub-int v0, p1, v1

    return v0
.end method

.method getListener()Lcom/loopme/LoopMeBanner$Listener;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    return-object v0
.end method

.method getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    return-object v0
.end method

.method loadAds(ILcom/loopme/NativeVideoController$DataChangeListener;)V
    .locals 4

    .prologue
    .line 205
    iput-object p2, p0, Lcom/loopme/NativeVideoController;->mDataChangeListener:Lcom/loopme/NativeVideoController$DataChangeListener;

    .line 206
    iput p1, p0, Lcom/loopme/NativeVideoController;->mItemCount:I

    .line 208
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const-string v0, "No ads for loading"

    invoke-static {v0}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/loopme/NativeVideoController;->initBannerListener()Lcom/loopme/LoopMeBanner$Listener;

    move-result-object v2

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/loopme/NativeVideoController;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/loopme/LoopMeBanner;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v2}, Lcom/loopme/LoopMeBanner;->setListener(Lcom/loopme/LoopMeBanner$Listener;)V

    .line 217
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->load()V

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method onLoadFail(Lcom/loopme/common/LoopMeError;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerLoadFail(Lcom/loopme/LoopMeBanner;Lcom/loopme/common/LoopMeError;)V

    .line 153
    :cond_0
    return-void
.end method

.method onPause()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->pause()V

    .line 104
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_1
    return-void
.end method

.method onResume(Landroid/support/v7/widget/RecyclerView;Lcom/loopme/common/AdChecker;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 128
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 130
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 131
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/loopme/IViewController;->onResume()V

    .line 132
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/loopme/NativeVideoController;->onScroll(Landroid/support/v7/widget/RecyclerView;Lcom/loopme/common/AdChecker;)V

    goto :goto_0
.end method

.method onResume(Landroid/widget/AbsListView;Lcom/loopme/common/AdChecker;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 116
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 117
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/loopme/IViewController;->onResume()V

    .line 118
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/loopme/NativeVideoController;->onScroll(Landroid/widget/AbsListView;Lcom/loopme/common/AdChecker;)V

    goto :goto_0
.end method

.method onScroll(Landroid/support/v7/widget/RecyclerView;Lcom/loopme/common/AdChecker;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 331
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    .line 332
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v2

    .line 341
    instance-of v1, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_4

    move-object v1, v2

    .line 342
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    .line 343
    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    move v2, v1

    .line 378
    :goto_1
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 381
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loopme/LoopMeBanner;

    .line 382
    invoke-virtual {v1}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v6

    const/16 v7, 0x66

    if-eq v6, v7, :cond_0

    .line 386
    invoke-interface {p2, v5}, Lcom/loopme/common/AdChecker;->isAd(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    if-lt v5, v4, :cond_2

    if-le v5, v2, :cond_a

    .line 388
    :cond_2
    iget-object v5, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v5, v8, :cond_9

    .line 389
    invoke-virtual {v1}, Lcom/loopme/LoopMeBanner;->switchToMinimizedMode()V

    .line 378
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_4
    instance-of v1, v2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_5

    move-object v1, v2

    .line 346
    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    .line 347
    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    move v2, v1

    goto :goto_1

    .line 349
    :cond_5
    instance-of v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_b

    .line 353
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v1, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a([I)[I

    move-result-object v4

    .line 354
    move-object v0, v2

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v1, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b([I)[I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 359
    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()I

    move-result v1

    .line 360
    if-nez v1, :cond_6

    .line 361
    iput-boolean v8, p0, Lcom/loopme/NativeVideoController;->mHorizontalScrolling:Z

    .line 364
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    array-length v1, v4

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    .line 365
    :goto_3
    array-length v6, v4

    if-ge v1, v6, :cond_7

    .line 366
    aget v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 369
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    array-length v1, v5

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    .line 370
    :goto_4
    array-length v6, v5

    if-ge v1, v6, :cond_8

    .line 371
    aget v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 374
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 375
    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v2

    move v2, v1

    goto/16 :goto_1

    .line 391
    :cond_9
    invoke-virtual {v1}, Lcom/loopme/LoopMeBanner;->pause()V

    goto :goto_2

    .line 395
    :cond_a
    sub-int/2addr v5, v4

    .line 396
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView$h;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 397
    invoke-virtual {v1}, Lcom/loopme/LoopMeBanner;->switchToNormalMode()V

    .line 398
    invoke-virtual {p0, v5, v1}, Lcom/loopme/NativeVideoController;->checkFiftyPersentVisibility(Landroid/view/View;Lcom/loopme/LoopMeBanner;)V

    goto/16 :goto_2

    .line 355
    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_b
    move v2, v3

    move v4, v3

    goto/16 :goto_1
.end method

.method onScroll(Landroid/widget/AbsListView;Lcom/loopme/common/AdChecker;)V
    .locals 7

    .prologue
    .line 294
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 328
    :cond_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 298
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 300
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 304
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 307
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 308
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getAdController()Lcom/loopme/AdController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v5

    const/16 v6, 0x66

    if-eq v5, v6, :cond_0

    .line 312
    invoke-interface {p2, v4}, Lcom/loopme/common/AdChecker;->isAd(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    if-lt v4, v2, :cond_2

    if-le v4, v3, :cond_5

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 315
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->switchToMinimizedMode()V

    .line 304
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 317
    :cond_4
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->pause()V

    goto :goto_1

    .line 321
    :cond_5
    sub-int/2addr v4, v2

    .line 322
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 323
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->switchToNormalMode()V

    .line 324
    invoke-virtual {p0, v4, v0}, Lcom/loopme/NativeVideoController;->checkFiftyPersentVisibility(Landroid/view/View;Lcom/loopme/LoopMeBanner;)V

    goto :goto_1
.end method

.method putAdWithAppKeyToPosition(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/loopme/NativeVideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putAdWithAppKeyToPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAppKeysMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method refreshAdPlacement(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 58
    iget v1, p0, Lcom/loopme/NativeVideoController;->mItemCount:I

    if-lt p1, v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-nez p1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 64
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->destroy()V

    .line 65
    iget-object v0, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 69
    iget-object v1, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    move v1, v0

    .line 70
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 71
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 73
    if-gt v3, p1, :cond_3

    .line 74
    iget-object v4, p0, Lcom/loopme/NativeVideoController;->mAdsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->destroy()V

    goto :goto_2
.end method

.method setListener(Lcom/loopme/LoopMeBanner$Listener;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/loopme/NativeVideoController;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    .line 147
    return-void
.end method

.method setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/loopme/NativeVideoController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    .line 430
    return-void
.end method

.method setViewBinder(Lcom/loopme/NativeVideoBinder;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/loopme/NativeVideoController;->mBinder:Lcom/loopme/NativeVideoBinder;

    .line 143
    return-void
.end method
