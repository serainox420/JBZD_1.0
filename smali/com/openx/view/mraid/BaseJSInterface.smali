.class public Lcom/openx/view/mraid/BaseJSInterface;
.super Ljava/lang/Object;
.source "BaseJSInterface.java"

# interfaces
.implements Lcom/openx/core/network/BaseResponseHandler;
.implements Lcom/openx/view/mraid/JSInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;
    }
.end annotation


# static fields
.field private static final MAX_REDIRECTS:I = 0x3

.field public static disabledFlags:Ljava/lang/String;


# instance fields
.field private adBaseView:Lcom/openx/view/WebViewBase;

.field private context:Landroid/content/Context;

.field private mCurrentState:Ljava/lang/String;

.field private mCurrentViewable:Ljava/lang/Boolean;

.field private mDefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mExpandProperties:Ljava/lang/String;

.field private mHandlersQueue:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedWithURL:Z

.field private mOrientationProperties:Ljava/lang/String;

.field private mResizedAdWindow:Landroid/widget/PopupWindow;

.field private mRestoreState:Ljava/lang/Boolean;

.field private mURLForLaunching:Ljava/lang/String;

.field mraidCalendarEvent:Lcom/openx/view/mraid/methods/CalendarEvent;

.field private mraidClose:Lcom/openx/view/mraid/methods/Close;

.field private mraidExpand:Lcom/openx/view/mraid/methods/Expand;

.field private mraidOpen:Lcom/openx/view/mraid/methods/Open;

.field private mraidPlayVideo:Lcom/openx/view/mraid/methods/PlayVideo;

.field private mraidResize:Lcom/openx/view/mraid/methods/Resize;

.field private mraidStorePicture:Lcom/openx/view/mraid/methods/StorePicture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/openx/view/mraid/BaseJSInterface;->disabledFlags:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mHandlersQueue:Ljava/util/Hashtable;

    .line 55
    iput-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentState:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentViewable:Ljava/lang/Boolean;

    .line 57
    iput-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mExpandProperties:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mOrientationProperties:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/WebViewBase;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/mraid/methods/Expand;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidExpand:Lcom/openx/view/mraid/methods/Expand;

    return-object v0
.end method

.method private evaluateJavaScript(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 713
    const-string v0, "BaseJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseJSInterface: evaluateJavaScript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/mraid/BaseJSInterface$3;

    invoke-direct {v1, p0, p1}, Lcom/openx/view/mraid/BaseJSInterface$3;-><init>(Lcom/openx/view/mraid/BaseJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method private findHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 749
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 754
    :cond_1
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method

.method private getHandlersQueue()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mHandlersQueue:Ljava/util/Hashtable;

    return-object v0
.end method

.method private queueHandler(Landroid/os/Handler;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 744
    :goto_0
    return-object v0

    .line 735
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_1
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 764
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getHandlersQueue()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected callJavaScriptMethodWithResult(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 688
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-direct {p0, p2}, Lcom/openx/view/mraid/BaseJSInterface;->queueHandler(Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsBridge.javaScriptCallback(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', (function() { var retVal = mraid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(); if (typeof retVal === \'object\') { retVal = JSON.stringify(retVal); } return retVal; })())"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/mraid/BaseJSInterface;->evaluateJavaScript(Ljava/lang/String;)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    if-eqz p2, :cond_0

    .line 701
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 702
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 703
    const-string v2, "method"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 706
    invoke-virtual {p2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentState:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentViewable:Ljava/lang/Boolean;

    .line 506
    return-void
.end method

.method public close()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidClose:Lcom/openx/view/mraid/methods/Close;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/openx/view/mraid/methods/Close;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/Close;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidClose:Lcom/openx/view/mraid/methods/Close;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidClose:Lcom/openx/view/mraid/methods/Close;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/methods/Close;->closeThroughJS(Z)V

    .line 222
    return-void
.end method

.method public closeResizedAdWindow(Z)V
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/openx/view/mraid/BaseJSInterface;->isResizedAdWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->setRestoreStateOnPopupClose(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 684
    :cond_0
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidCalendarEvent:Lcom/openx/view/mraid/methods/CalendarEvent;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/openx/view/mraid/methods/CalendarEvent;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/CalendarEvent;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidCalendarEvent:Lcom/openx/view/mraid/methods/CalendarEvent;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidCalendarEvent:Lcom/openx/view/mraid/methods/CalendarEvent;

    invoke-virtual {v0, p1}, Lcom/openx/view/mraid/methods/CalendarEvent;->createCalendarEvent(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public expand()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 248
    const-string v0, "MRAID"

    const-string v1, "stopping loading and calling mraidExpand 0"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/mraid/BaseJSInterface;->expand(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 259
    const-string v0, "MRAID"

    const-string v1, "stopping loading and calling mraidExpand"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidExpand:Lcom/openx/view/mraid/methods/Expand;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/openx/view/mraid/methods/Expand;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/Expand;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidExpand:Lcom/openx/view/mraid/methods/Expand;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/mraid/BaseJSInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/view/mraid/BaseJSInterface$1;-><init>(Lcom/openx/view/mraid/BaseJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public followToOriginalUrl(Ljava/lang/String;Lcom/openx/view/mraid/network/RedirectURLListener;)V
    .locals 4

    .prologue
    .line 513
    new-instance v0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;

    new-instance v1, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;

    invoke-direct {v1, p0, p2}, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;-><init>(Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/mraid/network/RedirectURLListener;)V

    invoke-direct {v0, v1}, Lcom/openx/view/mraid/network/GetOriginalUrlTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 514
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 516
    iput-object p1, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 518
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 519
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 521
    return-void
.end method

.method public getAdBaseView()Lcom/openx/view/WebViewBase;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    return-object v0
.end method

.method public getCreative()Lcom/openx/model/AdCreative;
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/AdCreative;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 178
    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2, v1}, Lcom/openx/view/WebViewBase;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 179
    const-string v2, "x"

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v2, "y"

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v2, "width"

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget v5, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v2, "height"

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    const-string v0, "{}"

    goto :goto_0
.end method

.method public getDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mDefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v1}, Lcom/openx/view/WebViewBase;->getDefaultPosition()Landroid/graphics/Rect;

    move-result-object v1

    .line 156
    const-string v2, "x"

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v2, "y"

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v2, "width"

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget v5, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v2, "height"

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    const-string v0, "{}"

    goto :goto_0
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mExpandProperties:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandProperties(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 483
    const-string v0, "getExpandProperties"

    invoke-virtual {p0, v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->callJavaScriptMethodWithResult(Ljava/lang/String;Landroid/os/Handler;)V

    .line 484
    return-void
.end method

.method public getImageWidth(IILjava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 105
    const-string v0, "imagesrc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public getMRAIDClose()Lcom/openx/view/mraid/methods/Close;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidClose:Lcom/openx/view/mraid/methods/Close;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/openx/view/mraid/methods/Close;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/Close;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidClose:Lcom/openx/view/mraid/methods/Close;

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getWindowVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 116
    const-string v2, "width"

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v2, "height"

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v3, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    const-string v0, "{}"

    goto :goto_0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mOrientationProperties:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientationProperties(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 488
    const-string v0, "getOrientationProperties"

    invoke-virtual {p0, v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->callJavaScriptMethodWithResult(Ljava/lang/String;Landroid/os/Handler;)V

    .line 489
    return-void
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResizeProperties(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 478
    const-string v0, "getResizeProperties"

    invoke-virtual {p0, v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->callJavaScriptMethodWithResult(Ljava/lang/String;Landroid/os/Handler;)V

    .line 479
    return-void
.end method

.method public getResizedAdWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mResizedAdWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getRestoreStateOnPopupClose()Z
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mRestoreState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 602
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mRestoreState:Ljava/lang/Boolean;

    .line 603
    return v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :try_start_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v1

    .line 136
    const-string v2, "width"

    invoke-interface {v1}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    const-string v2, "height"

    invoke-interface {v1}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    sget v3, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    const-string v0, "{}"

    goto :goto_0
.end method

.method public getState(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 494
    const-string v0, "getState"

    invoke-virtual {p0, v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->callJavaScriptMethodWithResult(Ljava/lang/String;Landroid/os/Handler;)V

    .line 495
    return-void
.end method

.method public getURLForLaunching()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mURLForLaunching:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mURLForLaunching:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWindowVisibleRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 396
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 397
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRestoreStateFlag()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mRestoreState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaunchWithURL()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mLaunchedWithURL:Z

    return v0
.end method

.method public isResizedAdWindowOpened()Z
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewable(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 499
    const-string v0, "isViewable"

    invoke-virtual {p0, v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->callJavaScriptMethodWithResult(Ljava/lang/String;Landroid/os/Handler;)V

    .line 500
    return-void
.end method

.method public javaScriptCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->findHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 301
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 302
    const-string v3, "method"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "value"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 305
    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->removeHandler(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 407
    const-string v0, "mraid.onError(\'%1$s\', \'%2$s\');"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/mraid/BaseJSInterface;->evaluateJavaScript(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public onOrientationPropertiesChanged(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getDefaultPosition()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    new-instance v1, Lcom/openx/view/mraid/BaseJSInterface$2;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/BaseJSInterface$2;-><init>(Lcom/openx/view/mraid/BaseJSInterface;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: if (window.mraid) { mraid.onReady(); "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/openx/view/mraid/BaseJSInterface;->disabledFlags:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 445
    :cond_1
    return-void

    .line 441
    :cond_2
    sget-object v0, Lcom/openx/view/mraid/BaseJSInterface;->disabledFlags:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSizeChange(II)V
    .locals 4

    .prologue
    .line 449
    const-string v0, "mraid.onSizeChange(%d, %d);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/mraid/BaseJSInterface;->evaluateJavaScript(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public onStateChange(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentState:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    :cond_2
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentState:Ljava/lang/String;

    .line 462
    const-string v0, "mraid.onStateChange(\'%1$s\');"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/mraid/BaseJSInterface;->evaluateJavaScript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewableChange(Z)V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentViewable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentViewable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 470
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mCurrentViewable:Ljava/lang/Boolean;

    .line 472
    const-string v0, "mraid.onViewableChange(%1$b);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/mraid/BaseJSInterface;->evaluateJavaScript(Ljava/lang/String;)V

    .line 474
    :cond_1
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidOpen:Lcom/openx/view/mraid/methods/Open;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/openx/view/mraid/methods/Open;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/Open;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidOpen:Lcom/openx/view/mraid/methods/Open;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidOpen:Lcom/openx/view/mraid/methods/Open;

    invoke-virtual {v0, p1}, Lcom/openx/view/mraid/methods/Open;->open(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidPlayVideo:Lcom/openx/view/mraid/methods/PlayVideo;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/openx/view/mraid/methods/PlayVideo;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/PlayVideo;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidPlayVideo:Lcom/openx/view/mraid/methods/PlayVideo;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidPlayVideo:Lcom/openx/view/mraid/methods/PlayVideo;

    invoke-virtual {v0, p1}, Lcom/openx/view/mraid/methods/PlayVideo;->playVideo(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public resize()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 235
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidResize:Lcom/openx/view/mraid/methods/Resize;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/openx/view/mraid/methods/Resize;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/Resize;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidResize:Lcom/openx/view/mraid/methods/Resize;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidResize:Lcom/openx/view/mraid/methods/Resize;

    invoke-virtual {v0}, Lcom/openx/view/mraid/methods/Resize;->resize()V

    .line 241
    return-void
.end method

.method public setBackgroundWhite()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->setBackgroundColor(I)V

    .line 100
    return-void
.end method

.method public setDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mDefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 644
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mExpandProperties:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public setLaunchWithURL(Z)V
    .locals 0

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mLaunchedWithURL:Z

    .line 654
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mOrientationProperties:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public setResizedAdWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mResizedAdWindow:Landroid/widget/PopupWindow;

    .line 664
    return-void
.end method

.method protected setRestoreStateOnPopupClose(Z)V
    .locals 1

    .prologue
    .line 596
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mRestoreState:Ljava/lang/Boolean;

    .line 597
    return-void
.end method

.method public setURLForLaunching(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface;->mURLForLaunching:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidStorePicture:Lcom/openx/view/mraid/methods/StorePicture;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/openx/view/mraid/methods/StorePicture;

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/openx/view/mraid/methods/StorePicture;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    iput-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidStorePicture:Lcom/openx/view/mraid/methods/StorePicture;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface;->mraidStorePicture:Lcom/openx/view/mraid/methods/StorePicture;

    invoke-virtual {v0, p1}, Lcom/openx/view/mraid/methods/StorePicture;->storePicture(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 372
    :cond_1
    :goto_0
    return v0

    .line 348
    :cond_2
    const-string v2, "sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->hasTelephony()Z

    move-result v0

    goto :goto_0

    .line 352
    :cond_3
    const-string v2, "tel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 354
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->hasTelephony()Z

    move-result v0

    goto :goto_0

    .line 356
    :cond_4
    const-string v2, "calendar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    const-string v2, "storePicture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 362
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->canStorePicture()Z

    move-result v0

    goto :goto_0

    .line 364
    :cond_5
    const-string v2, "inlineVideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 366
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    .line 372
    goto :goto_0
.end method
