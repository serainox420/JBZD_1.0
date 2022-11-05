.class public Lcom/loopme/NativeVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "NativeVideoAdapter.java"

# interfaces
.implements Lcom/loopme/NativeVideoController$DataChangeListener;
.implements Lcom/loopme/common/AdChecker;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/AbsListView;

.field private mNativeVideoController:Lcom/loopme/NativeVideoController;

.field private mOriginAdapter:Landroid/widget/BaseAdapter;

.field private mOriginScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/loopme/NativeVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/NativeVideoAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/loopme/NativeVideoAdapter;->mListView:Landroid/widget/AbsListView;

    .line 40
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    new-instance v0, Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loopme/NativeVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    .line 43
    new-instance v0, Lcom/loopme/NativeVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/loopme/NativeVideoAdapter$1;-><init>(Lcom/loopme/NativeVideoAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 60
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    new-instance v1, Lcom/loopme/NativeVideoAdapter$2;

    invoke-direct {v1, p0}, Lcom/loopme/NativeVideoAdapter$2;-><init>(Lcom/loopme/NativeVideoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/NativeVideoAdapter;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/NativeVideoAdapter;)Lcom/loopme/NativeVideoController;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/NativeVideoAdapter;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/loopme/NativeVideoAdapter;->triggerUpdateProcessor()V

    return-void
.end method

.method private triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/loopme/NativeVideoAdapter;->notifyDataSetChanged()V

    .line 75
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loopme/NativeVideoController;->refreshAdPlacement(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0}, Lcom/loopme/NativeVideoController;->destroy()V

    .line 83
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v1}, Lcom/loopme/NativeVideoController;->getAdsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/loopme/NativeVideoAdapter;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getInitialPosition(I)I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/loopme/NativeVideoAdapter;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    .line 230
    :goto_0
    return-wide v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getInitialPosition(I)I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/loopme/NativeVideoAdapter;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/loopme/NativeVideoAdapter;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getNativeVideoAd(I)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v2, p0, Lcom/loopme/NativeVideoAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p3, v0, p1}, Lcom/loopme/NativeVideoController;->getAdView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/loopme/LoopMeBanner;I)Landroid/view/View;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->getInitialPosition(I)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isAd(I)Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

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

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public loadAds()V
    .locals 2

    .prologue
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 121
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "Not supported Android version. Expected Android 4.0+"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v1, v0}, Lcom/loopme/NativeVideoController;->onLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/loopme/common/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/loopme/NativeVideoController;->loadAds(ILcom/loopme/NativeVideoController$DataChangeListener;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "No connection"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v1, v0}, Lcom/loopme/NativeVideoController;->onLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 256
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/loopme/NativeVideoAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0}, Lcom/loopme/NativeVideoController;->onPause()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/loopme/NativeVideoAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, p0}, Lcom/loopme/NativeVideoController;->onResume(Landroid/widget/AbsListView;Lcom/loopme/common/AdChecker;)V

    .line 101
    return-void
.end method

.method public putAdWithAppKeyToPosition(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1, p2}, Lcom/loopme/NativeVideoController;->putAdWithAppKeyToPosition(Ljava/lang/String;I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/loopme/NativeVideoAdapter;->LOG_TAG:Ljava/lang/String;

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

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    return-void
.end method

.method public setAdListener(Lcom/loopme/LoopMeBanner$Listener;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->setListener(Lcom/loopme/LoopMeBanner$Listener;)V

    .line 154
    return-void
.end method

.method public setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V
    .locals 2

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    sget-object v0, Lcom/loopme/NativeVideoAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Set minimized mode"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setOriginScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/loopme/NativeVideoAdapter;->mOriginScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 146
    return-void
.end method

.method public setViewBinder(Lcom/loopme/NativeVideoBinder;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mNativeVideoController:Lcom/loopme/NativeVideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/NativeVideoController;->setViewBinder(Lcom/loopme/NativeVideoBinder;)V

    .line 158
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter;->mOriginAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 192
    return-void
.end method
