.class public Lcom/inmobi/re/container/IMWebView;
.super Landroid/webkit/WebView;
.source "IMWebView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/re/container/IMWebView$7;,
        Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;,
        Lcom/inmobi/re/container/IMWebView$a;,
        Lcom/inmobi/re/container/IMWebView$c;,
        Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;,
        Lcom/inmobi/re/container/IMWebView$IMWebViewListener;,
        Lcom/inmobi/re/container/IMWebView$b;,
        Lcom/inmobi/re/container/IMWebView$ViewState;
    }
.end annotation


# static fields
.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static G:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final IMWEBVIEW_INTERSTITIAL_ID:I = 0x75

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static d:[I = null

.field private static final serialVersionUID:J = 0x6282f5dae34d0336L

.field public static userInitiatedClose:Z


# instance fields
.field private A:Lcom/inmobi/re/container/IMWebView$c;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:Landroid/view/ViewParent;

.field private E:I

.field private F:Z

.field private H:Landroid/webkit/WebViewClient;

.field private I:Landroid/webkit/WebChromeClient;

.field private J:Landroid/media/MediaPlayer$OnCompletionListener;

.field private K:Z

.field a:D

.field public acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

.field public curPosition:Lorg/json/JSONObject;

.field public defPosition:Lorg/json/JSONObject;

.field public doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Z

.field private g:Lcom/inmobi/re/controller/JSUtilityController;

.field private h:F

.field private i:I

.field public isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isTablet:Z

.field private j:I

.field private k:Lcom/inmobi/re/container/IMWebView$ViewState;

.field private l:Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;

.field private m:Landroid/widget/VideoView;

.field public mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

.field public mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

.field public mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

.field public mIsInterstitialAd:Z

.field public mIsViewable:Z

.field public mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field public mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

.field public mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

.field public mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

.field public mWebViewIsBrowserActivity:Z

.field protected mraidLoaded:Z

.field public mutex:Ljava/lang/Object;

.field public mutexcPos:Ljava/lang/Object;

.field public mutexdPos:Ljava/lang/Object;

.field private n:Landroid/view/View;

.field private o:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private p:Landroid/view/ViewGroup;

.field public publisherOrientation:I

.field private q:Landroid/widget/FrameLayout;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/re/container/IMWebView$a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Message;

.field public webviewUserAgent:Ljava/lang/String;

.field private x:Landroid/os/Message;

.field private y:Landroid/app/Activity;

.field private z:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/re/container/IMWebView;->d:[I

    .line 230
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/re/container/IMWebView;->G:Ljava/lang/Class;

    return-void

    .line 112
    nop

    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    .line 188
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 234
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 245
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    .line 247
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 248
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 249
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 250
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 252
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->t:Z

    .line 253
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->u:Z

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->F:Z

    .line 545
    new-instance v0, Lcom/inmobi/re/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$1;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->H:Landroid/webkit/WebViewClient;

    .line 798
    new-instance v0, Lcom/inmobi/re/container/IMWebView$11;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$11;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->I:Landroid/webkit/WebChromeClient;

    .line 1388
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    .line 2698
    new-instance v0, Lcom/inmobi/re/container/IMWebView$14;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$14;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->J:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2913
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2948
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2953
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->K:Z

    .line 3257
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    .line 336
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    .line 337
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    .line 339
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView;->d:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    .line 188
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 234
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 245
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    .line 247
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 248
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 249
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 250
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 252
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->t:Z

    .line 253
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->u:Z

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->F:Z

    .line 545
    new-instance v0, Lcom/inmobi/re/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$1;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->H:Landroid/webkit/WebViewClient;

    .line 798
    new-instance v0, Lcom/inmobi/re/container/IMWebView$11;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$11;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->I:Landroid/webkit/WebChromeClient;

    .line 1388
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    .line 2698
    new-instance v0, Lcom/inmobi/re/container/IMWebView$14;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$14;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->J:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2913
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2948
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2953
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->K:Z

    .line 3257
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    .line 306
    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 307
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    .line 308
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    .line 188
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 234
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 245
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    .line 247
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 248
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 249
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 250
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 252
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->t:Z

    .line 253
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->u:Z

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->F:Z

    .line 545
    new-instance v0, Lcom/inmobi/re/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$1;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->H:Landroid/webkit/WebViewClient;

    .line 798
    new-instance v0, Lcom/inmobi/re/container/IMWebView$11;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$11;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->I:Landroid/webkit/WebChromeClient;

    .line 1388
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    .line 2698
    new-instance v0, Lcom/inmobi/re/container/IMWebView$14;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$14;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->J:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2913
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2948
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2953
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->K:Z

    .line 3257
    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    .line 315
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    .line 316
    iput-boolean p3, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 317
    iput-boolean p4, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 318
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 319
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setId(I)V

    .line 321
    :cond_0
    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 322
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    .line 323
    return-void
.end method

.method private a(Landroid/app/Activity;)I
    .locals 5

    .prologue
    .line 2268
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2269
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2270
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2273
    const/4 v1, 0x0

    .line 2275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2276
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2283
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    return v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->w:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->q:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'sizeChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1060
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1061
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1062
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1063
    check-cast p1, Landroid/view/ViewGroup;

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1065
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1066
    invoke-direct {p0, v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1069
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1047
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1048
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1049
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1050
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1051
    check-cast p1, Landroid/view/ViewGroup;

    .line 1052
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1053
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1054
    invoke-direct {p0, v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    const-string v1, "Continue"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$8;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/re/container/IMWebView$8;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    const-string v1, "Go Back"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$9;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/re/container/IMWebView$9;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 775
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 777
    const-string v1, "Open Browser"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$10;

    invoke-direct {v2, p0, p2}, Lcom/inmobi/re/container/IMWebView$10;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    :cond_0
    const-string v1, "Security Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 787
    const-string v1, "There are problems with the security certificate for this site."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 789
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 791
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Dialog could not be shown due to an exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2197
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 1479
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'viewableChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1483
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method private b()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 456
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    sput-boolean v7, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 460
    invoke-virtual {p0, v7}, Lcom/inmobi/re/container/IMWebView;->setScrollContainer(Z)V

    .line 461
    invoke-virtual {p0, v7}, Lcom/inmobi/re/container/IMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 462
    invoke-virtual {p0, v7}, Lcom/inmobi/re/container/IMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->webviewUserAgent:Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    .line 465
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getWebviewBgColor()I

    move-result v0

    .line 466
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    .line 467
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 468
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 471
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/re/container/IMWebView;->h:F

    .line 478
    iput-boolean v7, p0, Lcom/inmobi/re/container/IMWebView;->e:Z

    .line 480
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 483
    new-instance v0, Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/controller/JSUtilityController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    .line 485
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "utilityController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->H:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 489
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->I:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 492
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    .line 493
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    .line 494
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    .line 495
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    .line 497
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    .line 498
    new-instance v0, Lcom/inmobi/re/container/IMWebView$c;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v5, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v6, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/re/container/IMWebView$c;-><init>(Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    .line 501
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mSensorDisplay:Landroid/view/Display;

    .line 503
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    .line 509
    :try_start_0
    sget-object v0, Lcom/inmobi/re/container/IMWebView;->G:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/inmobi/re/container/IMWebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 511
    const-string v1, "imaiController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0, v7}, Lcom/inmobi/re/controller/JSUtilityController;->setWebViewClosed(Z)V

    .line 519
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "Error adding js interface imai controller"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 2202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/re/container/IMWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2203
    return-void
.end method

.method static synthetic b(Lcom/inmobi/re/container/IMWebView;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/re/container/IMWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 1111
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMWebView-> initStates"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 1114
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1118
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2895
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2896
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2897
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2898
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->fireOnLeaveApplication()V

    .line 2899
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2737
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2751
    :goto_0
    return-void

    .line 2740
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 2741
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2742
    :cond_1
    iput-object v2, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 2748
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2749
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2750
    :cond_2
    iput-object v2, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/re/container/IMWebView;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->q:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic l(Lcom/inmobi/re/container/IMWebView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->J:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic m(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->d()V

    return-void
.end method

.method static synthetic n(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/controller/JSUtilityController;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/re/container/IMWebView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic p(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method static synthetic q(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static setIMAIController(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 360
    sput-object p0, Lcom/inmobi/re/container/IMWebView;->G:Ljava/lang/Class;

    .line 361
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 3018
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3019
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3020
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView$a;

    .line 3021
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 3022
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView$a;->cancel(Z)Z

    .line 3019
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3026
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    .line 3030
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getSdkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->clearSdkCacheDirectory(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    :goto_1
    return-void

    .line 3032
    :catch_0
    move-exception v0

    .line 3033
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "Exception deleting saved content dirs and stopping download task"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1074
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method public broadcastEventIMraid(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 2209
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/re/container/IMWebView$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/re/container/IMWebView$12;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    :goto_0
    return-void

    .line 2220
    :catch_0
    move-exception v0

    .line 2222
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception broadcasting events"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public broadcastEventIMraid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2229
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/re/container/IMWebView$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/re/container/IMWebView$13;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    :goto_0
    return-void

    .line 2240
    :catch_0
    move-exception v0

    .line 2242
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception broadcasting events"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cancelLoad()V
    .locals 2

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2791
    return-void
.end method

.method public cancelSaveContent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3042
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView$a;

    .line 3045
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3047
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 3049
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$a;->cancel(Z)Z

    .line 3055
    :cond_0
    return-void

    .line 3042
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->setWebViewClosed(Z)V

    .line 1457
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception closing webview. Webview not initialized properly"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeExpanded()V
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1468
    return-void
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1303
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 1304
    return-void
.end method

.method public closeResized()V
    .locals 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x407

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1472
    return-void
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2016
    if-nez v0, :cond_0

    .line 2017
    const-string v0, "Invalid property ID"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :goto_0
    return-void

    .line 2019
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 2020
    const-string v0, "Invalid player state"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2024
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2026
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2027
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 1292
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2926
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMWebView: Destroy called."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 2928
    new-instance v0, Lcom/inmobi/re/container/IMWebView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$5;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V

    .line 2946
    return-void
.end method

.method public disableCloseRegion()V
    .locals 2

    .prologue
    .line 2766
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/CustomView;

    .line 2768
    if-eqz v0, :cond_0

    .line 2769
    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->u:Z

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->disableView(Z)V

    .line 2771
    :cond_0
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 2

    .prologue
    .line 2961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->K:Z

    .line 2962
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "disableHardwareAcceleration called."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2966
    invoke-static {p0}, Lcom/inmobi/commons/internal/WrapperFunctions;->disableHardwareAccl(Landroid/webkit/WebView;)V

    .line 2967
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->disableEnableHardwareAccelerationForExpandWithURLView()V

    .line 2970
    :cond_0
    return-void
.end method

.method public doHidePlayers()V
    .locals 2

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 2787
    return-void
.end method

.method public expand(Ljava/lang/String;Lcom/inmobi/re/controller/JSController$ExpandProperties;)V
    .locals 4

    .prologue
    .line 1557
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 1558
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    .line 1560
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1562
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1564
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1566
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1570
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iput-object p2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    .line 1572
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimensions: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    .line 1580
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 1581
    return-void
.end method

.method public fireOnDismissAdScreen()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onDismissAdScreen()V

    .line 1360
    :cond_0
    return-void
.end method

.method public fireOnLeaveApplication()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 1345
    :cond_0
    return-void
.end method

.method public fireOnShowAdScreen()V
    .locals 2

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestOnAdDismiss(Landroid/os/Message;)V

    .line 1352
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onShowAdScreen()V

    .line 1354
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    return-object v0
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1891
    if-nez v0, :cond_0

    .line 1892
    const-string v0, "Invalid property ID"

    const-string v1, "getAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const/4 v0, -0x1

    .line 1897
    :goto_0
    return v0

    .line 1895
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentRotation(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1494
    const-string v0, "-1"

    .line 1495
    packed-switch p1, :pswitch_data_0

    .line 1512
    :goto_0
    return-object v0

    .line 1497
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 1501
    :pswitch_1
    const-string v0, "90"

    goto :goto_0

    .line 1505
    :pswitch_2
    const-string v0, "180"

    goto :goto_0

    .line 1509
    :pswitch_3
    const-string v0, "270"

    goto :goto_0

    .line 1495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCustomClose()Z
    .locals 1

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/inmobi/re/container/IMWebView;->h:F

    return v0
.end method

.method public getDisableCloseRegion()Z
    .locals 1

    .prologue
    .line 3290
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->u:Z

    return v0
.end method

.method public getDismissMessage()I
    .locals 1

    .prologue
    .line 1332
    const/16 v0, 0x404

    return v0
.end method

.method public getExpandedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntegerCurrentRotation()I
    .locals 3

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1702
    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    .line 1704
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/data/DeviceInfo;->isDefOrientationLandscape(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1707
    add-int/lit8 v0, v0, 0x1

    .line 1708
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1709
    const/4 v0, 0x0

    .line 1711
    :cond_0
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/data/DeviceInfo;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1712
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 1714
    :cond_1
    return v0
.end method

.method public getLastGoodKnownMicValue()D
    .locals 2

    .prologue
    .line 2917
    iget-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    return-wide v0
.end method

.method public getMRAIDUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginalIndex()I
    .locals 1

    .prologue
    .line 2808
    iget v0, p0, Lcom/inmobi/re/container/IMWebView;->E:I

    return v0
.end method

.method public getOriginalParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 2803
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 1487
    const-string v0, "interstitial"

    .line 1489
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getPlayableListener()Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/IMWebView;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/IMWebView;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2146
    if-nez v0, :cond_0

    .line 2147
    const-string v0, "Invalid property ID"

    const-string v1, "getVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const/4 v0, -0x1

    .line 2152
    :goto_0
    return v0

    .line 2150
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getViewState()Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getWebviewHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1125
    return-void
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2034
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2035
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2037
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 2039
    return-void
.end method

.method public incentCompleted(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3277
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3278
    const-string v2, "incent_ad_map"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3279
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3280
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3281
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2175
    if-eqz p1, :cond_1

    .line 2176
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:try{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    .line 2179
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting JavaScript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 2184
    invoke-direct {p0, v0}, Lcom/inmobi/re/container/IMWebView;->a(Ljava/lang/String;)V

    .line 2194
    :cond_1
    :goto_0
    return-void

    .line 2186
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/re/container/IMWebView;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2190
    :catch_0
    move-exception v0

    .line 2191
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Error injecting javascript "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1861
    if-nez v0, :cond_0

    .line 1862
    const-string v0, "Invalid property ID"

    const-string v1, "isAudioMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const/4 v0, 0x0

    .line 1868
    :goto_0
    return v0

    .line 1865
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    return v0
.end method

.method public isConfigChangesListed(Landroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2246
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2247
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/app/Activity;)I

    move-result v4

    .line 2252
    and-int/lit8 v3, v4, 0x10

    if-eqz v3, :cond_0

    and-int/lit8 v3, v4, 0x20

    if-eqz v3, :cond_0

    and-int/lit16 v3, v4, 0x80

    if-nez v3, :cond_4

    :cond_0
    move v3, v1

    .line 2257
    :goto_0
    const/16 v5, 0xd

    if-lt v2, v5, :cond_3

    .line 2258
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1

    and-int/lit16 v2, v4, 0x800

    if-nez v2, :cond_3

    :cond_1
    move v2, v1

    .line 2264
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_0
.end method

.method public isEnabledHardwareAcceleration()Z
    .locals 1

    .prologue
    .line 2973
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->K:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLandscapeSyncOrientation(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2778
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 2890
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Z

    return v0
.end method

.method public isPortraitSyncOrientation(I)Z
    .locals 1

    .prologue
    .line 2774
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2113
    if-nez v0, :cond_0

    .line 2114
    const-string v0, "Invalid property ID"

    const-string v1, "isVideoMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const/4 v0, 0x0

    .line 2120
    :goto_0
    return v0

    .line 2117
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    .line 1096
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    .line 1103
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->c()V

    .line 1107
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Z

    .line 1085
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 1091
    :goto_0
    return-void

    .line 1087
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->c()V

    .line 1089
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lockExpandOrientation(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/16 v2, 0x9

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1620
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView;->isConfigChangesListed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1689
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 1627
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 1632
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 1633
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1641
    :cond_2
    if-nez p2, :cond_6

    .line 1646
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 1648
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->initialExpandOrientation:I

    .line 1650
    const-string v1, "portrait"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1651
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 1653
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception handling the orientation "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1655
    :cond_3
    :try_start_1
    const-string v1, "landscape"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1656
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 1658
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1663
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 1664
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1665
    if-ne v0, v3, :cond_5

    .line 1666
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1670
    :cond_5
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1677
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1678
    if-ne v0, v3, :cond_7

    .line 1679
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "In allow true,  device orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1682
    :cond_7
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "In allow true,  device orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 1

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 2903
    return-void
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1821
    if-nez v0, :cond_0

    .line 1822
    const-string v0, "Invalid property ID"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :goto_0
    return-void

    .line 1824
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    .line 1825
    const-string v0, "Invalid player state"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1830
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1831
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2054
    if-nez v0, :cond_0

    .line 2055
    const-string v0, "Invalid property ID"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :goto_0
    return-void

    .line 2057
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 2059
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2063
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3f7

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2064
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2065
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1238
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMWebView-> onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    .line 1241
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Z

    if-nez v0, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1243
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/inmobi/re/container/IMWebView;->i:I

    .line 1244
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/inmobi/re/container/IMWebView;->j:I

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Z

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->registerBroadcastListener()V

    .line 1250
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 1251
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1316
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMWebView-> onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->stopAllListeners()V

    .line 1319
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1324
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->unRegisterBroadcastListener()V

    .line 1325
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleInterstitialClose()V

    .line 1327
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 1328
    return-void
.end method

.method protected onIMWebviewVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    if-ne v0, p1, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    .line 1184
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Z)V

    goto :goto_0
.end method

.method public onOrientationEventChange()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1439
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 1136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 1137
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1138
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Z

    if-nez v0, :cond_0

    .line 1139
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->a(II)V

    .line 1141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Z

    .line 1143
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2909
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    .line 2910
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 1155
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 1156
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->onIMWebviewVisibilityChanged(Z)V

    .line 1158
    if-eqz p1, :cond_0

    .line 1160
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "vibrate"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1163
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :cond_0
    :goto_1
    return-void

    .line 1156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1165
    :catch_0
    move-exception v0

    .line 1167
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Failed to cancel existing vibration"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1426
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1428
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    const-string v0, "Request must specify a valid URL"

    const-string v1, "openExternal"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    const-string v0, "Cannot open URL.Ad is not viewable yet"

    const-string v1, "openURL"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :goto_0
    return-void

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1416
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1417
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1419
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public pageFinishedCallbackForAdCreativeTesting(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->x:Landroid/os/Message;

    .line 1370
    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1795
    if-nez v0, :cond_1

    .line 1796
    const-string v0, "Invalid property ID"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_3

    .line 1799
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1800
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_0

    .line 1802
    :cond_2
    const-string v0, "Invalid player state"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1806
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1810
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1811
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2007
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2008
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2010
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 2011
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1745
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1752
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_1

    .line 1753
    const-string v0, "Cannot play audio.Ad is not in an expanded state"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    :goto_1
    return-void

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    :try_start_3
    const-string v2, "[InMobi]-[RE]-4.5.5"

    const-string v3, "mutex failed "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1755
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1756
    const-string v0, "Cannot play audio.Ad is not viewable yet"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1760
    :cond_2
    new-instance v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>()V

    .line 1762
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1767
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1770
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1771
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1772
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/inmobi/re/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1950
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1951
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1953
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1958
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1962
    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_1

    .line 1963
    const-string v1, "Cannot play video.Ad is not in an expanded state"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :goto_1
    return-void

    .line 1954
    :catch_0
    move-exception v1

    .line 1955
    :try_start_3
    const-string v3, "[InMobi]-[RE]-4.5.5"

    const-string v4, "mutex failed "

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1958
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1965
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1966
    const-string v1, "Cannot play video.Ad is not viewable yet"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1971
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1974
    const-string v1, "Player Error. Exceeding permissible limit for saved play instances"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1978
    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1980
    new-instance v1, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v1}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>()V

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 1982
    invoke-virtual/range {v1 .. v8}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1986
    const-string v3, "expand_url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v3, "player_properties"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1990
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before validation dimension: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->validateVideoDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    .line 1994
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After validation dimension: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string v1, "expand_dimensions"

    move-object/from16 v0, p6

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1999
    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2000
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v9}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public postInHandler(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView$c;->post(Ljava/lang/Runnable;)Z

    .line 2922
    return-void
.end method

.method public postInjectJavaScript(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2158
    if-eqz p1, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2160
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2161
    const-string v2, "injectMessage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2165
    :cond_0
    return-void
.end method

.method public raiseCameraPictureCapturedEvent(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 2832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.fireCameraPictureCatpturedEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2835
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2837
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$2;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/IMWebView$2;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2846
    :cond_0
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2289
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2290
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2293
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 2294
    return-void
.end method

.method public raiseGalleryImageSelectedEvent(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.fireGalleryImageSelectedEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2870
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2872
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$4;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/IMWebView$4;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2881
    :cond_0
    return-void
.end method

.method public raiseMicEvent(D)V
    .locals 3

    .prologue
    .line 2812
    iput-wide p1, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'micIntensityChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2815
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2817
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$15;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/IMWebView$15;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2827
    :cond_0
    return-void
.end method

.method public raiseVibrateCompleteEvent()V
    .locals 2

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2849
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/re/container/IMWebView$3;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/IMWebView$3;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2864
    :cond_0
    return-void
.end method

.method public requestOnInterstitialClosed(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    .line 1384
    return-void
.end method

.method public requestOnInterstitialShown(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    .line 1377
    return-void
.end method

.method public resetLayout()V
    .locals 2

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1202
    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Z

    if-eqz v1, :cond_0

    .line 1203
    iget v1, p0, Lcom/inmobi/re/container/IMWebView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1204
    iget v1, p0, Lcom/inmobi/re/container/IMWebView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1206
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 1207
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 1208
    return-void
.end method

.method public resetMraid()V
    .locals 1

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->reset()V

    .line 2885
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->reset()V

    .line 2886
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->reset()V

    .line 2887
    return-void
.end method

.method public resize(Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    .locals 2

    .prologue
    .line 1590
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 1592
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1594
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    iput-object p1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    .line 1598
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 1599
    return-void
.end method

.method public saveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2985
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getSdkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2988
    const-class v0, Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot create temp directory to save "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2991
    :try_start_0
    const-string v0, "url"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2992
    const-string v0, "reason"

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->j:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2996
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2998
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/inmobi/re/container/IMWebView$6;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3014
    :goto_1
    return-void

    .line 2993
    :catch_0
    move-exception v0

    .line 2994
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3012
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3013
    new-instance v0, Lcom/inmobi/re/container/IMWebView$a;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/inmobi/re/container/IMWebView$a;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public saveOriginalViewParent()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    .line 440
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 444
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 445
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 448
    :cond_2
    iput v1, p0, Lcom/inmobi/re/container/IMWebView;->E:I

    goto :goto_0

    .line 444
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1903
    if-nez v0, :cond_0

    .line 1904
    const-string v0, "Invalid property ID"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :goto_0
    return-void

    .line 1906
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 1907
    const-string v0, "Invalid player state"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1911
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3fe

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1912
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1913
    const-string v3, "seekaudio"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1914
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1915
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1916
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2092
    if-nez v0, :cond_0

    .line 2093
    const-string v0, "Invalid property ID"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :goto_0
    return-void

    .line 2095
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 2097
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2103
    const-string v3, "seek"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2104
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2105
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2106
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendToCPHandler()V
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1693
    return-void
.end method

.method public sendToDPHandler()V
    .locals 2

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x408

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1697
    return-void
.end method

.method public sendasyncPing(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->g:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/controller/JSUtilityController;->asyncPing(Ljava/lang/String;)V

    .line 2795
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    .line 2298
    return-void
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1874
    if-nez v0, :cond_0

    .line 1875
    const-string v0, "Invalid property ID"

    const-string v1, "setAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :goto_0
    return-void

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1879
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1880
    const-string v2, "vol"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1881
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1883
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBrowserActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 355
    check-cast p1, Lcom/inmobi/androidsdk/IMBrowserActivity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/app/Activity;

    .line 357
    :cond_0
    return-void
.end method

.method public setBusy(Z)V
    .locals 0

    .prologue
    .line 1194
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    .line 1195
    return-void
.end method

.method public setCallBack(Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;)V
    .locals 0

    .prologue
    .line 3261
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    .line 3262
    return-void
.end method

.method public setCloseButton()V
    .locals 2

    .prologue
    .line 2755
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/CustomView;

    .line 2757
    if-eqz v0, :cond_0

    .line 2758
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getCustomClose()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2763
    :cond_0
    :goto_1
    return-void

    .line 2758
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2760
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setCustomClose(Z)V
    .locals 2

    .prologue
    .line 1442
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Z

    .line 1443
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1444
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 1445
    return-void
.end method

.method public setDisableCloseRegion(Z)V
    .locals 2

    .prologue
    .line 3284
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->u:Z

    .line 3285
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3286
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 3287
    return-void
.end method

.method public setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1518
    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView;->setCustomClose(Z)V

    .line 1519
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p3, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    .line 1520
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-boolean p2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    .line 1521
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationFor2Piece()V

    .line 1526
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1529
    :cond_1
    return-void
.end method

.method public setExternalWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 2782
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->z:Landroid/webkit/WebViewClient;

    .line 2783
    return-void
.end method

.method public setOrientationPropertiesForInterstitial(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    .line 1534
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-boolean p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    .line 1535
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationFor2Piece()V

    .line 1540
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1543
    :cond_1
    return-void
.end method

.method public setOriginalParent(Landroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 2798
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/view/ViewParent;

    .line 2799
    return-void
.end method

.method public setPlayableListener(Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->l:Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;

    .line 431
    return-void
.end method

.method public setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    .locals 3

    .prologue
    .line 1258
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changing from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->k:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 1264
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'stateChange\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1281
    :cond_0
    return-void
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2126
    if-nez v0, :cond_0

    .line 2127
    const-string v0, "Invalid property ID"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    :goto_0
    return-void

    .line 2129
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 2130
    const-string v0, "Invalid player state"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2134
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2135
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2136
    const-string v3, "volume"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2137
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2138
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2139
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendEmptyMessage(I)Z

    .line 1132
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2044
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2045
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2047
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    .line 2049
    return-void
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1841
    if-nez v0, :cond_0

    .line 1842
    const-string v0, "Invalid property ID"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :goto_0
    return-void

    .line 1844
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    .line 1845
    const-string v0, "Invalid player state"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1850
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1851
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1853
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 2073
    if-nez v0, :cond_0

    .line 2074
    const-string v0, "Invalid property ID"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :goto_0
    return-void

    .line 2076
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 2078
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v2, 0x3f8

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2083
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2084
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userInteraction(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Lcom/inmobi/re/container/IMWebView$c;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2978
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2979
    const-string v2, "map"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2980
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2981
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2982
    return-void
.end method
