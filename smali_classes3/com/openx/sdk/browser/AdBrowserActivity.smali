.class public final Lcom/openx/sdk/browser/AdBrowserActivity;
.super Landroid/app/Activity;
.source "AdBrowserActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final BROWSER_CONTROLS_ID:I = 0x39917

.field public static final EXTRA_AD:Ljava/lang/String; = "EXTRA_AD"

.field public static final EXTRA_AD_EVENTS_LISTENER:Ljava/lang/String; = "AD_EVENTS_LISTENER"

.field public static final EXTRA_AD_MODEL:Ljava/lang/String; = "EXTRA_AD_MODEL"

.field public static final EXTRA_ALLOW_ORIENTATION_CHANGES:Ljava/lang/String; = "EXTRA_ALLOW_ORIENTATION_CHANGES"

.field public static final EXTRA_CONTROLLER_ID:Ljava/lang/String; = "EXTRA_CONTROLLER_ID"

.field public static final EXTRA_DIM_COLOR:Ljava/lang/String; = "EXTRA_DIM_COLOR"

.field public static final EXTRA_FORCE_ORIENTATION:Ljava/lang/String; = "EXTRA_FORCE_ORIENTATION"

.field public static final EXTRA_HAS_CLOSE_BUTTON:Ljava/lang/String; = "EXTRA_HAS_CLOSE_BUTTON"

.field public static final EXTRA_HEIGHT:Ljava/lang/String; = "EXTRA_HEIGHT"

.field public static final EXTRA_IS_EXPANDED:Ljava/lang/String; = "EXTRA_IS_EXPANDED"

.field public static final EXTRA_IS_INTERSTITIAL:Ljava/lang/String; = "EXTRA_IS_INTERSTITIAL"

.field public static final EXTRA_IS_VIDEO:Ljava/lang/String; = "EXTRA_IS_VIDEO"

.field public static final EXTRA_LONG_CLOSING_CYCLE:Ljava/lang/String; = "EXTRA_LONG_CLOSING_CYCLE"

.field public static final EXTRA_URL:Ljava/lang/String; = "EXTRA_URL"

.field public static final EXTRA_WIDTH:Ljava/lang/String; = "EXTRA_WIDTH"

.field private static final WEB_VIEW_ID:I = 0x3989e


# instance fields
.field private eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

.field private mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

.field private mDefinedHeightForExpand:I

.field private mDefinedWidthForExpand:I

.field private mIsExpanded:Z

.field private mIsVideo:Z

.field private mOrientationPropertiesEventListener:Lcom/openx/sdk/event/OXMEventsHandler;

.field private mVideoView:Landroid/widget/VideoView;

.field private mWebView:Landroid/webkit/WebView;

.field webViewBase:Lcom/openx/view/WebViewBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/browser/BrowserControls;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/event/OXMEventsListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

    return-object v0
.end method

.method private getIsExpanded()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mIsExpanded:Z

    return v0
.end method

.method private getOrientationPropertiesEventListener()Lcom/openx/sdk/event/OXMEventsHandler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mOrientationPropertiesEventListener:Lcom/openx/sdk/event/OXMEventsHandler;

    return-object v0
.end method

.method private init()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x1000000

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 116
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 129
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "EXTRA_URL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EXTRA_URL"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_IS_VIDEO"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "EXTRA_IS_VIDEO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mIsVideo:Z

    .line 133
    iget-boolean v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mIsVideo:Z

    if-eqz v2, :cond_3

    .line 135
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    .line 136
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    iget-object v3, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/openx/sdk/browser/AdBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 141
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 142
    iget-object v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 143
    iget-object v1, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 144
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 229
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->initBrowserControls()V

    .line 153
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mDefinedWidthForExpand:I

    if-nez v2, :cond_8

    move v2, v3

    :goto_3
    iget v4, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mDefinedHeightForExpand:I

    if-nez v4, :cond_9

    move v4, v3

    :goto_4
    invoke-direct {v6, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 159
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    .line 160
    invoke-direct {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->setWebViewSettings()V

    .line 162
    iget-object v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/openx/sdk/browser/AdBrowserActivity$1;

    invoke-direct {v2, p0}, Lcom/openx/sdk/browser/AdBrowserActivity$1;-><init>(Lcom/openx/sdk/browser/AdBrowserActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 200
    invoke-direct {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getIsExpanded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    invoke-virtual {v0}, Lcom/openx/sdk/browser/BrowserControls;->showNavigationControls()V

    .line 208
    :cond_4
    const/4 v0, 0x3

    const v2, 0x39917

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    .line 214
    :goto_5
    if-eqz v0, :cond_6

    .line 216
    const v2, 0x3989e

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 217
    invoke-virtual {v5, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :cond_7
    invoke-virtual {p0, v5}, Lcom/openx/sdk/browser/AdBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 226
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

    .line 227
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ORIENTATION_PROPERTIES_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    invoke-direct {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getOrientationPropertiesEventListener()Lcom/openx/sdk/event/OXMEventsHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/sdk/event/OXMEventsListener;->registerEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V

    goto/16 :goto_2

    .line 155
    :cond_8
    iget v2, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mDefinedWidthForExpand:I

    goto :goto_3

    :cond_9
    iget v4, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mDefinedHeightForExpand:I

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_5
.end method

.method private initBrowserControls()V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lcom/openx/sdk/browser/BrowserControls;

    new-instance v1, Lcom/openx/sdk/browser/AdBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/AdBrowserActivity$2;-><init>(Lcom/openx/sdk/browser/AdBrowserActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/openx/sdk/browser/BrowserControls;-><init>(Landroid/content/Context;Lcom/openx/sdk/browser/BrowserControlsEventsListener;)V

    .line 322
    const v1, 0x39917

    invoke-virtual {v0, v1}, Lcom/openx/sdk/browser/BrowserControls;->setId(I)V

    .line 323
    iput-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    .line 324
    return-void
.end method

.method private setWebViewSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 236
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 237
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 240
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 244
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 252
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 254
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 358
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    const-string v1, "EXTRA_IS_VIDEO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->init()V

    .line 109
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 331
    iget-boolean v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mBrowserControls:Lcom/openx/sdk/browser/BrowserControls;

    invoke-virtual {v1}, Lcom/openx/sdk/browser/BrowserControls;->dispose()V

    .line 347
    :cond_2
    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ORIENTATION_PROPERTIES_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    invoke-direct {p0}, Lcom/openx/sdk/browser/AdBrowserActivity;->getOrientationPropertiesEventListener()Lcom/openx/sdk/event/OXMEventsHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/sdk/event/OXMEventsListener;->unregisterEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 86
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 96
    :cond_0
    return-void
.end method
