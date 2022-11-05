.class public final Lcom/loopme/adbrowser/AdBrowserLayout;
.super Landroid/widget/RelativeLayout;
.source "AdBrowserLayout.java"


# static fields
.field private static final HEADER_HEIGHT_DP:I = 0x1e


# instance fields
.field private final mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

.field private final mBackBtn:Landroid/widget/Button;

.field private mBase64Drawables:Lcom/loopme/common/Base64Drawables;

.field private final mCloseBtn:Landroid/widget/Button;

.field private final mFooterView:Landroid/widget/RelativeLayout;

.field private final mNativeBtn:Landroid/widget/Button;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mRefreshBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/loopme/common/Base64Drawables;

    invoke-direct {v0}, Lcom/loopme/common/Base64Drawables;-><init>()V

    iput-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    .line 36
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v1, Lcom/loopme/adbrowser/BrowserWebView;

    invoke-direct {v1, p1}, Lcom/loopme/adbrowser/BrowserWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    .line 42
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {v1, v0}, Lcom/loopme/adbrowser/BrowserWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {p0, v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mFooterView:Landroid/widget/RelativeLayout;

    .line 46
    invoke-direct {p0}, Lcom/loopme/adbrowser/AdBrowserLayout;->configFooterView()V

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->configButtonsContainer(Landroid/widget/LinearLayout;)V

    .line 51
    invoke-static {}, Lcom/loopme/common/Utils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x5

    .line 52
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/loopme/common/Utils;->convertDpToPixel(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 56
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 60
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loopme/adbrowser/AdBrowserLayout;->configProgressButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 62
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBackBtn:Landroid/widget/Button;

    .line 63
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loopme/adbrowser/AdBrowserLayout;->configBackButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mRefreshBtn:Landroid/widget/Button;

    .line 66
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loopme/adbrowser/AdBrowserLayout;->configRefreshButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 68
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mNativeBtn:Landroid/widget/Button;

    .line 69
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loopme/adbrowser/AdBrowserLayout;->configNativeButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 71
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mCloseBtn:Landroid/widget/Button;

    .line 72
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loopme/adbrowser/AdBrowserLayout;->configCloseButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/loopme/adbrowser/AdBrowserLayout;->initBottomWhiteLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method private configBackButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBackBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getBackInactive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBackBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getBackInactive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configButtonsContainer(Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 93
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method private configCloseButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mCloseBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getClose()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mCloseBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getClose()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configFooterView()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x41f00000    # 30.0f

    .line 99
    invoke-static {v2}, Lcom/loopme/common/Utils;->convertDpToPixel(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method private configNativeButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mNativeBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getNativeBrowser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mNativeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mNativeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mNativeBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getNativeBrowser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configProgressButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private configRefreshButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mRefreshBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getRefresh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mRefreshBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mRefreshBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mRefreshBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getRefresh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initBottomWhiteLineView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 106
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mBackBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getCloseButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mCloseBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getNativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mNativeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRefreshButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mRefreshBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getWebView()Lcom/loopme/adbrowser/BrowserWebView;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserLayout;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    return-object v0
.end method
