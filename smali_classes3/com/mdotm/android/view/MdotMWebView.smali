.class Lcom/mdotm/android/view/MdotMWebView;
.super Landroid/webkit/WebView;
.source "MdotMWebView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;
    }
.end annotation


# static fields
.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private elapseTime:J

.field private endTime:J

.field private isWebViewHasFocus:Z

.field private mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDetector:Landroid/view/GestureDetector;

.field public mIsImpReported:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mWebChromeClient:Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 343
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/mdotm/android/view/MdotMWebView;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 345
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 66
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->startTime:J

    .line 67
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->elapseTime:J

    .line 68
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->endTime:J

    .line 75
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 66
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->startTime:J

    .line 67
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->elapseTime:J

    .line 68
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->endTime:J

    .line 80
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 66
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->startTime:J

    .line 67
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->elapseTime:J

    .line 68
    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMWebView;->endTime:J

    .line 87
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 65
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 66
    iput-wide v4, p0, Lcom/mdotm/android/view/MdotMWebView;->startTime:J

    .line 67
    iput-wide v4, p0, Lcom/mdotm/android/view/MdotMWebView;->elapseTime:J

    .line 68
    iput-wide v4, p0, Lcom/mdotm/android/view/MdotMWebView;->endTime:J

    .line 94
    const-string v0, "html resource MdotMWebView"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 96
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMWebView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 97
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 98
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMWebView;->setBackgroundColor(I)V

    .line 106
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mDetector:Landroid/view/GestureDetector;

    .line 107
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMWebView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/MdotMWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 124
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mLayout:Landroid/widget/FrameLayout;

    .line 127
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mContentView:Landroid/widget/FrameLayout;

    .line 129
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 130
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/mdotm/android/view/MdotMWebView;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 140
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMWebView;->setInitialScale(I)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 145
    new-instance v2, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-direct {v2, v3}, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;-><init>(Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    const-string v3, "mraid"

    invoke-virtual {p0, v2, v3}, Lcom/mdotm/android/view/MdotMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/mdotm/android/view/MdotMWebView$1;

    invoke-direct {v2, p0}, Lcom/mdotm/android/view/MdotMWebView$1;-><init>(Lcom/mdotm/android/view/MdotMWebView;)V

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 199
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 201
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 203
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loading the url "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\"mraid.js\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<head>"

    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMWebView;->injectExtraJS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "replacing string"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidJS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    const-string v0, "loading"

    sput-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\"mraid.js\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    const/4 v0, 0x0

    .line 216
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<script src=\"mraid.js\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<script src=\"mraid.js\"/>"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {p0, v0, v2, v3}, Lcom/mdotm/android/view/MdotMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImpression()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImpression()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    .line 241
    :cond_4
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/MdotMWebView;->setFocusable(Z)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Normal interstitial"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    return-void

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<script src\"mraid.js\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<script src\"mraid.js\"></script>"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_6
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<script type=\"application/javascript\" src=\"mraid.js\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<script type=\"application/javascript\" src=\"mraid.js\"></script>"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_7
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 234
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImpression()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "tracking urls"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getImpression()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private injectExtraJS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    sget-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidJS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "PGhlYWQ+DQo8c2NyaXB0IGxhbmd1YWdlPSJqYXZhc2NyaXB0Ij4NCiANCnZhciBFVkVOVFMgPSBtcmFpZC5FVkVOVFMgPSB7DQoJCSJFUlJPUiIgOiAiZXJyb3IiLA0KCQkiUkVBRFkiIDogInJlYWR5IiwNCgkJIlNJWkVDSEFOR0UiIDogInNpemVDaGFuZ2UiLA0KCQkiU1RBVEVDSEFOR0UiIDogInN0YXRlQ2hhbmdlIiwNCgkJIlZJRVdBQkxFQ0hBTkdFIiA6ICJ2aWV3YWJsZUNoYW5nZSINCgl9Ow0KDQp2YXIgbGlzdGVuZXJzID0ge307DQp2YXIgbGlzdG5lck5hbWU7DQoNCm1yYWlkLmFkZEV2ZW50TGlzdGVuZXIgPSBmdW5jdGlvbihldmVudCwgbGlzdGVuZXIpIHsNCmxpc3RuZXJOYW1lPSBTdHJpbmcobGlzdGVuZXIpOw0KbGlzdGVuZXJzW2V2ZW50XSA9IFN0cmluZyhsaXN0ZW5lcik7DQogCX07DQptcmFpZC5yZW1vdmVFdmVudExpc3RlbmVyID0gZnVuY3Rpb24oZXZlbnQsIGxpc3RlbmVyKSB7CQkJCQ0KCQkJCWRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOw0KCQkNCgl9Ow0KDQpmdW5jdGlvbiBmaXJlRXZlbnRGb3JSZWFkeShldmVudCkgew0KdmFyIHRlbXA9ZXZhbCgiKCIrbGlzdGVuZXJzW2V2ZW50XSsiKSIpOw0KdGVtcCgpOw0KCX07DQo8L3NjcmlwdD4="

    .line 424
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 425
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidJS:Ljava/lang/String;

    .line 428
    :cond_0
    sget-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidJS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fireJSEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fireEventForReady(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/view/MdotMWebView$2;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMWebView$2;-><init>(Lcom/mdotm/android/view/MdotMWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string v0, "loading url: mraid.fireReadyEvent();"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:fireEventForReady("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mWebChromeClient:Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->onHideCustomView()V

    .line 256
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadblankview()V
    .locals 1

    .prologue
    .line 419
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMWebView;->loadUrl(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->goBack()V

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 351
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview has focus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    return-void
.end method
