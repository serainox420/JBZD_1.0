.class public Lcom/openx/view/video/AdVideoView;
.super Landroid/view/View;
.source "AdVideoView.java"

# interfaces
.implements Lcom/openx/core/network/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private downloadTask:Lcom/openx/view/video/network/DownloadTask;

.field private mPath:Ljava/lang/String;

.field private mPreloaded:Z

.field private nestingLimit:I

.field private preloadAdVideos:Z

.field private responseNum:I

.field private vast:Lcom/openx/model/vast/VASTParser;

.field private vastTag:Ljava/lang/String;

.field private videoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v1, p0, Lcom/openx/view/video/AdVideoView;->mPreloaded:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/openx/view/video/AdVideoView;->mPath:Ljava/lang/String;

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/openx/view/video/AdVideoView;->nestingLimit:I

    .line 45
    iput v1, p0, Lcom/openx/view/video/AdVideoView;->responseNum:I

    .line 85
    iput-object p1, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/openx/view/video/AdVideoView;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v2, p0, Lcom/openx/view/video/AdVideoView;->mPreloaded:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/openx/view/video/AdVideoView;->mPath:Ljava/lang/String;

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/openx/view/video/AdVideoView;->nestingLimit:I

    .line 45
    iput v2, p0, Lcom/openx/view/video/AdVideoView;->responseNum:I

    .line 72
    iput-object p1, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/openx/view/video/AdVideoView;->vastTag:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Lcom/openx/view/video/AdVideoView;->preloadAdVideos:Z

    .line 76
    invoke-direct {p0}, Lcom/openx/view/video/AdVideoView;->init()V

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->setVisibility(I)V

    .line 79
    check-cast p1, Landroid/app/Activity;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/video/AdVideoView;)Lcom/openx/view/video/network/DownloadTask;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->prepare(Landroid/content/Context;)V

    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/video/network/DownloadTask;->cancel(Z)Z

    .line 55
    :cond_0
    return-void
.end method

.method public detachFromParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/openx/view/video/AdVideoView;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/openx/view/video/AdVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVASTXml()Lcom/openx/model/vast/VASTParser;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isPreloaded()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/openx/view/video/AdVideoView;->mPreloaded:Z

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 380
    if-nez p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/video/network/DownloadTask;->cancel(Z)Z

    .line 387
    :cond_0
    return-void
.end method

.method public preload()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->vastTag:Ljava/lang/String;

    .line 128
    new-instance v1, Lcom/openx/core/network/PostNetworkTask;

    invoke-direct {v1, p0}, Lcom/openx/core/network/PostNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 129
    new-instance v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v2}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 132
    sget-object v3, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v3, v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 133
    if-eqz v0, :cond_0

    .line 136
    const-string v3, "\\?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 139
    aget-object v3, v0, v5

    iput-object v3, v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 140
    aget-object v0, v0, v6

    iput-object v0, v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    .line 145
    :cond_0
    new-array v0, v6, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lcom/openx/core/network/PostNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method public processError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->videoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    invoke-interface {v0}, Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;->preloadedError()V

    .line 394
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->videoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    invoke-interface {v0}, Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;->preloadedError()V

    .line 400
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    const-string v2, "VAST version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "VAST Error: "

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->processError(Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 184
    :cond_0
    iget v0, p0, Lcom/openx/view/video/AdVideoView;->responseNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/video/AdVideoView;->responseNum:I

    .line 199
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "VAST"

    const-string v2, "Parent: "

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_0
    new-instance v0, Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/openx/model/vast/VASTParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;
    :try_end_0
    .catch Lcom/openx/errors/VastParseError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 227
    :goto_1
    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    .line 229
    :goto_2
    invoke-virtual {v2}, Lcom/openx/model/vast/VASTParser;->getWrappedVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v2}, Lcom/openx/model/vast/VASTParser;->getWrappedVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v2

    goto :goto_2

    .line 207
    :catch_0
    move-exception v0

    .line 209
    const-string v0, "VAST Error: "

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->processError(Ljava/lang/String;)V

    move-object v0, v1

    .line 210
    goto :goto_1

    .line 216
    :cond_1
    const-string v0, "VAST"

    const-string v2, "Nested: "

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_1
    new-instance v0, Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/openx/model/vast/VASTParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/openx/errors/VastParseError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 221
    :catch_1
    move-exception v0

    .line 223
    const-string v0, "VAST Error: "

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->processError(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 234
    :cond_2
    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v2, v0}, Lcom/openx/model/vast/VASTParser;->setWrapper(Lcom/openx/model/vast/VASTParser;)V

    .line 239
    :cond_3
    if-eqz v0, :cond_5

    move-object v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/openx/model/vast/VASTParser;->getVASTAdTagURI(Lcom/openx/model/vast/VASTParser;)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 244
    const-string v0, "VAST"

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget v0, p0, Lcom/openx/view/video/AdVideoView;->responseNum:I

    iget v1, p0, Lcom/openx/view/video/AdVideoView;->nestingLimit:I

    if-ge v0, v1, :cond_6

    .line 247
    new-instance v0, Lcom/openx/core/network/PostNetworkTask;

    invoke-direct {v0, p0}, Lcom/openx/core/network/PostNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 248
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 250
    if-eqz v2, :cond_4

    .line 253
    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 254
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 256
    aget-object v3, v2, v6

    iput-object v3, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 257
    aget-object v2, v2, v7

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    .line 262
    :cond_4
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 267
    new-array v2, v7, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/openx/core/network/PostNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_5
    move-object v3, v2

    .line 239
    goto :goto_3

    .line 272
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST Wrapper limit reached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openx/view/video/AdVideoView;->nestingLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    const-string v0, "VAST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST Wrapper limit reached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/view/video/AdVideoView;->nestingLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST Wrapper limit reached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openx/view/video/AdVideoView;->nestingLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->processError(Ljava/lang/String;)V

    .line 276
    iput v6, p0, Lcom/openx/view/video/AdVideoView;->responseNum:I

    goto/16 :goto_0

    .line 283
    :cond_7
    const-string v2, "VAST"

    const-string v3, "Else: "

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 289
    const-string v2, "Preloading Video Ad"

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 291
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 292
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 294
    iget-boolean v2, p0, Lcom/openx/view/video/AdVideoView;->preloadAdVideos:Z

    if-eqz v2, :cond_8

    .line 298
    new-instance v2, Lcom/openx/view/video/network/DownloadTask;

    iget-object v4, p0, Lcom/openx/view/video/AdVideoView;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/openx/view/video/AdVideoView;->videoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    invoke-direct {v2, v4, v5}, Lcom/openx/view/video/network/DownloadTask;-><init>(Landroid/content/Context;Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;)V

    iput-object v2, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    .line 302
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0, v0, v6}, Lcom/openx/model/vast/VASTParser;->getError(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v2

    .line 304
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 307
    new-instance v0, Lcom/openx/core/network/GetNetworkTask;

    invoke-direct {v0, v1}, Lcom/openx/core/network/GetNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 308
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 310
    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 312
    sget-object v3, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v3, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 313
    new-array v3, v7, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v3, v6

    invoke-virtual {v0, v3}, Lcom/openx/core/network/GetNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST Error Node Populated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->processError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_9
    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    iget-object v4, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v2, v4, v6}, Lcom/openx/model/vast/VASTParser;->getError(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 320
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0, v0, v6}, Lcom/openx/model/vast/VASTParser;->getMediaFileUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_5
    iget-object v1, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v6}, Lcom/openx/model/vast/VASTParser;->getAllTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 328
    iget-object v1, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v6}, Lcom/openx/model/vast/VASTParser;->getImpressions(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 329
    iget-object v1, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v6}, Lcom/openx/model/vast/VASTParser;->getClickTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "invalid media file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 334
    iget-boolean v1, p0, Lcom/openx/view/video/AdVideoView;->preloadAdVideos:Z

    if-eqz v1, :cond_c

    .line 336
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v1}, Lcom/openx/view/video/AdVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 341
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 343
    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 344
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->downloadTask:Lcom/openx/view/video/network/DownloadTask;

    new-array v2, v7, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/openx/view/video/network/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    new-instance v0, Lcom/openx/view/video/AdVideoView$1;

    invoke-direct {v0, p0}, Lcom/openx/view/video/AdVideoView$1;-><init>(Lcom/openx/view/video/AdVideoView;)V

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 320
    :cond_b
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    iget-object v1, p0, Lcom/openx/view/video/AdVideoView;->vast:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0, v1, v6}, Lcom/openx/model/vast/VASTParser;->getMediaFileUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 360
    :cond_c
    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView;->videoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    invoke-interface {v0}, Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;->preloaded()V

    goto/16 :goto_0

    .line 367
    :cond_d
    const-string v0, "invalid path or media file type"

    invoke-virtual {p0, v0}, Lcom/openx/view/video/AdVideoView;->processError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setAdVideoPreloadedListener(Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/openx/view/video/AdVideoView;->videoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    .line 67
    return-void
.end method

.method public setPreloaded(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/openx/view/video/AdVideoView;->mPreloaded:Z

    .line 163
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/openx/view/video/AdVideoView;->mPath:Ljava/lang/String;

    .line 153
    return-void
.end method
