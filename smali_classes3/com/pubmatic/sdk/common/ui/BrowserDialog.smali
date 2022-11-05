.class public Lcom/pubmatic/sdk/common/ui/BrowserDialog;
.super Landroid/app/Dialog;
.source "BrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;,
        Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;,
        Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;
    }
.end annotation


# static fields
.field private static final ActionBarHeightDp:I = 0x28


# instance fields
.field private backButton:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private forwardButton:Landroid/widget/ImageView;

.field private final handler:Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;

.field private isWebViewLaunched:Z

.field private mButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private sslWebView:Landroid/webkit/WebView;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private webViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 79
    const v0, 0x1030009

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->url:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    .line 218
    new-instance v0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$7;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$7;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 81
    iput-object p2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->url:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->context:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->handler:Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;

    .line 85
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 90
    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x28

    .line 93
    invoke-virtual {p0, v3}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dpToPx(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const v3, -0xe5e5e6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 100
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 102
    iget-object v3, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 107
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 110
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const-class v6, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const-string v7, "/ic_action_cancel.png"

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 112
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 115
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    new-instance v5, Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;

    invoke-direct {v5, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    .line 126
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    const-class v7, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const-string v8, "/ic_action_back.png"

    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 126
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 129
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 131
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;

    invoke-direct {v6, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    .line 150
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    const-class v7, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const-string v8, "/ic_action_forward.png"

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 150
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 153
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 155
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v4, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/pubmatic/sdk/common/ui/BrowserDialog$3;

    invoke-direct {v5, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$3;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v4, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const-class v6, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const-string v7, "/ic_action_refresh.png"

    .line 167
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 166
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 169
    iget-object v5, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    new-instance v5, Lcom/pubmatic/sdk/common/ui/BrowserDialog$4;

    invoke-direct {v5, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$4;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 180
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const-class v5, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const-string v6, "/ic_action_web_site.png"

    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 180
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x106000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 183
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    new-instance v0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 196
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    .line 197
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 198
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 201
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 202
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 214
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->createSSLWebView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->backButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->forwardButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismissSSLWebView()V

    return-void
.end method

.method static synthetic access$300(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->isWebViewLaunched:Z

    return v0
.end method

.method static synthetic access$302(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->isWebViewLaunched:Z

    return p1
.end method

.method static synthetic access$400(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->handler:Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private createSSLWebView()V
    .locals 3

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismissSSLWebView()V

    .line 267
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    .line 268
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 269
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    .line 271
    return-void
.end method

.method private dismissSSLWebView()V
    .locals 2

    .prologue
    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    :try_start_2
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dpToPx(I)I
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 246
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 247
    return v0
.end method

.method protected loadSslErrorPage(Landroid/webkit/SslErrorHandler;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    const-class v0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const-string v1, "/html/ssl_error.html"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v0, 0x4000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    const/16 v2, 0x1000

    new-array v2, v2, [C

    .line 311
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 312
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 316
    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 317
    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;

    invoke-direct {v2, p0, p1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Landroid/webkit/SslErrorHandler;)V

    const-string v3, "JsHandler"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->sslWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/html; charset=UTF-8"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_1
    return-void

    .line 314
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    const-string v1, "BrowserDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading ssl_error.html "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->url:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 254
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 255
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 262
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public pxToDp(F)I
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 239
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 240
    return v0
.end method
