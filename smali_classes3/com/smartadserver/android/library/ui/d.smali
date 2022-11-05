.class public Lcom/smartadserver/android/library/ui/d;
.super Landroid/widget/RelativeLayout;
.source "SASWebView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/d;->c:Z

    .line 41
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/d;->d:Z

    .line 61
    new-instance v0, Lcom/smartadserver/android/library/ui/d$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/d$1;-><init>(Lcom/smartadserver/android/library/ui/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    .line 108
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 112
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 118
    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 122
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 126
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 132
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 149
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/d;->e()V

    .line 155
    invoke-super {p0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/d;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/d;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/d;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/d;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    .line 163
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 171
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 177
    sget-object v2, Lcom/smartadserver/android/library/f/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    new-instance v2, Lcom/smartadserver/android/library/ui/d$2;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/d$2;-><init>(Lcom/smartadserver/android/library/ui/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 185
    sget-object v3, Lcom/smartadserver/android/library/f/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    new-instance v3, Lcom/smartadserver/android/library/ui/d$3;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/d$3;-><init>(Lcom/smartadserver/android/library/ui/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 193
    sget-object v4, Lcom/smartadserver/android/library/f/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    new-instance v4, Lcom/smartadserver/android/library/ui/d$4;

    invoke-direct {v4, p0}, Lcom/smartadserver/android/library/ui/d$4;-><init>(Lcom/smartadserver/android/library/ui/d;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/smartadserver/android/library/ui/d;->e:Landroid/widget/ImageButton;

    .line 202
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/d;->e:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 203
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/d;->e:Landroid/widget/ImageButton;

    sget-object v5, Lcom/smartadserver/android/library/f/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 213
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 214
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 216
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    return-void

    .line 166
    :array_0
    .array-data 4
        -0x9e9d9f
        -0xececed
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 269
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/d;->d:Z

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/d;->d:Z

    .line 265
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/smartadserver/android/library/ui/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy called on webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/d;->c:Z

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/d;->c:Z

    .line 293
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 294
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 298
    new-instance v0, Lcom/smartadserver/android/library/ui/d$5;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/d$5;-><init>(Lcom/smartadserver/android/library/ui/d;)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/d;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/d;->d:Z

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 241
    return-void
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method public setInAppBrowserMode(Z)V
    .locals 2

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 278
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 274
    return-void
.end method
